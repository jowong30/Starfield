Particle [] bob = new Particle[1000];
OddballParticle [] sob = new OddballParticle[1];
int timer = 1;
void setup()
{
	frameRate(60);
	background(20,20,200);
	size(600,600);
	for(int i = 0; i<bob.length;i++){
		bob[i] = new Particle();

	}
	for(int i = 0; i<sob.length;i++){
		sob[i] = new OddballParticle();
		
	}
}

void draw()
{	
	timer++;
	//background(0);
	/*
	for(int i = 0; i<bob.length;i++){
		bob[i].move();
		bob[i].show();
		
	}
	for(int i = 0; i<sob.length;i++){
		sob[i].move();
		sob[i].show();
		
	}
	*/
	if(timer<620){
		for(int i = 0; i<bob.length;i++){
		bob[i].move();
		bob[i].show();
		
		}
		for(int i = 0; i<sob.length;i++){
			sob[i].move();
			sob[i].show();
			
		}
	}
}
/*
void mousePressed(){
	myX=300;
	myY=300;
}
*/

class Particle
{
	double myX,myY,speed, angle,sizee;
	int colors;
	Particle(){
		myX=300;
		myY=300;
		speed=Math.random()*3+1;
		angle=(Math.random()*2*PI);
		sizee=3;
	}

	void move(){
		myX += speed * Math.cos(angle);
		myY += speed * Math.sin(angle);
		sizee=sizee*1.01;
	}
	

	void show(){
		noStroke();
		fill(255,255,255,10);
		ellipse((float)myX,(float)myY,(float)sizee,(float)sizee);
	}
}


class OddballParticle extends Particle
{
	OddballParticle(){
		myX=300;
		myY=300;
		
		angle=(Math.random()*2*PI+1);
		//angle+=PI/12;
		sizee=1;
	}

	void move(){
		speed=Math.random()*12-6;
		//myX=(int)(speed)*Math.cos(angle);//*(int)(angle);
		//myY=(int)(speed)*Math.sin(angle);
		//sizee=sizee*1.001;
		myX=((Math.random()*100-50)+300);
		myY=((Math.random()*100-50)+300);
		if(sizee < 180)
			sizee+=0.2;
	}	
	void show(){
		fill(255,0,0,50);
		ellipse((float)myX,(float)myY,(float)sizee*5,(float)sizee*5);
	}
}

void mousePressed(){
	for(int i=0; i<bob.length; i++){
		bob[i].myX=300;
		bob[i].myY=300;
		bob[i].sizee=3;
	}
	for(int i=0; i<sob.length; i++){
		sob[i].myX=300;
		sob[i].myY=300;
		sob[i].sizee=3;
	}
	background(20,20,200);
	timer=0;
}