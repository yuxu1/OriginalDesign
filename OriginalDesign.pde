int y=0;

void setup()
{
  size (500, 500, P3D);
  smooth();
  stroke(255);
  frameRate(2);
}

void draw()
{
  background(0);
  translate(250, 250, 0);
  rotateY(y);
  y=y+1;
  lighting();
  rotation();
}

void lighting()
{
  pointLight(152, 237, 247, -250, -250, 150);
  pointLight(240, 0, 0, 250, 250, -150);
  pointLight(158, 240, 140, 75, -75, 100);
  pointLight(255, 242, 93, -75, 75, -100);
  pointLight(138, 62, 227, 75, 75, 80);
  pointLight(227, 153, 62, -75, -75, -80);
}

void rotation()
{
  sphere(80); //center, main
  translate(0, 0, 200);
  sphere(40);//around center
  translate(0, 0, -200);
  translate(200, 0, 0);
  sphere(40);//around center
  translate(-200, 0, 0);
  translate(0, 200, 0);
  sphere(40);//bottom
  translate(0, -200, 0);
  translate(0, -200, 0);
  sphere(40);//top
  translate(0, 200, 0);
  translate(-200, 0, 0);
  sphere(40);//around center
  translate(200, 0, 0);
  translate(-200, 0, -200);
  sphere(40);//around center
}
