//Variables
int gameScreen = 0;
Circle [] CArray = new Circle[50];
Square [] SArray = new Square[50];

int counter = 0;
int firstL = 0;
int lost = 0;
int secondL = 0;

Circle player;
int w = 30;
int h = 30;

float lastcheck_c;
float lastcheck_s;
float interval_c = 500;
float interval_s = 750;
float time;
float total = 15000; //15 secs
float pause = 150;
float gravity = 1;
float speedVert = 0;
float friction = 0.175;
float midAir = 0.0004;

boolean [] keys = new boolean[128];
boolean left,right,up,down;