require 'glimmer-dsl-libui'

include Glimmer

window('Hello, Layout!') {
  content_size 50, 20
  margined true
  
  vertical_box {
    {'First Name' => 'John', 'Last Name' => 'Doe'}.each do |attr, val|
      horizontal_box {
        label(attr)
        entry {
          text val
        }
      }
    end
  }
}.show
