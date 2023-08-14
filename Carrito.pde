//Laboratorio 3,práctica para el examen :)
float ang;
float x,y;
float vel;
int a;
void setup (){
  size(1300,500);
  x=150;
  y=350;
  vel=2;
  a=51;
  }
  
  void draw(){
    background(#90E4FA);//fondo
    //dibujo de pavimento
    stroke(0);//bordes color negro
    strokeWeight(2);//grosor del borde
    fill(#D8D2D2);//Color gris del pavimento
    rect(0,350,width,150);//dibujo de la calle
     fill(#3C832E);//Color gris del pavimento
    rect(0,400,width,150);//dibujo de la calle
    
fill(#FFB84D);
 ellipse(60,70,70,60);
 
  
  for(int i=0; i<3000;i+=300){
    fill(255);
    rect(a+i,362,105,15);
    }
    a-=10;
    if(a<-249){
      a=51;
      }
    carro();
    x+=vel;
    ang+=vel+1.7;
   
    }
    void carro(){
      //chasis
      beginShape();
      fill(#F07272); //color del carro
      vertex(x,y);//1
      vertex(x,y-35);//2
      vertex(x+50,y-35);//3
      vertex(x+75,y-80);//4
      vertex(x+150,y-80);//5
      vertex(x+225,y-35);//6
      vertex(x+260,y-35);//7
      vertex(x+260,y);//8
      vertex(x,y);//9
      endShape();
      
      beginShape();
      //ventana 1
      fill(#DBFFFA);
      vertex(x+59,y-35);//1
      vertex(x+82,y-72);//2
      vertex(x+105,y-72);//3
      vertex(x+105,y-35);//4
      vertex(x+59,y-35);//5
      endShape();
      
      beginShape();
      //ventana 2
      fill(#DBFFFA);
      vertex(x+130,y-72);//1
      vertex(x+150,y-72);//2
      vertex(x+210,y-35);//3
      vertex(x+130,y-35);//4
      vertex(x+130,y-72);//5
      endShape();
      
      //separador, puertas se podrian decir 
      line(x+115,y-80,x+115,y);
      
      //LLantas traseras y delanteras
      
      //traseras
      pushMatrix();
      translate(x+60,y);
      stroke(0);
      strokeWeight(3);
      fill(#454D4C);
      circle(0,0,40);
      stroke(255);
      rotate(radians(ang));
      line(0,0,20,0);
     popMatrix();
     
//delantera
      pushMatrix();
      translate(x+215,y);
      stroke(0);
      strokeWeight(3);
      fill(#454D4C);
      circle(0,0,40);
      stroke(255);
      rotate(radians(ang));
      line(0,0,20,0);
     popMatrix();
     }
     
