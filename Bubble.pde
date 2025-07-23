// This class controls each bubble
class Bubble {
  float r;           // Size of the bubble
  float x, y;        // Position on the screen
  float xSpeed;      // How fast it moves left/right
  float ySpeed;      // How fast it moves up/down
  boolean alive;     // True if the bubble has not been popped
  color myColor;     // Color of the bubble

  Bubble() {
    x = random(width);            // Random x position
    y = random(height);           // Random y position
    r = random(40, 80);           // Random size between 40 and 80
    xSpeed = random(-3, 3);       // Random horizontal speed
    ySpeed = random(-3, 3);       // Random vertical speed
    alive = true;                 // Start as alive
  }

  void display() {
    stroke(255);                  // White outline
    fill(myColor);                // Fill with bubble’s color
    circle(x, y, r);              // Draw the bubble
  }

  void move() {
    x += xSpeed;                  // Move left or right
    y += ySpeed;                  // Move up or down

    // If bubble touches the left or right wall, bounce back
    if (x < r || x > width - r)
      xSpeed *= -1;

    // If bubble touches the top or bottom wall, bounce back
    if (y < r || y > height - r) 
      ySpeed *= -1;
  }

  // Check if mouse clicked inside the bubble
  boolean isClicked(float mx, float my) {
    float d = dist(mx, my, x, y);  // Distance from mouse to bubble center
    return d < r / 2;              // True if mouse is inside the bubble
  }
}
