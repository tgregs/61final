//Final Project CST 112
// Trevor Gregory
String author = "Trevor Gregory";
String title=  "Final Project";
String course= "CST 112";
String who[]= {"Leo","Bob","Chuck","Phil","Mike","George","Elliot","Jake"}; //name list
String who2[] = {"Rob", "Carl", "Ralph","Jack","Sutton","Burton","Bruce"};
String buttonNames[]={"Raise","Bonus","Change"};
int amount = 8;
int amount2 = 3;
int amount3 = 11;
// Arrays for the different Objects
Person[] persons = new Person[amount]; 
Person[] tre = new Person[amount3];
Cloud[] clouds = new Cloud[amount];
Button[] buttons = new Button[amount2];
void setup() {

  size(750, 550);
  for(int i = 0; i < amount; i++){ 
  persons[i] = new Person(who[i]);
}
 
  for(int i = 0; i < amount; i++){
   clouds[i] = new Cloud();
}
    for(int i = 0; i < amount2; i++){
   buttons[i] = new Button(buttonNames[i]);
}

//  for(int i = 0; i < amount; i++){ 
//  tre[i] = new Person();
//}
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
  buttonarray();
  messages();
  directions();
}

void directions(){
  String s = "KEYS:  r to reset, q to quit";
  text( s, 15,60);
}

void lineup(){  // Displays are the Person objects in an Array
 int x = 50;   
  for(int i = 0; i < amount; i++){
    persons[i].showPerson(x);
     x = x+80;
}

}

void skycloud(){  // Displays all the cloud objects in an Array
  int x = width/3;
     for(int i = 0; i < amount; i++){
   clouds[i].showCloud(x);
   x= x+ 40;
}
}

void buttonarray(){ // Displays all buttons objects in an Array
  int x = 30;
     for(int i = 0; i < amount2; i++){
   buttons[i].showButton(x);
   x= x+ 80;
}
}   
void messages(){
  fill(0);
  textSize(14);
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
  if (key == 'b'){
   // Person.salary = Person.salary + 1000;
  }
    
    
}
// Checks the conditions for button location 
boolean hit(float mx, float my, float bx,float by, float w, float h){
  //Return true if (mx,my) is within rect. 
   if (mx>bx&&mx<bx+w && my>by && my<by+h) return true;
   else return false;
}
void mousePressed(){
//  if( hit(mouseX,mouseY,25,400,50,30)) raise();

}
//Class Def for Person 

class Person {
  float r, g, b;
  float xP, yP;
  float pW, pH;
  float headW,headH;
  String name = "?";
  int age = (int) random(1,99);
  int salary = (int) random(1000,100000);
  //Constructors
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
  } //Methods
  void showPerson(int x) {
    fill(r, g, b);
    rectMode(CORNER);
    rect( x, yP, pW, -pH);
    text(name,x+10,yP+20);
    text ("Age "+age,x,yP+90);
    if (age >= 18){
     text ("$ "+salary,x,yP+115);
    }
    int ft, in;
    ft= int(pH/12);
    in= int(pH %12);
    text( ft+"' " + in+" '' ",x, yP+45);
    float lbs = (pH * pW * pW) / 500;
    text (int(lbs())+" # ", x, yP+65);
   
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

class Button{
  float  yB;
  String name = "?";
Button(String buttonNames){
  
  yB = 510;
  name = buttonNames;
}
void showButton(int x){
  fill(255,102,102);
  rect(x,yB,60,30);
  fill(0);
  text(name,x+5,yB+20);
}
}
