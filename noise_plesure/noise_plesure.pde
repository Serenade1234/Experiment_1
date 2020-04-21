int b;
float f=0;
float x;

void setup(){
  size(300, 300);
  //fullScreen();
  stroke(255);
  strokeWeight(0);
  noFill();
  background(0);
  
}

void draw(){
  f++;
  background(0);
  for(float  y=100; y<height*0.8; y+=5){
    beginShape();
    for(x=0; x<width; ++x)
      vertex(x,y-80/(1+pow(x-width/2,4)/8e6)*noise(x/30+f/50+y));
    vertex(x, 1e4);
    endShape();
  }
  saveFrame("frames/#####.png");
}
