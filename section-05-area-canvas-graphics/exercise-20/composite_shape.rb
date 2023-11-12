require 'glimmer-dsl-libui'

include Glimmer

window('Area Shapes - Composite Shape', 400, 400) {
  area {
    rectangle_width = 200
    rectangle_height = 100
    cube_height = 250
    
    # the shape keyword (alias for composite_shape) enables building a composite shape that is treated as one shape
    # like a cube containing polygons, a polyline, a rectangle, and a line
    # with the fill and stroke colors getting inherited by all children that do not specify them
    shape(100, 25) { |the_shape|
      fill 255, 255, 0
      stroke 255, 0, 0, thickness: 3
    
      bottom = polygon(0, cube_height + rectangle_height / 2.0,
              rectangle_width / 2.0, cube_height,
              rectangle_width, cube_height + rectangle_height / 2.0,
              rectangle_width / 2.0, cube_height + rectangle_height) {
        # inherits fill property from parent shape if not set
        # inherits stroke property from parent shape if not set
      }
      body = rectangle(0, rectangle_height / 2.0, rectangle_width, cube_height) {
        # inherits fill property from parent shape if not set
        # stroke is overridden to ensure a different value from parent
        stroke thickness: 0
      }
      polyline(0, rectangle_height / 2.0 + cube_height,
               0, rectangle_height / 2.0,
               rectangle_width, rectangle_height / 2.0,
               rectangle_width, rectangle_height / 2.0 + cube_height) {
        # inherits stroke property from parent shape if not set
      }
      top = polygon(0, rectangle_height / 2.0,
              rectangle_width / 2.0, 0,
              rectangle_width, rectangle_height / 2.0,
              rectangle_width / 2.0, rectangle_height) {
        # inherits fill property from parent shape if not set
        # inherits stroke property from parent shape if not set
      }
      line(rectangle_width / 2.0, cube_height + rectangle_height,
           rectangle_width / 2.0, rectangle_height) {
        # inherits stroke property from parent shape if not set
      }
    }
  }
}.show
