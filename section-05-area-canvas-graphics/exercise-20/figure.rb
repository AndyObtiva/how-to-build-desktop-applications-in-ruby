require 'glimmer-dsl-libui'

include Glimmer

window('Area Shapes - Figure', 400, 400) {
  area {
    figure(25, 320) {
      line 75, 100
      line 125, 220
      line 175, 50
      line 225, 270
      bezier 250, 0, 300, 300, 325, 300
      bezier 350, 0, 360, 20, 375, 320
      
      closed true
      fill 255, 255, 0
      stroke 255, 0, 0, thickness: 3
    }
  }
}.show
