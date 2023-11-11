require 'glimmer-dsl-libui'

include Glimmer

      window('Area Shapes - Line', 400, 400) {
        area {
          line(50, 100, 350, 300) {
            stroke 255, 0, 0, thickness: 3
          }
        }
      }.show
      
      
