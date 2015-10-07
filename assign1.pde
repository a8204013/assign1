PImage bg1, bg2, enemy, fighter, hp, treasure;
int x,x1,x2,enemyX,tx,ty,y,t;
void setup () {
  size(640,480) ;  // must use this size.
  bg1 = loadImage("img/bg1.png");
  bg2 = loadImage("img/bg2.png");
  enemy = loadImage("img/enemy.png");
  fighter = loadImage("img/fighter.png");
  hp = loadImage("img/hp.png");
  treasure = loadImage("img/treasure.png");
  x2=-640;
  tx=floor(random(640));
  ty=floor(random(480));
  
}

void draw() {
  //dackground
  x1=run(x1);
  x2=run(x2);
  image(bg1,x1,0);
  image(bg2,x2,0);
  //me
  image(fighter,580,250);
  //enemy
  enemyX+=5;
  enemyX%=640;
  image(enemy,enemyX,150);
  //treasure
  t++;
  t%=100;
  if(t==0)
  {
   tx=floor(random(640));
   ty=floor(random(480));
  }
  image(treasure,tx,ty);
  //hp
  fill(255,0,0);
  rect(30,30,150,20);
  image(hp,25,25);
}

public static int run(int x)
{
  x++;
  if(x==640)
  {
  x=-640;
  }
  return x;
}
