// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "@popperjs/core"
import "bootstrap"
import "@rails/actioncable"


document.addEventListener("DOMContentLoaded", function() {
  // Select the element with the tree-hp class
  var treeHp = document.getElementById("tree-hp");

  // Apply wobbling effect with rotation from bottom and subtly varied swaying
  function wobble(element) {
      var angle = 0;

      var wobbleInterval = setInterval(function() {
          // Adjust the wobbling speed by changing the increment value
          angle += 0.8 + Math.random() * 0.4; // Adding randomness to the increment value
          // Adjust the range of rotation
          var rotation = Math.sin(angle * Math.PI / 180) * 0.9;

          // Apply swaying motion
          element.style.transformOrigin = "bottom"; // Set the rotation origin to bottom
          element.style.transform = "rotate(" + rotation + "deg)";

          // Change sway direction after each complete cycle (left to right)
          if (angle >= 360) {
              angle = 0; // Reset angle for next sway
          }
      }, 20); // Adjust the wobbling frequency by changing the interval duration

      return wobbleInterval; // Return the interval ID
  }

  // Function to start the wobble effect
  function startWobble() {
      // Call the wobble function and store the interval ID
      var intervalID = wobble(treeHp);

      // Listen for visibility change events
      document.addEventListener("visibilitychange", function() {
          // If the page becomes visible, start a new wobble effect
          if (!document.hidden) {
              clearInterval(intervalID); // Clear the previous interval
              intervalID = wobble(treeHp); // Start a new wobble effect
          }
      });
  }

  // Call the startWobble function immediately
  startWobble();
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
      var finalWidth = 120; // Final width in percent (100%)
      var duration = 15000; // Animation duration in milliseconds (adjust as needed)
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
