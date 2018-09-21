int x;
int y;

void setup()
{
  
  background(0);
  size(1900,1000);
  strokeWeight(4);
}
void draw() {

  if(mousePressed){
      fill((int)(Math.random()*71));
      rect(0, 0, 1900, 1000);
    
    fill(242, 255, 90); 
    ellipse(mouseX + (int)(Math.random()*9) - 8, mouseY + (int)(Math.random()*9) - 8, 45 + (int)(Math.random()*7) - 6, 45 + (int)(Math.random()*7) - 6);
    
    if(Math.random() < 0.5)  
    stroke(240, 255, 80); 
  else 
    stroke(238, 255, 134);
    
    x = mouseX;
    y = mouseY;
    lightningSurge();
    
  }

}
void lightningSurge(){
  
  while(y < 1000) {
  int Xf = x + (int)(Math.random()*101 - 50);
  int Yf = y + 30;

  line(x, y, Xf, Yf);
  x = Xf;
  y = Yf;
 }

}
