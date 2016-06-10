//many circle
int i;
float[ ] loc_x = new float [ 10 ];
float[ ] loc_y = new float [ 10 ];
float[ ] speed_x = new float [ 10 ];
float[ ] speed_y = new float [ 10 ];
float[ ] radius1 = new float [ 10 ];
float[ ] radius2 = new float [ 10 ];
float[ ] radius3 = new float [ 10 ];
float[ ] radius4 = new float [ 10 ];
float[ ] red1 = new float [ 10 ];
float[ ] green1 = new float [ 10 ];
float[ ] blue1 = new float [ 10 ];
float[ ] red2 = new float [ 10 ];
float[ ] green2 = new float [ 10 ];
float[ ] blue2 = new float [ 10 ];
float[ ] red3 = new float [ 10 ];
float[ ] green3 = new float [ 10 ];
float[ ] blue3 = new float [ 10 ];
float[ ] red4 = new float [ 10 ];
float[ ] green4 = new float [ 10 ];
float[ ] blue4 = new float [ 10 ];

void setup() {
  size(500, 500);
  noStroke(); 
  background(255, 255, 255);
  frameRate(60);
  colorMode(RGB, 255);
}

void update() {
  for (i = 0; i < 10; i++) {
    if (mousePressed) {
      speed_x[i] = (mouseX - loc_x[i]) / 8.0;
      speed_y[i] = (mouseY - loc_y[i]) / 8.0;
    }
    loc_x[i] = loc_x[i]+speed_x[i];
    loc_y[i] = loc_y[i]+speed_y[i];

    if (loc_x[i] > width) {
      speed_x[i] = speed_x[i] * -1;
    }
    if (loc_x[i] < 0) {
      speed_x[i] = speed_x[i] * -1;
    }
    if (loc_y[i] > height) {
      speed_y[i] = speed_y[i] * -1;
    }
    if (loc_y[i] < 0) {
      speed_y[i] = speed_y[i] * -1;
    }
  }
}

void draw() {
  for (i = 0; i < 10; i++) {
    loc_x[i] = random(width);
    loc_y[i] = random(height);
    speed_x[i] = random(-5, 5);
    speed_y[i] = random(-5, 5);

    radius1[i] = random(30, 40);
    radius2[i] = random(20, 30);
    radius3[i] = random(10, 20);
    radius4[i] = random(5, 10);

    red1[i] = random(0, 255);
    green1[i] = random(0, 255);
    blue1[i] = random(0, 255);

    red2[i] = random(0, 255);
    green2[i] = random(0, 255);
    blue2[i] = random(0, 255);

    red3[i] = random(0, 255);
    green3[i] = random(0, 255);
    blue3[i] = random(0, 255);

    red4[i] = random(0, 255);
    green4[i] = random(0, 255);
    blue4[i] = random(0, 255);
  }

  for (i = 0; i < 10; i++) {
    fill(red1[i], green1[i], blue1[i]);
    ellipse(loc_x[i], loc_y[i], radius1[i], radius1[i]);

    fill(red2[i], green2[i], blue2[i]);
    ellipse(loc_x[i], loc_y[i], radius2[i], radius2[i]);

    fill(red3[i], green3[i], blue3[i]);
    ellipse(loc_x[i], loc_y[i], radius3[i], radius3[i]);

    fill(red4[i], green4[i], blue4[i]);
    ellipse(loc_x[i], loc_y[i], radius4[i], radius4[i]);
  }
}

void mouseReleased() {
  for (i = 0; i < 10; i++) {
    speed_x[i] = random(-5, 5);
    speed_y[i] = random(-5, 5);
  }
}