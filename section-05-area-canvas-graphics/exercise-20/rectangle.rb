require 'glimmer-dsl-libui'

include Glimmer

window('Area Shapes - Rectangle', 400, 400) {
  area {
    rectangle(50, 100, 300, 200) {
      fill :yellow
      stroke :red, thickness: 3
    }
  }
}.show
