//int counter = 0;
//GifMaker ficherogif;

CuerpoCeleste sun, mercury, venus, earth, moon, mars, jupiter, saturn, uranus, neptune;
PImage imagebg, imageSun, imageMercury, imageVenus, imageEarth, imageMoon, imageMars;
PImage imageJupiter, ImageSaturn, ImageUranus, ImageNeptune;
PImage imageW, imageS, imageA, imageD, imageQ, imageE, imageR, imageEnter,imageMouse;
boolean switchMode;
boolean pause;
PFont font1;
float px, py, pz;
float cubex, cubey, cubez;
float cameraRotationX, cameraRotationY;
float backupx, backupz;
float fov, cameraZ;
float theta;
boolean [] move = new boolean[6];

void setup() {
  fullScreen(P3D);   
  loadImages();
  font1 = loadFont("OCRAExtended-48.vlw");
  sun = new CuerpoCeleste(500, imageSun);
  mercury = new CuerpoCeleste(19, imageMercury);
  venus = new CuerpoCeleste(43, imageVenus);
  earth = new CuerpoCeleste(46, imageEarth);
  moon = new CuerpoCeleste(40, imageMoon);
  mars = new CuerpoCeleste(24, imageMars);
  jupiter = new CuerpoCeleste(256.65, imageJupiter); 
  saturn = new CuerpoCeleste(211.85, ImageSaturn);
  uranus = new CuerpoCeleste(91.75, ImageUranus);
  neptune = new CuerpoCeleste(88.8, ImageNeptune);
  switchMode = false;
  pause = true;
  px=0;
  py=0;
  pz=0;
  cubex = width/2;
  cubey = height/2 - 800;
  cubez = 0;
  theta = 0;
  float fov = radians(50);
  float cameraZ = (height/2.0) / tan(fov/2.0);
  //ficherogif = new GifMaker( this , "animacion.gif") ;
  //ficherogif.setRepeat(0);
}

void draw() {
  if (pause) {
    background(imagebg);
    camera();
    textFont(font1, 25);
    image(imageW, 150, 70, 80, 50);
    text("Vertical Y - ", 250, 100 );
    
    image(imageS, 150, 150, 80, 50);
    text("Vertical Y + ", 250, 180 );
    
    image(imageA, 150, 220, 80, 50);
    text("Vertical X -", 250, 250 );
    
    image(imageD, 150, 290, 80, 50);
    text("Vertical X +",250, 320 );
    
    image(imageQ, 175, 360, 55, 50);
    text("Vertical Z +", 250, 390 );
    
    image(imageE, 175, 430, 55, 50);
    text("Vertical Z -", 250, 460 );
    
    image(imageR, 175, 500, 55, 50);
    text("Switch between the cameras", 250, 530 );
    
    image(imageEnter, 175, 570, 55, 50);
    text("Press Enter to resume o pause", 250, 600 );
    
    image(imageMouse, 175, 640, 60, 60);
    text("Drag mouse to rotate angle camera", 250, 685 );
  } else {

    background(imagebg);
    move();
    myBox();
    myCamera();
    textFont(font1, 20);
    textAlign(LEFT);
    text("The Solar System", 20, height - 50);
    sun.rotar(width/2, height/2, -300, 0.5, "Sol");

    pushMatrix();
    mercury.rotar(521, 0, 0, 10, "Mercurio");
    popMatrix();
    pushMatrix();
    venus.rotar(560, 0, 0, 4, "Venus");
    popMatrix();
    pushMatrix();
    earth.rotar(650, 0, 0, 2.4, "Tierra");
    moon.rotar(70, 0, 0, 10, "Luna");
    popMatrix();
    pushMatrix();
    mars.rotar(780, 0, 0, 1.2, "Marte");
    popMatrix();
    pushMatrix();
    jupiter.rotar(950, 0, 0, 0.65, "Jupiter");
    popMatrix();
    pushMatrix();
    saturn.rotar(1300, 0, 0, 0.4, "Saturno");
    popMatrix();
    pushMatrix();
    uranus.rotar(1800, 0, 0, 0.3, "Urano");
    popMatrix();
    pushMatrix();
    neptune.rotar(2050, 0, 0, 0.2, "Neptuno");
    popMatrix();
  }
}

