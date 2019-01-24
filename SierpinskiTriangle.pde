boolean diffColors = false;
public void setup()
{
	size(512, 512);
	background(0);
	fill((float)(Math.random()*255), (float)(Math.random()*255), (float)(Math.random()*255));
	sierpinski(0,height,512,-1);
}
public void draw()
{

}
public void mousePressed()
{
	if(diffColors = false){
		fill((float)(Math.random()*255), (float)(Math.random()*255), (float)(Math.random()*255));
		sierpinski(0,height,512,-1);
	}
	if(diffColors = true){
		sierpinski(0,height,512,1);
	}
}
public void sierpinski(int x, int y, int len, float col) 
{
	if(col != -1){
		if(len<20){
			triangle(x,y,x+len,y,x+len/2,y-len);
		}else{
			sierpinski(x,y,len/2,-1);
			sierpinski(x+len/2,y,len/2,-1);
			sierpinski(x+len/4,y-len/2,len/2,-1);
		}
	}else{
		if(len<20){
			fill((float)(Math.random()*255), (float)(Math.random()*255), (float)(Math.random()*255));
			triangle(x,y,x+len,y,x+len/2,y-len);
		}else{
			sierpinski(x,y,len/2,-1);
			sierpinski(x+len/2,y,len/2,-1);
			sierpinski(x+len/4,y-len/2,len/2,-1);
		}
	}
}
public void keyPressed() {
	if(key = '1'){
		diffColors = false;
	}
	if(key = '2'){
		diffColors = true;
	}
}