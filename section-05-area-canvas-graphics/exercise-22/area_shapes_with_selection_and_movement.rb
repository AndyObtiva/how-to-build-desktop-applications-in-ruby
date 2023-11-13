require 'glimmer-dsl-libui'

class AreaShapesWithSelectionAndMovement
  include Glimmer

  def initialize
    @selected_shape = nil
    @shapes = []
    create_window
  end

  def create_window
    @window = window('Area Shapes with Selection and Movement', 400, 400) {
      area {
        rectangle(0, 0, 600, 400) { # background shape
          fill :white
        }
        
        @shapes << square(220, 80, 120) {
          fill :blue
          
          on_mouse_up do
            select_shape(@shapes[0])
          end
        }
        
        @shapes << circle(95, 120, 80) {
          fill :green
          
          on_mouse_up do
            select_shape(@shapes[1])
          end
        }
        
        @shapes << polygon(140, 235, 155, 355, 255, 300) {
          fill :orange
          
          on_mouse_up do
            select_shape(@shapes[2])
          end
        }
      
        on_key_down do |key_event|
          handled = true # assume it is handled for all cases except the else clause below
          case key_event
          in ext_key: :down
            @selected_shape&.move_by(0, 3)
          in ext_key: :up
            @selected_shape&.move_by(0, -3)
          in ext_key: :left
            @selected_shape&.move_by(-3, 0)
          in ext_key: :right
            @selected_shape&.move_by(3, 0)
          else
            handled = false
          end
          handled
        end
      }
    }
  end

  def launch
    @window.show
  end
  
  def select_shape(shape)
    @selected_shape = shape
    @shapes.each {|shape| shape.stroke = nil}
    @selected_shape.stroke = [r: 255, g: 0, b: 0, thickness: 3]
  end
end

area_shapes = AreaShapesWithSelectionAndMovement.new
area_shapes.launch
