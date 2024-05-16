// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "@popperjs/core"
import "bootstrap"
import "@rails/actioncable"


document.addEventListener("DOMContentLoaded", function() {
  // Select the element with the tree-hp class
  var treeHp = document.getElementById("tree-hp");

  // Apply wobbling effect with rotation from bottom and swaying from left to right
  function wobble(element) {
      var angle = 0;
      var swayCount = 0; // Count the number of sways
      var maxSwayCount = 6; // Number of times to sway
      var swayDirection = 1; // Initial sway direction

      var wobbleInterval = setInterval(function() {
          // Adjust the wobbling speed by changing the increment value
          angle += 1;
          // Adjust the range of rotation
          var rotation = Math.sin(angle * Math.PI / 180) * 0.85;

          // Check if sway count has reached the limit
          if (swayCount < maxSwayCount) {
              // Apply swaying motion
              element.style.transformOrigin = "bottom"; // Set the rotation origin to bottom
              element.style.transform = "rotate(" + rotation + "deg)";
          } else {
              // If sway count reached the limit, stop the interval
              clearInterval(wobbleInterval);
              // Reset the rotation after wobbling
              element.style.transformOrigin = ""; // Reset the rotation origin
              element.style.transform = "rotate(0deg)";
          }

          // Change sway direction after each complete cycle (left to right)
          if (angle >= 360) {
              swayDirection *= -1; // Reverse sway direction
              angle = 0; // Reset angle for next sway
              swayCount++; // Increment sway count
          }
      }, 20); // Adjust the wobbling frequency by changing the interval duration
  }

  // Call the wobble function with a delay of 1.5 seconds
  setTimeout(function() {
      wobble(treeHp);
  }, 1500); // 1500 milliseconds = 1.5 seconds
});



document.addEventListener("DOMContentLoaded", function() {
  // Select the element with the class "sky"
  var sky = document.querySelector(".sky");

  // Easing function to gradually slow down the animation
  function easeOutQuart(t) {
      return 1 - (--t) * t * t * t;
  }

  // Function to stretch the content horizontally and then scale back
  function stretchAndScale(element) {
      var initialWidth = 200; // Initial width in percent (200%)
      var finalWidth = 100; // Final width in percent (100%)
      var duration = 12000; // Animation duration in milliseconds (adjust as needed)
      var startTime = performance.now(); // Get the start time

      // Animation loop
      function animate(currentTime) {
          var elapsedTime = currentTime - startTime; // Calculate elapsed time
          var progress = elapsedTime / duration; // Calculate progress
          var easedProgress = easeOutQuart(progress); // Apply easing function
          var width = initialWidth - (initialWidth - finalWidth) * easedProgress; // Calculate current width
          element.style.width = width + "%"; // Apply the new width

          // Check if animation is complete
          if (elapsedTime < duration) {
              requestAnimationFrame(animate); // Continue animation
          }
      }

      requestAnimationFrame(animate); // Start the animation loop
  }

  // Call the stretchAndScale function when the document is loaded
  stretchAndScale(sky);
});
