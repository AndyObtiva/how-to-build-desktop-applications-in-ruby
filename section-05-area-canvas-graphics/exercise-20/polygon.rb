require 'glimmer-dsl-libui'

include Glimmer

window('Area Shapes - Polygon', 400, 400) {
  area {
    polygon(50, 200,
            125, 75,
            250, 100,
            350, 200,
            275, 320,
            150, 300) {
      fill 255, 255, 0
      stroke 255, 0, 0, thickness: 3
    }
  }
}.show
