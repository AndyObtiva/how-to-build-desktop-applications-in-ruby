require 'glimmer-dsl-libui'
require 'set'

class OptionModel
  attr_accessor :selected_options
  
  def initialize
    @selected_options = []
  end
  
  def toggle_option(option_number)
    if @selected_options.include?(option_number)
      @selected_options.delete(option_number)
    else
      @selected_options << option_number
    end
  end
  
  def to_s
    if @selected_options.empty?
      'None'
    else
      @selected_options.sort.map { |option_number| "Option #{option_number}" }.join(', ')
    end
  end
end

class OptionController
  attr_reader :option_model
    
  def initialize
    @option_model = OptionModel.new
  end
  
  def toggle_option(option_number)
    @option_model.toggle_option(option_number)
  end
end

class OptionView
  include Glimmer

  def initialize
    @option_controller = OptionController.new
    @option_model = @option_controller.option_model
    create_window
    register_observers
  end
  
  def create_window
    @window = window('Hello, Operations!') {
      content_size 50, 20
      margined true
      
      vertical_box {
        @selected_options_label = label('None')
        
        horizontal_box {
          checkboxes = 3.times.map do |n|
            option_number = n + 1
            checkbox("Option #{option_number}") {
              on_toggled do
                @option_controller.toggle_option(option_number)
              end
            }
          end
        }
      }
    }
  end
    
  def register_observers
    observe(@option_model, :selected_options) do
      @selected_options_label.text = @option_model.to_s
    end
  end
  
  def launch
    @window.show
  end
end

option_view = OptionView.new
option_view.launch
