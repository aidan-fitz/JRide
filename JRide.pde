Track track;

void setup() {
  size(800, 600);
  track = new Track();
}

void draw() {
  background(#b9d9ff);
  track.draw();
  track.getNextAndShift();
}

void keyPressed() {
  if (key == ' ') {
    track = new Track();
  }
}
