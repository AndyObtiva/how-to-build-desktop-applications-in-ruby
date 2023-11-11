require 'glimmer-dsl-libui'

include Glimmer

window('Area Shapes - Square', 400, 400) {
  area {
    square(50, 50, 300) {
      fill 0xffff00
      stroke 0xff0000, thickness: 3
    }
  }
}.show
