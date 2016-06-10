float loc_x;
float loc_y;
float radious;

float red1;
float green1;
float blue1;

float red2;
float green2;
float blue2;

float red3;
float green3;
float blue3;

float red4;
float green4;
float blue4;

float red5;
float green5;
float blue5;

void setup(){
  size(500,500);
  noStroke(); 
  background(255, 255, 255);
  
  loc_x = width/2;
  loc_y = height/2;
    
  red1 = 255;
  green1 = 80;
  blue1 = 0;
    
  red2 = 255;
  blue2 = 180;
  green2 = 255;
    
  red3 = 255;
  green3 = 255;
  blue3 = 0;
    
  red4 = 150;
  green4 = 255;
  blue4 = 0;
    
  red5 = 255;
  green5 = 0;
  blue5 = 0;

    
}

void draw(){
  radious = 50;
  fill(red1, green1, blue1, 90);
  ellipse(mouseX, mouseY, 50,50);
    
  radious -= 10;
  fill(red2, green2, blue2, 90);
  ellipse(mouseX, mouseY, 40,40);
    
  radious -= 10;
  fill(red3, green3, blue3, 90);
  ellipse(mouseX, mouseY, 30,30);

  radious -= 10;
  fill(red4, green4, blue4, 50);
  ellipse(mouseX, mouseY, 20,20);

  radious -= 10;
  fill(red5, green5, blue5, 50);
  ellipse(mouseX, mouseY, 10,10);

}

void mouseMoved(){  
  red1 = 0;
  green1 = 255;
  blue1 = 255;
  
  red2 = 255;
  green2 = 255;
  blue2 =255;
  
  red3 = 255;
  green3 = 30;
  blue3 = 255;
  
  red4 = 221;
  green4 = 222;
  blue4 = 211;
    
  red5 = 255;
  green5 = 255;
  blue5 = 0;  
}

void mousePressed(){
  red1 = 255;
  green1 = 255;
  blue1 = 255;
    
  red2 = 255;
  blue2 = 0;
  green2 = 0;
    
  red3 = 255;
  green3 = 0;
  blue3 = 55;
    
  red4 = 255;
  green4 = 255;
  blue4 = 0;
    
  red5 = 255;
  green5 = 255;
  blue5 = 0;
    
}

void mouseReleased(){  
  red1 = 255;
  green1 = 241;
  blue1 = 19;

  red2 = 0;
  green2 = 255;
  blue2 = 20;
    
  red3 = 127;
  green3 = 76;
  blue3 = 114;
    
  red4 = 150;
  green4 = 255;
  blue4 = 0;
    
  red5 = 255;
  green5 = 0;
  blue5 = 0;

}