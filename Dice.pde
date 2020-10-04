int roll;
int sum;
void setup()
  {
      noLoop();
      size(750,790);
      background(247,221,148);

}
  void draw()
  {
      //your code here
      for(int y = 50; y < 685; y+=55){
        for(int x = 50; x <685; x+=55){
          Die cube = new Die(x,y);
          cube.show();
          cube.roll();
        }
      }
      strokeWeight(1);
      fill(240,221,175);
      rect(315, 730, 130, 45);
      fill(0);
      textSize(20);
      text("Sum: " + sum, 335, 760);
  }
  void mousePressed()
  {
      redraw();
      sum = 0;
  }
  class Die //models one single dice cube
  {
      //member variable declarations here
      int myX, myY, mySize; 
      
      Die(int x, int y) //constructor
      {
          //variable initializations here
          myX = x;
          myY = y;
      }
      void roll()
      {
        roll = (int)(Math.random()*6) + 1;    
        sum = sum + roll;
      }
      void show()
      {
          //your code here
          fill(255);
          strokeWeight(1.5);
          rect(myX, myY, 50, 50, 7);
         if(roll == 1){ 
          fill(0);
          ellipse(myX + 25, myY +25, 5, 5);
         }else if (roll == 2){
          fill(0);
          ellipse(myX + 10, myY + 10, 5, 5);
          ellipse(myX + 40, myY + 40, 5, 5); 
         }else if(roll == 3) {
          fill(0);
          ellipse(myX + 25, myY +25, 5, 5);
          ellipse(myX + 10, myY + 10, 5, 5);
          ellipse(myX + 40, myY + 40, 5, 5); 
         }else if(roll == 4){
          fill(0);
          ellipse(myX + 10, myY + 10, 5, 5);
          ellipse(myX + 40, myY + 40, 5, 5); 
          ellipse(myX + 40, myY + 10, 5, 5);
          ellipse(myX + 10, myY + 40, 5, 5); 
      }else if(roll == 5){
         fill(0);
         ellipse(myX + 10, myY + 10, 5, 5);
         ellipse(myX + 40, myY + 40, 5, 5); 
         ellipse(myX + 40, myY + 10, 5, 5);
         ellipse(myX + 10, myY + 40, 5, 5);    
         ellipse(myX + 25, myY +25, 5, 5);
      }else if(roll == 6){
        fill(0);
        ellipse(myX + 10, myY + 10, 5, 5);
        ellipse(myX + 40, myY + 40, 5, 5); 
        ellipse(myX + 40, myY + 10, 5, 5);
        ellipse(myX + 10, myY + 40, 5, 5); 
        ellipse(myX + 40, myY + 25, 5, 5);
        ellipse(myX + 10, myY + 25, 5, 5); 
      }
      }
  }
