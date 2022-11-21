Triangles[] triangleS = new Triangles[20]; //array to construct 20 objects from the class Triangles with triangleS parameters
Triangles[] triangleM = new Triangles[20]; //array to construct 20 objects from the class Triangles with triangleM parameters
Triangles[] triangleL = new Triangles[20]; //array to construct 20 objects from the class Triangles with triangleL parameters

void setup() {
  size(600,600);
  createTriangles();  //initializes arrays for the triangles
}

void draw() {
  background(#4D0000); //dark red background color
  noStroke(); //no outline for the triangles
  displayTriangles(); //displays the triangles
}

void createTriangles() {
  for(int index=0;index<triangleS.length;index++) { //index variable has an initial value of 0, must be less than the length of triangleS, and increases by increments of 1
    triangleS[index]=new Triangles(); //initializes triangleS array
    triangleM[index]=new Triangles(); //initializes triangleM array
    triangleL[index]=new Triangles(); //initializes triangleL array
  }
}

void displayTriangles() {
  for(int index=0;index<triangleS.length;index++) //index variable has an initial value of 0, must be less than the length of triangleS, and increases by increments of 1
    triangleS[index].display(15,1,0.01,#932F2F); //displays the small triangles
  for(int index=0;index<triangleM.length;index++) //index variable has an initial value of 0, must be less than the length of triangleM, and increases by increments of 1
    triangleM[index].display(20,2,0.02,#BFBDB8); //diplays the medium triangles
  for(int index=0;index<triangleL.length;index++) //index variable has an initial value of 0, must be less than the length of triangleL, and increases by increments of 1
    triangleL[index].display(30,3,0.03,#CE6666); //displays the large triangles
}
