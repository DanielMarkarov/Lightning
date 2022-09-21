    float startx = 40  ;
  float starty = 140;
  float endx;
  float endy;
  
  float startx2 = 0;
  float starty2 = 0;
  float endx2;
  float endy2;
  
  int rot = 0;
  int num1 = 250;
  int num2 = 250;
  int num3 = 250;
public void setup()
{
  size(300,300);
}

void draw()
{
  //Transformations to fix things that I should've thought of before writing the program
  //Writing a design document is a good idea, who would've thought
  translate(30, 70);
  scale(0.8);
 
  //sky
  fill(#E6F8FA);
  rect(-1000  , -1000, 10000  , 10000);
  
  //cloud in the sky are highly irregular shapes. this may be difficult

  fill(num1, num2, num3);
  noStroke();
  ellipse(265  , -20, 80, 50);
  ellipse(245  , -40, 40, 40);
  ellipse(235  , 0, 35, 35);
  ellipse(280  , -40, 45, 45);
  ellipse(290  , 0, 30, 30);
  ellipse(260  , 5, 35, 35);
  ellipse(300  , -25, 40, 40);
  ellipse(230  , -20, 35, 35);
  stroke(0);
  
    //cloud #2
  fill(num1, num2, num3);
  noStroke();
  ellipse(265-200  ,-20+40,80, 50);
  ellipse(245-200  , -40+40, 40, 40);
  ellipse(235-200  , 0+40, 35, 35);
  ellipse(280-200  , -40+40,45, 45);
  ellipse(290-200  , 0+40, 30, 30);
  ellipse(260-200  , 5+40, 35, 35);
  ellipse(300-200  ,-25+40, 40, 40);
  ellipse(230-200  ,-20+40, 35, 35);
  stroke(0);
  //ice???
  fill(#E8FDFF);
  rect(-1000  , 200, 10000  , 151);
  
  //head
  fill(#050505);
  ellipse(151  , 145, 180, 220);
  
  //body
  fill(#FCFCFC);
  ellipse(151  , 190, 130, 130);
  
    //funny hat
  fill(#292828);
  rect(90  , 30, 120, 15, 5);
  rect(105  , 30, 90, -90);
  
  //red ribbon (army?)
  fill(#CB2525); 
  rect(105  , 20, 90, 10);
  
  //gold hat buckle thing like the posh man that he is
  fill(#FAD817);
  rect(140  , 15, 20, 20, 3);
  
  //left eye
  fill(#FCFCFC);
  ellipse(130  , 100, 50, 50);
  
  //pupils
  fill(#050505);
  ellipse(120  , 100, 30, 30);
  ellipse(180  , 100, 30, 30);
  noFill();
  
  //nose
  fill(#FAD817);
  triangle(151  , 100, 135  , 135, 165  , 135);
  
  //right eye
  fill(#FCFCFC);
  ellipse(170  , 100, 50, 50);

  //monacle "chain"?? it's just a line bc arcs and bezier curves are hard
  fill(#FAD817);
  bezier(190  , 90, 190  , 130, 210  , 90, 220  , 90);
  fill(#050505);
  bezier(190  , 85, 190  , 125, 210  , 85, 220  , 85);
  
  //monacle
  fill(#FAD817);
  ellipse(180  , 100, 35, 35);
  
  //right pupil
  fill(#050505);
  ellipse(180  , 100, 28, 28);

  //arms
  fill(#050505);
  if(rot != 1)
  {
    triangle(62  , 120, 60  , 150, 40  , 160);
    triangle(238  , 120, 236  , 151, 256  , 160);
  }
  else
  {
    triangle(62  , 110, 60  , 130, 40  , 100);
    triangle(238  , 110, 236  , 130, 256  , 100);
  }
  //feet
  fill(#FAD817);
  ellipse(120  , 260, 50, 20);
  ellipse(170  , 260, 50, 20);
}

void mouseDragged()
{
  //changes cloud color
  num1 = 52;
  num2 = 46;
  num3 = 46;
  
  stroke(#FFDD17);
 for(int i = 0; i<20; i++)
 {
   float randx = (float)Math.random()*5;
   float randy = (float)Math.random()*10-10;
    
   endx = startx + randx;
   endy = starty + randy;
   line(startx, starty, endx, endy);
   
   startx += randx;
   starty += randy;  
  
  }
  startx = 40  ;
  starty = 100;
  
   for(int j = 0; j<30; j++)
 {
   float randx2 = (float)Math.random()*5;
   float randy2 = (float)Math.random()*10-10;
    
   endx2 = startx2 + randx2;
   endy2 = starty2 + randy2;
   line(startx2, starty2, endx2, endy2);
   
   startx2 += randx2;
   starty2 += randy2;
  }
  startx2 = 250;
  starty2 = 100;
}

void mouseClicked()
{
  //changes arms to move up
  rot = 1;
  System.out.println("ALL HAIL D'ARTAGNAN, QUEEN OF THE HIVE MIND");
}
