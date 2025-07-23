Bubble[] bub = new Bubble[50];  // Create an array for 50 bubbles

void setup() {
  size(640, 360);               // Set the size of the screen
  for (int i = 0; i < bub.length; i++) {
    bub[i] = new Bubble();      // Create each bubble
    // Give each bubble a random color
    bub[i].myColor = color(random(256), random(256), random(256));
  }
}

void draw() {
  background(0);                // Make the background black
  for (int i = 0; i < bub.length; i++) {
    if (bub[i].alive) {         // Only draw bubbles that are still alive
      bub[i].move();            // Move the bubble
      bub[i].display();         // Show the bubble on the screen
    }
  }
}

void mousePressed() {
  // When the mouse is clicked, check all bubbles
  for (int i = 0; i < bub.length; i++) {
    // If a bubble is alive and the mouse clicked inside it
    if (bub[i].alive && bub[i].isClicked(mouseX, mouseY)) {
      bub[i].alive = false;     // Make the bubble disappear
    }
  }
}
