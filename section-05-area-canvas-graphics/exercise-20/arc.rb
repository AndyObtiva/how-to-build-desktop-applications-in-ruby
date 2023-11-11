require 'glimmer-dsl-libui'

include Glimmer

window('Area Shapes - Arc', 400, 400) {
  area {
    arc(200, 200, 150, 180, 180, false) {
      fill 0xffff00
      stroke 0xff0000, thickness: 3
    }
  }
}.show
