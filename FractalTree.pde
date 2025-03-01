private double fractionLength = .8; 
private int smallestBranch = 5; 
private double branchAngle = .6;  
public void setup() 
{   
  size(840,680);    
  noLoop(); 
  background(0); 
  text("Darth Maul Fractal Tree",600,600);
} 
public void draw() 
{   
    
  stroke(0,255,0);   
  line(320,480,320,380);   
  drawBranches(320 ,380 ,100 ,3*Math.PI/2); 
} 



public void drawBranches(int x,int y, double branchLength, double angle) 
{   
  //your code here    
  double angle1 = angle+branchAngle;
  double angle2 = angle-branchAngle;
  double lengthy = branchLength*fractionLength;
  int endX1 = (int)(branchLength*Math.cos(angle1) + x);
  int endY1 = (int)(branchLength*Math.sin(angle1) + y);
  line(x,y,endX1,endY1);
  line(y,x,endY1,endX1);
  if(branchLength>smallestBranch){
  drawBranches(endX1,endY1,lengthy,angle1);
  drawBranches(endX1,endY1,lengthy,angle2);
  }
} 
