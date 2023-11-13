# Delete this example model and replace with your own model
class HelloWorld
  module Model
    class Greeting
      GREETINGS = [
        'Hello, World!',
        'Howdy, Partner!'
      ]
      
      attr_accessor :text
      
      def initialize
        @text = GREETINGS.first
      end
      
      def text_index=(new_text_index)
        self.text = GREETINGS[new_text_index]
      end
      
      def text_index
        GREETINGS.index(text)
      end
    end
  end
end