void loadImages() {
  imagebg = loadImage("background.jpg");
  imageSun = loadImage("sun.jpg");
  imageMercury = loadImage("mercury.jpg");
  imageVenus = loadImage("venus.jpg");
  imageEarth = loadImage("earth.jpg");
  imageMoon = loadImage("moon.jpg");
  imageMars = loadImage("mars.jpg");
  imageJupiter = loadImage("jupiter.jpg");
  ImageSaturn = loadImage("saturn.jpg");
  ImageUranus = loadImage("uranus.jpg");
  ImageNeptune = loadImage("neptune.jpg");
  imageW = loadImage("./image/w.png");
  imageS = loadImage("./image/s.png");
  imageA = loadImage("./image/A.png");
  imageD = loadImage("./image/D.png");
  imageQ = loadImage("./image/Q.png");
  imageE = loadImage("./image/E.png");
  imageR = loadImage("./image/R.png");
  imageEnter = loadImage("./image/enter.png");
  imageMouse = loadImage("./image/mouse.png");
}

void myBox() {
  pushMatrix();
  translate(cubex, cubey, cubez);
  noFill();
  stroke(255);
  box(15);
  popMatrix();
}

void myCamera() {
  if (switchMode == false) {    
    camera(width/2.0, height/2.0 -200, (height/2.0) / tan(PI*30.0 / 180.0) - 10, width/2.0, height/2.0, 0, 0, 1, 0);
  } else {
    float dist = -100;
    pushMatrix();
    translate(cubex, cubey, cubez);
    rotateY(radians(cameraRotationX));
    rotateX(radians(cameraRotationY));
    translate(0, 0, dist);
    float x, y, z;
    x = modelX(0, 0, 0);
    y = modelY(0, 0, 0);
    z = modelZ(0, 0, 0);

    popMatrix();
    camera(cubex, - 50 + cubey, cubez + 150, x, y, z, 0, 1, 0);
  }
}

void move() {

  if (move[0] == true) {
    cubey-=10;
  }
  // move[1] == izquierda
  if (move[1] == true) {
    cubex-=10;
  }
  // move[2] == derecha
  if (move[2] == true) {
    cubex+=10;
  }
  //move[3] == abajo
  if (move[3] == true) {
    cubey+=10;
  }
  if (move[4] == true) {
    cubez+=10;
  }
  if (move[5] == true) {
    cubez-=10;
  }
}

void updateRotation(float dx, float dy) {
  cameraRotationX += dx * .3;
  cameraRotationY += dy * .3;

  if (cameraRotationX < 0) cameraRotationX = 360;
  if (cameraRotationX > 360) cameraRotationX = 0;

  if (cameraRotationY < 0) cameraRotationY = 360;
  if (cameraRotationY > 360) cameraRotationY = 0;
}


void keyPressed() {
  if (key == 'r' || key == 'R') switchMode = !switchMode;
  if (keyCode == ENTER) pause = !pause;
  if (key == 'q' || key == 'Q') move[4] =true;
  if (key == 'e' || key == 'E') move[5] =true;
  if (key == 'w' || key == 'W') move[0] =true;
  if (key == 'a' || key == 'A') move[1] =true;
  if (key == 'd' || key == 'D') move[2] =true;
  if (key == 's' || key == 'S') move[3] =true;
}


void keyReleased() {
  if (key == 'w' || key == 'W') move[0] =false;
  if (key == 'a' || key == 'A') move[1] =false;
  if (key == 'd' || key == 'D') move[2] =false;
  if (key == 's' || key == 'S') move[3] =false;
  if (key == 'q' || key == 'Q') move[4] =false;
  if (key == 'e' || key == 'E') move[5] =false;
}

void mouseDragged() {
  float cameraRotationX = mouseX - pmouseX;
  float cameraRotationY = mouseY - pmouseY;
  updateRotation(cameraRotationX, cameraRotationY);
}
