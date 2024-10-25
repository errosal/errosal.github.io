// Define the placeholder container
const containerDiv = document.getElementById("vizContainer");

// Tableau dashboard URL
const url =
  "https://public.tableau.com/views/LondonBikeRides-MovingAverageandHeatmap_17297952216500/Dashboard";

// Tableau options for customization
const options = {
  hideTabs: true, // Hide Tableau tabs
  toolbar: true,  // Show the toolbar
};

// Initialize Tableau dashboard
let viz; // Global variable to access the viz object

function initViz() {
  viz = new tableau.Viz(containerDiv, url, options); // Create viz
}

// Function to resize the Tableau dashboard
function resizeViz() {
  if (viz) {
    // Dynamically set the size of the dashboard based on the container's current size
    viz.setFrameSize(containerDiv.offsetWidth, containerDiv.offsetHeight);
  }
}

// Load the Tableau dashboard when the page is ready
document.addEventListener("DOMContentLoaded", function () {
  initViz();
  window.addEventListener("resize", resizeViz); // Add event listener for resizing
});