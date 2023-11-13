require 'glimmer-dsl-libui'

include Glimmer

window('Area Shapes', 400, 400) {
  area {
    rectangle(0, 0, 600, 400) { # background shape
      fill :white
    }
    
    square(220, 80, 120) {
      fill :blue
    }
    
    circle(95, 120, 80) {
      fill :green
    }
    
    polygon(140, 235, 155, 355, 255, 300) {
      fill :orange
    }
  }
}.show
      
