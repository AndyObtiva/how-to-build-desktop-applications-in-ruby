require 'glimmer-dsl-libui'

include Glimmer

window('Hello, Button!') {
  button('Greet') {
    on_clicked do
      msg_box('Greeting', 'Hello!')
    end
  }
}.show
