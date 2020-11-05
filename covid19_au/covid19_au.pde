PImage img1;
PImage img2;
Table cases;

void setup(){
  size(1024,768);
  background(255);
  cases = loadTable("covid-19-cases-by-notification-date-and-age-range.csv");
  img1 = loadImage("DoHCrest.png");
  img2 = loadImage("haha.png");
}

void draw(){
  image(img1, 10, 10, width/3.5, height/8);
  image(img2,330,10,width/5,height/8);
}
