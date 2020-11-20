PImage img1;
PImage img2;
Table data;
int[] deaths;

void setup() {
  size(1024, 768);
  background(255);
  data = loadTable("https://raw.githubusercontent.com/owid/covid-19-data/master/public/data/owid-covid-data.csv", "header");

  deaths = new int[500];

  println(data.getRowCount()+" total rows in table");
  int i = 0;
  for (TableRow row : data.rows()) {
    if (row.getString("location").equals("Australia")) {
      String death = row.getString("total_deaths");
<<<<<<< HEAD
      if (death.equals("")) {
        deaths[i] = 0;
      }
      else
      {
        String[] ss = split(death,'.');
         //deaths[i] = Integer.parseInt(ss[0]); //udkommenteret da det ikke virker med programmet lige nu
      }
      i++;
      
      println(deaths);
      
    }
  }


  //loop igennem deaths listen og tegner grafen!!

=======
        if (death.equals("")) {
          deaths[i] = 0;
         }
     else{
       String[] ss = split(death, '.');
         deaths[i] = Integer.parseInt(ss[0]);
       }
     i++;
     println(deaths);
    }
  }
>>>>>>> 7d6364eaf043d3f07f63ae71c851f146f4ad88e6
  img1 = loadImage("DoHCrest.png");
  img2 = loadImage("haha.png");
}

void draw() {
  image(img1, 10, 10, width/3.5, height/8);
  image(img2, 330, 10, width/5, height/8);
}
