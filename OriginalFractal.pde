public void setup(){
  size(500, 500);
  rectMode(CENTER);
  noStroke();
}
int x = 0;
int y = 255;
public void draw(){
  
  if(x>=255)
    x=0;
  else
    x++;
  if(y<=0)
    y=255;
  else
    y--;
  background(y);
  fill(x);
  fractal(250, 250, 255);
  fill(y);
  sierpinski(250, 250, 87);
  fill(x);
  fractal(250, 250, 45);
  fill(y);
  sierpinski(250, 250, 18);
  fill(x);
  fractal(250, 250, 7);
}
public void mousePressed() {
  
}
public void fractal(int x, int y, int siz){
  rect(x, y, siz, siz);
  if(siz>1){
    fractal(x+siz/2, y-siz/2, siz/2); //top left
    fractal(x-siz/2, y-siz/2, siz/2); //top right
    fractal(x-siz/2, y+siz/2, siz/2); //bottom left
    fractal(x+siz/2, y+siz/2, siz/2); //top right
    
  }
}
public void sierpinski(int x, int y, int len) {
  rect(x, y, len, len);
  if(len>5){
    sierpinski(x-len, y-len, len/3); //top left
    sierpinski(x, y-len, len/3); //top middle
    sierpinski(x+len, y-len, len/3); //top right
    
    sierpinski(x-len, y, len/3); //middle left
    //sierpinski(x, y, len/3); //middle middle
    sierpinski(x+len, y, len/3); //middle right
    
    sierpinski(x-len, y+len, len/3); //down left
    sierpinski(x, y+len, len/3); //down middle
    sierpinski(x+len, y+len, len/3); //down right
    
    
  }
}
