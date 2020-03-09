class CuerpoCeleste {
  private PShape cuerpo;
  float ang;
  float size;
  
  CuerpoCeleste(float size,PImage img) {
    noStroke();
    this.size = size;
    cuerpo = createShape(SPHERE,size);
    cuerpo.setTexture(img);
     this.ang = 0;
  }
  
  public void rotar(float x, float y, float z, float increment, String name) {
    if (increment != 0.5) rotateY(radians(ang));
      
    translate(x, y, z );
    if (increment == 0.5) rotateX(radians(-13));
    scale(0.5);
    rotateY(radians(ang));
    textSize(100); 
    text(name,0,-this.size*1.5);
    shape(cuerpo);
    this.ang = this.ang + increment;
    if (this.ang > 360) this.ang = 0;
  }
  
}
