require 'glimmer-dsl-libui'

class UserList
  attr_accessor :users, :selected_user_index
  
  def initialize
    @users = []
  end
  
  def selected_user
    @users[selected_user_index] if selected_user_index
  end
end
  
class User
  attr_accessor :username, :password
  
  def masked_password
    '*' * password.to_s.size
  end
end

class UserEditor
  # editable_user provides the temporary user object for editing
  attr_reader :editable_user
  
  # initializes a user editor with nil when creating a new user
  # or with an existing user when editing an existing user
  def initialize(user = nil)
    @user = user || User.new
    reset_editable_user
  end
  
  def reset_editable_user
    @editable_user = User.new
    @editable_user.username = @user.username
    @editable_user.password = @user.password
  end
  
  # saves editable user data and returns final user to add to DB/File/Array/etc...
  def save
    @user.username = @editable_user.username
    @user.password = @editable_user.password
    @user
  end
  
  def cancel
    reset_editable_user
    nil
  end
end

class UserFormWindow
  include Glimmer::LibUI::CustomWindow
  
  # This holds the final user produced by the form
  # And, a user can be optionally passed (e.g. `user_form(user: someuser)`) when editing an existing user
  option :user, default: nil
  option :on_save, default: lambda { |user| }
  
  before_body do
    @user_editor = UserEditor.new(user)
  end
  
  body {
    window('User Form', 50, 50) { |user_form_window|
      margined true
      
      vertical_box {
        form {
          entry {
            label 'Username'
            
            text <=> [@user_editor.editable_user, :username]
          }
          
          password_entry {
            label 'Password'
            
            text <=> [@user_editor.editable_user, :password]
          }
        }
        horizontal_box {
          stretchy false
          
          button('Save') {
            on_clicked do
              self.user = @user_editor.save
              on_save.call(user)
              user_form_window.destroy
            end
          }
          
          button('Cancel') {
            on_clicked do
              @user_editor.cancel
              user_form_window.destroy
            end
          }
        }
      }
      
      on_closing do
        @user_editor.cancel
      end
    }
  }
end

class UserManagerApp
  include Glimmer::LibUI::Application
  
  before_body do
    @user_list = UserList.new
  end
  
  body {
    window('User Manager', 300, 300) {
      vertical_box {
        horizontal_box {
          padded true
          stretchy false
          
          button('Add User') {
            on_clicked do
              on_save = lambda { |user| @user_list.users << user }
              user_form_window(on_save: on_save).show
            end
          }
          
          button('Edit User') {
            enabled <= [@user_list, :selected_user_index, on_read: ->(val) {!!val}]
            
            on_clicked do
              on_save = lambda { |user| @user_list.users[@user_list.selected_user_index] = user }
              user_form_window(user: @user_list.selected_user, on_save: on_save).show
            end
          }
        }
        table {
          text_column('Username')
          text_column('Password')
          
          cell_rows <=> [@user_list, :users, column_attributes: {'Password' => :masked_password}]
          
          on_selection_changed do |table, selection|
            @user_list.selected_user_index = selection
          end
        }
      }
    }
  }
end

UserManagerApp.launch
