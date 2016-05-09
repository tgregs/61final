//Project 5 CST 112
String author = "Trevor Gregory";
String title=  "Project 5";
String course= "CST 112";
String who[]= {"Leo","Bob","Chuck","Phil","Mike","George","Elliot","Jake"};
int amount = 8;
Person[] persons = new Person[amount];
Cloud[] clouds = new Cloud[amount];

void setup() {

  size(800, 600);
  for(int i = 0; i < amount; i++){
  persons[i] = new Person(who[i]);
}
  for(int i = 0; i < amount; i++){
   clouds[i] = new Cloud();
}
}

void reset(){
   for(int i = 0; i < amount; i++){
  persons[i] = new Person(who[i]);

}
}
void draw() {
  scene();
  lineup();
  skycloud();
  messages();
  directions();
}

void directions(){
  String s = "KEYS:  r to reset, q to quit";
  text( s, 15,60);
}

void lineup(){
 int x = 50;   
  for(int i = 0; i < 8; i++){
    persons[i].showPerson(x);
     x = x+80;
}
}

void skycloud(){
  int x = width/3;
     for(int i = 0; i < 8; i++){
   clouds[i].showCloud(x);
   x= x+ 40;
}
}
 
void messages(){
  fill(0);
  textSize(16);
  text(title, width/2, 20);
  text(author, 15,20);
  text(course, 15,40);
}

void scene() {
  background(135, 206, 235);
  fill(160,160,160);
  rect(0, height/1.5, width, height);
}  


void keyPressed() {
  if (key == 'q') exit();
  if (key == 'r') reset();
 // if (key == 't') tall( persons, amount );
  //
 // if (key == 'w') swap( people, many-1, whereWide(people,many) );
  //if (key == 'n') swap( people, many-1, whereNarrow(people,many) );

}


class Person {
  float r, g, b;
  float xP, yP;
  float pW, pH;
  float headW,headH;
  String name = "?";
  Person(String who) {
    r= random(255);
    g = random(255);
    b = random(255);
    xP= 40;
    yP= height/1.5;
    pW= random(30,60);
    pH= random(30,120);
    headW = random(20,40);
    headH = random(20,40);
    name = who;
  }
  void showPerson(int x) {
    fill(r, g, b);
    rectMode(CORNER);
    rect( x, yP, pW, -pH);
    text(name,x+10,yP+20);
    int ft, in;
    ft= int(pH/12);
    in= int(pH %12);
    text( ft+"' " + in+" '' ",x, yP+45);
    float lbs = (pH * pW * pW) / 500;
    text (int(lbs())+" # ", x, yP+65);
   // ellipse(x+10,pH,headW,headH);
  }
  float lbs(){
    return (pH * pW * pW) / 500;
}
}
class Cloud {
  float cX, cY;
  float cW, cH;
  
  Cloud(){
    cW = 70;
    cH = random(20,30);
    cX = width/4;
    cY = 150;
  }
  
void showCloud(int x){
  fill(255,255,255);
  ellipse(x,cY,cW,cH);
 

}
} 
