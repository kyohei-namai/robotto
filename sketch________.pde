float baseH = 50;
float armL1 = 40;
float armL2 = 40;
float armL3 = 40;
float armW1 = 10;
float armW2 = 10;
float armW3 =5;
float angle0 = 0;
float angle1 = 0;
float angle2 = 0;
float angle3 = 10;
float l3 = 5;
float dif = 1.0;


void setup(){
  size(1000, 1000, P3D);
  //background(255);
  
  frameRate (60);
  
  camera(150, 150, 150, 0, 0, 0, 0, 0, -1);
  
   noStroke();
}

void draw(){
  
  background(202,207,208);
  
  if(keyPressed){

    if(key == 's'){
      angle1 = angle1 + dif;
    }
    if(key == 'S'){
      angle1 = angle1 - dif;
    }
    if(key == 'k'){
      angle2 = angle2 + 2*dif;
    }
    if(key == 'K'){
      angle2 = angle2 - 2*dif;
    }
    if(key == 'e'){
      angle3 = angle3 + dif;
    }
    if(key == 'E'){
      angle3 = angle3 - dif;
    }
    if(key == 'h'){
      l3 = l3 + dif;
    }
    if(key == 'H'){
      l3 = l3 - dif;
    }
  }
  
  //base

  translate(0,0,baseH/2);
  fill(190);
  box(10,10,baseH);
  
  //1st link
  rotateZ(radians(angle1));
  translate(0,armL1/2-armW1/2,baseH/2+armW1/2);
  fill(150);
  box(armW1,armL1,armW1);
  
  //2nd link
  rotateY(radians(angle2));
  translate(0,armL1-2*armW2,-armW2);
  translate(armW2-10,armW2-5,0);
  fill(125);
  box(armW2,armW2,armL2);

  
  //3rd link
  translate(10,12.5-l3,-17.5);
  fill(100);
  box(10,10*armW3,10);
 
   //4rd link
   translate(10,20,0);
   fill(100);
   box(10,10,10);
   
   //4rd(2) link
   fill(75);
   rotateX(radians(angle3));
    translate(10,20,0);
  box(10,4*10,10);
 
}
