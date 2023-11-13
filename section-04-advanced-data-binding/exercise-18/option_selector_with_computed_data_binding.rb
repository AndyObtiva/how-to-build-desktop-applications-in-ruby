require 'glimmer-dsl-libui'

class OptionSelectorModel
  attr_accessor :selected_options
  
  def initialize
    reset
  end
  
  def include?(option_number)
    selected_options.include?(option_number)
  end
  
  def merge_option(option_number, value)
    if value
      (selected_options + [option_number]).sort
    else
      selected_options - [option_number]
    end
  end
  
  def reset
    self.selected_options = []
  end
  
  def text
    if @selected_options.empty?
      'None'
    else
      @selected_options.sort.map { |option_number| "Option #{option_number}" }.join(', ')
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
          text <= [@option_selector_model, :text, computed_by: :selected_options]
        }
        
        horizontal_box {
          3.times do |n|
            option_number = n + 1
            checkbox("Option #{option_number}") {
              checked <=> [@option_selector_model, :selected_options,
                            on_read: -> (val) { @option_selector_model.include?(option_number) },
                            on_write: -> (val) { @option_selector_model.merge_option(option_number, val) },
                          ]
            }
          end
        }
        
        button('Reset') {
          on_clicked do
            @option_selector_model.reset
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

          
