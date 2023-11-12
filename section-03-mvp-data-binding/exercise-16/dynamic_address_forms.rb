require 'glimmer-dsl-libui'

class Address
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

class User
  attr_accessor :addresses
  attr_reader :address_count
  
  def initialize
    @address_count = 1
    @addresses = []
    update_addresses
  end
  
  def address_count=(value)
    @address_count = value
    update_addresses
  end
  
  private
  
  def update_addresses
    address_count_change = address_count - addresses.size
    if address_count_change > 0
      address_count_change.times { addresses << Address.new }
    else
      address_count_change.abs.times { addresses.pop }
    end
  end
end

class DynamicAddressForms
  include Glimmer

  def initialize
    @user = User.new
    create_window
  end
  
  def create_window
    @window = window('Dynamic Address Forms') { |main_window|
      content_size 400, 200
      margined true
      
      vertical_box {
        horizontal_box {
          stretchy false
          
          label('Number of addresses: ') {
            stretchy false
          }
          spinbox(1, 3) {
            value <=> [@user, :address_count]
          }
        }
        
        vertical_box {
          content(@user, :addresses) do
            main_window.content_size = [400, 200]
            
            @user.addresses.each do |address|
              vertical_box {
                form {
                  [:name, :street, :city, :state, :zip].each do |attribute|
                    entry {
                      label attribute.to_s.capitalize
                      text <=> [address, attribute]
                    }
                  end
                }
                
                label {
                  stretchy false
                  
                  text <= [address, :text]
                }
              }
            end
          end
        }
      }
    }
  end
  
  def launch
    @window.show
  end
end

dynamic_address_forms = DynamicAddressForms.new
dynamic_address_forms.launch
