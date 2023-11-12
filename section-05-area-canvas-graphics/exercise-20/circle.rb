require 'glimmer-dsl-libui'

include Glimmer

window('Area Shapes - Circle', 400, 400) {
  area {
    circle(200, 200, 150) {
      fill r: 255, g: 255, b: 0
      stroke r: 255, g: 0, b: 0, thickness: 3
    }
  }
}.show
