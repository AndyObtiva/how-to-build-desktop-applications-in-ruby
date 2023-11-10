require 'glimmer-dsl-libui'

include Glimmer

window('Hello, Layout!') {
  content_size 50, 20
  margined true
  
  horizontal_box {
    label('First Name')
    entry {
      text 'John'
    }
  }
}.show
