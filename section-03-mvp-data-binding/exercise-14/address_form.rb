require 'glimmer-dsl-libui'

class AddressFormModel
  attr_accessor :text
  attr_reader :name, :street, :city, :state, :zip
  
  def name=(value)
    @name = value
    update_text
  end
  
  def street=(value)
    @street = value
    update_text
  end
  
  def city=(value)
    @city = value
    update_text
  end
  
  def state=(value)
    @state = value
    update_text
  end
  
  def zip=(value)
    @zip = value
    update_text
  end
  
  private
  
  def update_text
    self.text = [name, street, city, state, zip].compact.reject(&:empty?).join(', ')
  end
end

class AddressFormView
  include Glimmer

  def initialize
    @address_form_model = AddressFormModel.new
    create_window
  end
  
  def create_window
    @window = window('Address Form') {
      content_size 400, 200
      margined true
      
      vertical_box {
        form {
          [:name, :street, :city, :state, :zip].each do |attribute|
            entry {
              label attribute.to_s.capitalize
              text <=> [@address_form_model, attribute]
            }
          end
        }
        
        label {
          stretchy false
          
          text <= [@address_form_model, :text]
        }
      }
    }
  end
  
  def launch
    @window.show
  end
end

address_form_view = AddressFormView.new
address_form_view.launch
