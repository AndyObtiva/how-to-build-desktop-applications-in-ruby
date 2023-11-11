require 'glimmer-dsl-libui'

class OptionSelectorModel
  attr_accessor :selected_options, :text
  
  def initialize
    @selected_options = []
    @text = 'None'
  end
  
  def option1
    get_option(1)
  end
  
  def option1=(value)
    set_option(1, value)
  end
  
  def option2
    get_option(2)
  end
  
  def option2=(value)
    set_option(2, value)
  end
  
  def option3
    get_option(3)
  end
  
  def option3=(value)
    set_option(3, value)
  end
  
  def get_option(option_number)
    @selected_options.include?(option_number)
  end
  
  def set_option(option_number, value)
    if value
      @selected_options << option_number unless @selected_options.include?(option_number)
    else
      @selected_options.delete(option_number)
    end
    compute_text
  end
  
  def compute_text
    if @selected_options.empty?
      self.text = 'None'
    else
      self.text = @selected_options.sort.map { |option_number| "Option #{option_number}" }.join(', ')
    end
  end
end

class OptionSelectorView
  include Glimmer

  def initialize
    @option_selector_model = OptionSelectorModel.new
    create_window
  end
  
  def create_window
    @window = window('Option Selector') {
      content_size 50, 20
      margined true
      
      vertical_box {
        label {
          text <= [@option_selector_model, :text]
        }
        
        horizontal_box {
          3.times do |n|
            option_number = n + 1
            checkbox("Option #{option_number}") {
              checked <=> [@option_selector_model, "option#{option_number}"]
            }
          end
        }
      }
    }
  end
  
  def launch
    @window.show
  end
end

option_selector_view = OptionSelectorView.new
option_selector_view.launch
