require 'glimmer-dsl-libui'

include Glimmer

window('Area Shapes - Polyline', 400, 400) {
  area {
    polyline([50, 200], [100, 80], [150, 230], [200, 140],
             [250, 300], [300, 180], [350, 250]) {
      stroke 255, 0, 0, thickness: 3
    }
  }
}.show
