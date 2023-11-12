require 'glimmer-dsl-libui'

include Glimmer

window('Area Shapes - Bezier', 400, 400) {
  area {
    bezier(50, 200, 100, -200, 300, 600, 350, 200) {
      fill 255, 255, 0
      stroke 255, 0, 0, thickness: 3
    }
  }
}.show
