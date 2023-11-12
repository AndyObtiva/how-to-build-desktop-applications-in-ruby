require 'glimmer-dsl-libui'

class OptionSelectorModel
  attr_accessor :selected_options, :text
  
  def initialize
    reset
  end
  
  def reset
    self.selected_options = []
    self.text = 'None'
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
              checked <=> [@option_selector_model, :selected_options,
                            on_read: -> (val) {
                              @option_selector_model.selected_options.include?(option_number)
                            },
                            on_write: -> (val) {
                              if val
                                (@option_selector_model.selected_options + [option_number]).sort
                              else
                                @option_selector_model.selected_options - [option_number]
                              end
                            },
                            after_write: -> { @option_selector_model.compute_text }
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
