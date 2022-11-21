class Triangles {
  float x,y; //x and y coordinates for the triangles
  float rotate; //initial rotation speed of the triangles
  
  Triangles() {
    x=random(width); //random initial x coordinate for the triangles
    y=random(height); //random initial y coordinate for the triangles
  }
 
  void display(int triangleSize, int triangleSpeed, float rotationSpeed, color triangleColor) {
    pushMatrix(); //stores the coordinates of the triangles
    translate(x,y++); //moves the triangles downwards
    rotate(rotate+=rotationSpeed); //rotates the triangles at different speeds
    fill(triangleColor); //fills the triangles with different colors
    triangle(triangleSize*cos(radians(0)),triangleSize*sin(radians(0)),triangleSize*cos(radians(120)),triangleSize*sin(radians(120)),triangleSize*cos(radians(240)),triangleSize*sin(radians(240))); //creates the triangles
    popMatrix(); //restores the coordinates of the triangles
    y+=triangleSpeed; //triangles move downwards at different speeds
    if(y>height)  //if a triangle goes past the bottom of the screen
      y=0; //the triangle is  set back to the top
  }
}
