require 'hello_world/model/greeting'

class HelloWorld
  module View
    class HelloWorld
      include Glimmer::LibUI::Application
    
          
      ## Add options like the following to configure CustomWindow by outside consumers
      #
      # options :title, :background_color
      # option :width, default: 320
      # option :height, default: 240
  
      ## Use before_body block to pre-initialize variables to use in body and
      #  to setup application menu
      #
      before_body do
        @greeting = Model::Greeting.new
        
        menu('File') {
          menu_item('Preferences...') {
            on_clicked do
              display_preferences_dialog
            end
          }
          
          # Enables quitting with CMD+Q on Mac with Mac Quit menu item
          quit_menu_item if OS.mac?
        }
        menu('Help') {
          if OS.mac?
            about_menu_item {
              on_clicked do
                display_about_dialog
              end
            }
          end
          
          menu_item('About') {
            on_clicked do
              display_about_dialog
            end
          }
        }
      end
  
      ## Use after_body block to setup observers for controls in body
      #
      # after_body do
      #
      # end
  
      ## Add control content inside custom window body
      ## Top-most control must be a window or another custom window
      #
      body {
        window {
          # Replace example content below with your own custom window content
          content_size 240, 240
          title 'Hello World'
          
          margined true
          
          label {
            text <= [@greeting, :text]
          }
        }
      }
  
      def display_about_dialog
        message = "Hello World #{VERSION}\n\n#{LICENSE}"
        msg_box('About', message)
      end
      
      def display_preferences_dialog
        window {
          title 'Preferences'
          content_size 200, 100
          
          margined true
          
          vertical_box {
            padded true
            
            label('Greeting:') {
              stretchy false
            }
            
            radio_buttons {
              stretchy false
              
              items Model::Greeting::GREETINGS
              selected <=> [@greeting, :text_index]
            }
          }
        }.show
      end
    end
  end
end
