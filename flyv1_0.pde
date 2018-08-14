PImage img, img2, img3;
int dex=0, dey=0, y=450, x=0;
int x_new=width, x_new1=width+300, x_new2=width+600, x_new3=width+900, x_new4=width+1200;
int f=5, flag=2;
int score=0;
int y_new=0, y_new4=130, y_new1=450, y_new2=height-700, y_new3=height/2;
int l=10, g=0;
int b1=250, b2=200;
void setup()
{
  fullScreen();
  background(255, 255, 255);
  smooth();
  noStroke();
  img=loadImage("im.png");
  img2=loadImage("im2.jpg");
  img3=loadImage("im3.jpg");
}
void First()
{
  background(255, 255, 255);
  image(img3, width-600, 100);
  textSize(80);
  fill(#050000);
  text("I Can Fly!", 200, 250);
  textSize(20);
  stroke(#050000);
  text("Left click on mouse to start game. Use 'up' and 'down' arrow keys. ", 150, 600);
  if (mousePressed)
  {
    flag=0;
  }
}
void pageFinal()
{
  background(255, 255, 255);
  image(img2, width-500, 150);
  textSize(80);
  text("GAME OVER", 300, 250);
  textSize(60);
  text("SCORE:", 300, 350);
  text(score, 520, 350);
  textSize(20);
  text("->Press Esc to Quit", 300, height-200);
  text("->Left click to Replay", 300, height-180);
  if (mousePressed)
  {
    flag=2;
    score=0;
    x=200;
    y=350;
    x_new=width;
    x_new1=width+30;
    x_new2=width+600; 
    x_new3=width+900;
    x_new4=width+1200;
    score=0;
    y_new=0;
    y_new4=130;
    y_new1=450; y_new2=10;
    y_new3=200;
  } else
    flag=1;
}
void game()
{
  clear();
  background(255, 255, 255);
  image(img, x, y);
  if (keyPressed)
  {
    if (key==CODED)
    {
      if (keyCode== UP)
      {

        if (y>15)
          y=y-10;
        background(255, 255, 255);
        image(img, x, y);
      } else if (keyCode== DOWN)
      {

        if (y<640)
          y=y+10;
        background(255, 255, 255);
        image(img, x, y);
        if (x<500)
          x=x+1;
      }
    }
  }
  stroke(#080000);
  rect(x_new, y_new, l, b1);
  fill(#080000);
  stroke(#080000);
  rect(x_new1, y_new1, l, b1);
  fill(#080000);
  stroke(#080000);
  rect(x_new2, y_new2, l, b1);
  fill(#080000);
  stroke(#080000);
  rect(x_new3, y_new3=200, l, b1);
  fill(#080000);
  stroke(#080000);
  rect(x_new4, y_new4, l, b2);
  fill(#080000);
  x_new=x_new-f;
  x_new1=x_new1-f;
  x_new2=x_new2-f;
  x_new3=x_new3-f;
  x_new4=x_new4-f;
  if (x_new==0)
    x_new=1650;
  if (x_new1==0)
    x_new1=1550;
  if (x_new2==0)
    x_new2=1650;
  if (x_new3==0)
    x_new3=1650;
  if (x_new4==0)
  {
    x_new4=1250;
    score=score+1;
  }
  text("Score:", 1050, 50);
  text(score, 1120, 50);

  dex=x+160;
  dey=y+54;
  if ((x_new<=dex)&&((x_new+l)>=x))
  {
    if ((y>=y_new)&&(dey<=(y_new+b1)))
      flag=1;
  }
  dex=x+160;
  dey=y+54;
  if ((x_new1<=dex)&&((x_new1+l)>=x))
  {
    if ((y>=y_new1)&&(dey<=(y_new1+b1)))
      flag=1;
  }
  dex=x+160;
  dey=y+54;
  if ((x_new2<=dex)&&((x_new2+l)>=x))
  {
    if ((y>=y_new2)&&(dey<=(y_new2+b1)))
      flag=1;
  }
  dex=x+160;
  dey=y+54;
  if ((x_new3<=dex)&&((x_new3+l)>=x))
  {
    if ((y>=y_new3)&&(dey<=(y_new3+b1)))
      flag=1;
  }
  dex=x+160;
  dey=y+54;
  if ((x_new4<=dex)&&((x_new4+l)>=x))
  {
    if ((y>=y_new4)&&(dey<=(y_new4+b2)))
      flag=1;
  }
} 

void draw()
{

  if (flag==2)
  {
    First();
  }  
  if (flag==0)
  {
    game();
  }
  if (flag==1)
  {
    pageFinal();
  }
}