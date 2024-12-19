# How To Build Basic Desktop Applications in Ruby
## RubyConf 2024 Workshop Code Exercises by Andy Maleh

Mac | Windows | Linux
----|---------|------
![glimmer-dsl-libui-mac-control-gallery.png](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-mac-control-gallery.png) | ![glimmer-dsl-libui-windows-control-gallery.png](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-windows-control-gallery.png) | ![glimmer-dsl-libui-linux-control-gallery.png](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-linux-control-gallery.png)

Please star ("⭐️") this project and [Glimmer DSL for LibUI](https://github.com/AndyObtiva/glimmer-dsl-libui) to save for later reference with regards to Ruby Desktop Development. [Glimmer DSL for LibUI](https://github.com/AndyObtiva/glimmer-dsl-libui) was used in this workshop because it is the simplest and quickest to setup in standard Ruby (aka MRI / CRuby), but the lessons learned are applicable to other [Glimmer GUI DSLs](https://github.com/AndyObtiva/glimmer#glimmer-dsl-comparison-table) (with some syntax variations), including more mature ones like [Glimmer DSL for SWT](https://github.com/AndyObtiva/glimmer-dsl-swt), which might be better for more serious usage after finishing the workshop. If you discover any issues or get stuck while going through the material of this repo, please [report them in GitHub issues](https://github.com/AndyObtiva/how-to-build-desktop-applications-in-ruby/issues) or discuss in the [Glimmer Gitter Chat](https://app.gitter.im/#/room/#AndyObtiva_glimmer:gitter.im).

YouTube Video Link:

[https://www.youtube.com/watch?v=TTSqRdTVtDY](https://www.youtube.com/watch?v=TTSqRdTVtDY)

Presentation Slides Online Short Link:

[https://bit.ly/rubyconf2024desktop](https://bit.ly/rubyconf2024desktop)

Presentation Slides Online Long Link:

[https://docs.google.com/presentation/d/e/2PACX-1vSAaFLYeyolSy2Qe2tW0djv78tA-m120i4DJyaJ4qAHoWpv5Xppn_-yIpg4_IAGntetZkRDkkuT2zXN/pub?start=false&loop=false&delayms=60000&slide=id.g140fe579a5a_0_0](https://docs.google.com/presentation/d/e/2PACX-1vSAaFLYeyolSy2Qe2tW0djv78tA-m120i4DJyaJ4qAHoWpv5Xppn_-yIpg4_IAGntetZkRDkkuT2zXN/pub?start=false&loop=false&delayms=60000&slide=id.g140fe579a5a_0_0)

Presentation Slides Offline Download Links:

- PowerPoint: [https://github.com/AndyObtiva/how-to-build-desktop-applications-in-ruby/raw/refs/heads/rubyconf2024/RubyConf%202024%20-%20How%20To%20Build%20Basic%20Desktop%20Applications%20in%20Ruby%20-%20Andy%20Maleh.pptx](https://github.com/AndyObtiva/how-to-build-desktop-applications-in-ruby/raw/refs/heads/rubyconf2024/RubyConf%202024%20-%20How%20To%20Build%20Basic%20Desktop%20Applications%20in%20Ruby%20-%20Andy%20Maleh.pptx)
- PDF: [https://github.com/AndyObtiva/how-to-build-desktop-applications-in-ruby/raw/refs/heads/rubyconf2024/RubyConf%202024%20-%20How%20To%20Build%20Basic%20Desktop%20Applications%20in%20Ruby%20-%20Andy%20Maleh.pdf](https://github.com/AndyObtiva/how-to-build-desktop-applications-in-ruby/raw/refs/heads/rubyconf2024/RubyConf%202024%20-%20How%20To%20Build%20Basic%20Desktop%20Applications%20in%20Ruby%20-%20Andy%20Maleh.pdf)

[If you are looking for the RubyConf 2023 longer version of the workshop ("How To Build Desktop Applications in Ruby"), click here!](https://github.com/AndyObtiva/how-to-build-desktop-applications-in-ruby/tree/rubyconf2023)

## Table of Contents

- [How To Build Desktop Applications in Ruby](#how-to-build-desktop-applications-in-ruby)
  * [Setup Glimmer DSL for LibUI](#setup-glimmer-dsl-for-libui)
  * [Resources](#resources)
  * [Exercises](#exercises)
  * [Hack Day](#hack-day)

## Setup Glimmer DSL for LibUI

Please make sure to follow these instructions on your laptop successfully before attending the workshop.

1- Open Terminal (on Mac or Linux) or Command-Prompt/Git-Bash (on Windows) [do not use WSL or PowerShell]

2- Install [glimmer-dsl-libui](https://github.com/AndyObtiva/glimmer-dsl-libui) gem

Run:

```
gem install glimmer-dsl-libui -v0.12.5
```

3- Load Glimmer Meta-Example to test gem

Run:

```
glimmer examples
```

You should see the Glimmer Meta-Example (the example of examples).

Mac | Windows | Linux
----|---------|------
![glimmer-dsl-libui-mac-meta-example.png](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-mac-meta-example.png) | ![glimmer-dsl-libui-windows-meta-example.png](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-windows-meta-example.png) | ![glimmer-dsl-libui-linux-meta-example.png](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-linux-meta-example.png)

4- Clone Repository

Clone the GitHub repository to avoid running into issues if WIFI service is unreliable at the event:

```
git clone https://github.com/AndyObtiva/how-to-build-desktop-applications-in-ruby.git
```

This will download the [presentation slides](https://github.com/AndyObtiva/how-to-build-desktop-applications-in-ruby/raw/refs/heads/rubyconf2024/RubyConf%202024%20-%20How%20To%20Build%20Basic%20Desktop%20Applications%20in%20Ruby%20-%20Andy%20Maleh.pptx).

On the morning of day 2 (Thursday, Nov 14, 2024), pull the latest version of the repository before you go into the workshop to get all the code exercises and the latest version of the presentation slides.

5- (Optional) Scaffold Application

This step is helpful for the Hack Day event that follows the 2-hour workshop, but is not necessary for the workshop itself and can be skipped till you get to the Hack Day event if you run into any issues with it.

Application Scaffolding relies on the juwelier Ruby gem, which expects a local Git config of:
- `user.name` (`git config --global user.name "FirstName LastName"`)
- `github.user` (`git config --global github.user githubusername`)

Scaffold Glimmer DSL for LibUI application with this command:

```
glimmer "scaffold[hello_world]"
```

## Resources

- [Glimmer DSL for LibUI](https://github.com/AndyObtiva/glimmer-dsl-libui)
- [Glimmer DSL for LibUI Supported Keywords](https://github.com/AndyObtiva/glimmer-dsl-libui#supported-keywords)

## Exercises

### Section 1 GUI Basics

[section-01-gui-basics](/section-01-gui-basics)

#### Section 1 Exercise 1 Empty Window

[section-01-gui-basics/exercise-01/empty_window.rb](/section-01-gui-basics/exercise-01/empty_window.rb)

Run this command from cloned repo directory:

```
glimmer section-01-gui-basics/exercise-01/empty_window.rb
```

Screenshot(s):

![empty window](/screenshots/section-01-exercise-01-screenshot-01-empty-window.png)

#### Section 1 - Exercise 2 Hello, World! Window with Args

[section-01-gui-basics/exercise-02/hello_world_window_with_args.rb](/section-01-gui-basics/exercise-02/hello_world_window_with_args.rb)

Run this command from cloned repo directory:

```
glimmer section-01-gui-basics/exercise-02/hello_world_window_with_args.rb
```

Screenshot(s):

![hello world window with args](/screenshots/section-01-exercise-01-screenshot-02-hello-world-window-with-args.png)

#### Section 1 - Exercise 3 Hello, World! Window with Props

[section-01-gui-basics/exercise-03/hello_world_window_with_props.rb](/section-01-gui-basics/exercise-03/hello_world_window_with_props.rb)

Run this command from cloned repo directory:

```
glimmer section-01-gui-basics/exercise-03/hello_world_window_with_props.rb
```

Screenshot(s):

![hello world window with props](/screenshots/section-01-exercise-01-screenshot-02-hello-world-window-with-args.png)

#### Section 1 - Exercise 4 Hello, World! Window + Label with Args

[section-01-gui-basics/exercise-04/hello_world_window_label_with_args.rb](/section-01-gui-basics/exercise-04/hello_world_window_label_with_args.rb)

Run this command from cloned repo directory:

```
glimmer section-01-gui-basics/exercise-04/hello_world_window_label_with_args.rb
```

Screenshot(s):

![hello world window label with args](/screenshots/section-01-exercise-01-screenshot-03-hello-world-window-label-with-args.png)

#### Section 1 - Exercise 5 Hello, World! Window + Label with Props

[section-01-gui-basics/exercise-05/hello_world_window_label_with_props.rb](/section-01-gui-basics/exercise-05/hello_world_window_label_with_props.rb)

Run this command from cloned repo directory:

```
glimmer section-01-gui-basics/exercise-05/hello_world_window_label_with_props.rb
```

Screenshot(s):

![hello world window label with args](/screenshots/section-01-exercise-01-screenshot-03-hello-world-window-label-with-args.png)

#### Section 1 - Exercise 6 Hello, Button!

[section-01-gui-basics/exercise-06/hello_button.rb](/section-01-gui-basics/exercise-06/hello_button.rb)

Run this command from cloned repo directory:

```
glimmer section-01-gui-basics/exercise-06/hello_button.rb
```

Screenshot(s):

![hello button](/screenshots/section-01-exercise-01-screenshot-04-hello-button.png)

![hello button clicked](/screenshots/section-01-exercise-01-screenshot-04-hello-button-clicked.png)

#### Section 1 - Exercise 7 Hello, Layout! with Horizontal Box

[section-01-gui-basics/exercise-07/hello_layout_with_horizontal_box.rb](/section-01-gui-basics/exercise-07/hello_layout_with_horizontal_box.rb)

Run this command from cloned repo directory:

```
glimmer section-01-gui-basics/exercise-07/hello_layout_with_horizontal_box.rb
```

Screenshot(s):

![hello layout with horizontal box](/screenshots/section-01-exercise-01-screenshot-05-hello-layout-with-horizontal-box.png)

#### Section 1 - Exercise 8 Hello, Layout! with Horizontal & Vertical Boxes

[section-01-gui-basics/exercise-08/hello_layout_with_horizontal_and_vertical_boxes.rb](section-01-gui-basics/exercise-08/hello_layout_with_horizontal_and_vertical_boxes.rb)

Run this command from cloned repo directory:

```
glimmer section-01-gui-basics/exercise-08/hello_layout_with_horizontal_and_vertical_boxes.rb
```

Screenshot(s):

![hello layout with horizontal and vertical boxes](/screenshots/section-01-exercise-01-screenshot-06-hello-layout-with-horizontal-and-vertical-boxes.png)

#### Section 1 - Exercise 9 Hello, Layout! with Horizontal & Vertical Boxes (Stretchy)

[section-01-gui-basics/exercise-09/hello_layout_with_horizontal_and_vertical_boxes_stretchy.rb](section-01-gui-basics/exercise-09/hello_layout_with_horizontal_and_vertical_boxes_stretchy.rb)

Run this command from cloned repo directory:

```
glimmer section-01-gui-basics/exercise-09/hello_layout_with_horizontal_and_vertical_boxes_stretchy.rb
```

Screenshot(s):

![hello layout with horizontal and vertical boxes stretchy](/screenshots/section-01-exercise-01-screenshot-07-hello-layout-with-horizontal-and-vertical-boxes-stretchy.png)

#### Section 1 - Exercise 10 Hello, Layout! Form

[section-01-gui-basics/exercise-10/hello_layout_form.rb](section-01-gui-basics/exercise-10/hello_layout_form.rb)

Run this command from cloned repo directory:

```
glimmer section-01-gui-basics/exercise-10/hello_layout_form.rb
```

Screenshot(s):

![hello layout form](/screenshots/section-01-exercise-01-screenshot-08-hello-layout-form.png)

#### Section 1 - Exercise 11 Option Selector

[section-01-gui-basics/exercise-11/option_selector.rb](/section-01-gui-basics/exercise-11/option_selector.rb)

Run this command from cloned repo directory:

```
glimmer section-01-gui-basics/exercise-11/option_selector.rb
```

Screenshot(s):

![option selector screenshot 1](/screenshots/section-02-exercise-09-screenshot-01-option-selector.png)

![option selector screenshot 2](/screenshots/section-02-exercise-09-screenshot-02-option-selector-options-checked.png)

See another version of the Option Selector in Section 2 Exercise 1.

### Section 2 MVC Software Architecture

[section-02-mvc-software-architecture](/section-02-mvc-software-architecture)

#### Section 2 Exercise 01 Option Selector MVC Explicit Controller

[section-02-mvc-software-architecture/exercise-01/option_selector_mvc_explicit_controller.rb](/section-02-mvc-software-architecture/exercise-01/option_selector_mvc_explicit_controller.rb)

Run this command from cloned repo directory:

```
glimmer section-02-mvc-software-architecture/exercise-01/option_selector_mvc_explicit_controller.rb
```

Screenshot(s):

![option selector screenshot 1](/screenshots/section-02-exercise-09-screenshot-01-option-selector.png)

![option selector screenshot 2](/screenshots/section-02-exercise-09-screenshot-02-option-selector-options-checked.png)

See another version of the Option Selector in Section 2 Exercise 02.

#### Section 2 Exercise 02 Option Selector MVC Implicit Controller

[section-02-mvc-software-architecture/exercise-02/option_selector_mvc_implicit_controller.rb](/section-02-mvc-software-architecture/exercise-02/option_selector_mvc_implicit_controller.rb)

Run this command from cloned repo directory:

```
glimmer section-02-mvc-software-architecture/exercise-02/option_selector_mvc_implicit_controller.rb
```

Screenshot(s):

![option selector screenshot 1](/screenshots/section-02-exercise-09-screenshot-01-option-selector.png)

![option selector screenshot 2](/screenshots/section-02-exercise-09-screenshot-02-option-selector-options-checked.png)

See another version of the Option Selector in Section 3 Exercise 01.

### Section 3 MVP & Data-Binding

[section-03-mvp-data-binding](/section-03-mvp-data-binding)

#### Section 3 Exercise 01 Option Selector MVP and Data-Binding Attribute Writers

[section-03-mvp-data-binding/exercise-01/option_selector_mvp_and_data_binding_model_attr_writers.rb](/section-03-mvp-data-binding/exercise-01/option_selector_mvp_and_data_binding_model_attr_writers.rb)

Run this command from cloned repo directory:

```
glimmer section-03-mvp-data-binding/exercise-01/option_selector_mvp_and_data_binding_model_attr_writers.rb
```

Screenshot(s):

![option selector screenshot 1](/screenshots/section-02-exercise-09-screenshot-01-option-selector.png)

![option selector screenshot 2](/screenshots/section-02-exercise-09-screenshot-02-option-selector-options-checked.png)

See another version of the Option Selector in Section 3 Exercise 02.

#### Section 3 Exercise 02 Option Selector MVP and Data-Binding Model Observer

[section-03-mvp-data-binding/exercise-02/option_selector_mvp_and_data_binding_model_observer.rb](/section-03-mvp-data-binding/exercise-02/option_selector_mvp_and_data_binding_model_observer.rb)

Run this command from cloned repo directory:

```
glimmer section-03-mvp-data-binding/exercise-02/option_selector_mvp_and_data_binding_model_observer.rb
```

Screenshot(s):

![option selector screenshot 1](/screenshots/section-02-exercise-09-screenshot-01-option-selector.png)

![option selector screenshot 2](/screenshots/section-02-exercise-09-screenshot-02-option-selector-options-checked.png)

See another version of the Option Selector in Section 3 Exercise 03.

#### Section 3 Exercise 03 Option Selector MVP and Computed Data-Binding

[section-03-mvp-data-binding/exercise-03/option_selector_mvp_and_data_binding_with_computed_by.rb](/section-03-mvp-data-binding/exercise-03/option_selector_mvp_and_data_binding_with_computed_by.rb)

Run this command from cloned repo directory:

```
glimmer section-03-mvp-data-binding/exercise-03/option_selector_mvp_and_data_binding_with_computed_by.rb
```

Screenshot(s):

![option selector screenshot 1](/screenshots/section-02-exercise-09-screenshot-01-option-selector.png)

![option selector screenshot 2](/screenshots/section-02-exercise-09-screenshot-02-option-selector-options-checked.png)

See another version of the Option Selector in Section 3 Exercise 04.

#### Section 3 Exercise 04 Option Selector MVP and Computed Data-Binding with Reset

[section-03-mvp-data-binding/exercise-04/option_selector_mvp_and_data_binding_with_reset.rb](/section-03-mvp-data-binding/exercise-04/option_selector_mvp_and_data_binding_with_reset.rb)

Run this command from cloned repo directory:

```
glimmer section-03-mvp-data-binding/exercise-04/option_selector_mvp_and_data_binding_with_reset.rb
```

Screenshot(s):

![option selector screenshot 1](/screenshots/section-02-exercise-09-screenshot-01-option-selector.png)

![option selector screenshot 2](/screenshots/section-02-exercise-09-screenshot-02-option-selector-options-checked.png)

![option selector with reset](/screenshots/section-03-exercise-13-screenshot-01-option-selector-with-reset.png)

#### Section 3 Exercise 05 Form Table

[section-03-mvp-data-binding/exercise-05/form_table.rb](/section-03-mvp-data-binding/exercise-05/form_table.rb)

Run this command from cloned repo directory:

```
glimmer section-03-mvp-data-binding/exercise-05/form_table.rb
```

Screenshot(s):

Mac | Windows | Linux
----|---------|------
![glimmer-dsl-libui-mac-form-table.png](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-mac-form-table.png) ![glimmer-dsl-libui-mac-form-table-contact-entered.png](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-mac-form-table-contact-entered.png) ![glimmer-dsl-libui-mac-form-table-filtered.png](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-mac-form-table-filtered.png) | ![glimmer-dsl-libui-windows-form-table.png](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-windows-form-table.png) ![glimmer-dsl-libui-windows-form-table-contact-entered.png](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-windows-form-table-contact-entered.png) ![glimmer-dsl-libui-windows-form-table-filtered.png](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-windows-form-table-filtered.png) | ![glimmer-dsl-libui-linux-form-table.png](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-linux-form-table.png) ![glimmer-dsl-libui-linux-form-table-contact-entered.png](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-linux-form-table-contact-entered.png) ![glimmer-dsl-libui-linux-form-table-filtered.png](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-linux-form-table-filtered.png)

#### Section 3 Exercise 06 Dynamic Form

[section-03-mvp-data-binding/exercise-06/dynamic_form.rb](/section-03-mvp-data-binding/exercise-06/dynamic_form.rb)

Run this command from cloned repo directory:

```
glimmer section-03-mvp-data-binding/exercise-06/dynamic_form.rb
```

Screenshot(s):

![dynamic form 1](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-mac-dynamic-form-filled.png)

![dynamic form 2](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-mac-dynamic-form-without-some-fields.png)

### Section 4 Advanced Data-Binding

Note: there are no exercises for this section as it is too advanced for this workshop, so it will only be covered briefly in the presentation slides.

### Section 5 Custom Components (Bonus)

Note: this section is an optional bonus section outside the original plan of the workshop, so it is only covered if workshop participants finished previous exercises early and had extra time.

[section-05-custom-components](/section-05-custom-components)

#### Section 5 Exercise 01 Address Form Custom Control

[section-05-custom-components/exercise-01/address_form_custom_control.rb](/section-05-custom-components/exercise-01/address_form_custom_control.rb)

Run this command from cloned repo directory:

```
glimmer section-05-custom-components/exercise-01/address_form_custom_control.rb
```

Screenshot(s):

![address form custom control](/screenshots/section-05-exercise-01-screenshot-01-address-form-custom-control.png)

Compared to [Method-Based Custom Controls](https://github.com/AndyObtiva/glimmer-dsl-libui#method-based-custom-controls), [Class-Based Custom Controls](https://github.com/AndyObtiva/glimmer-dsl-libui#class-based-custom-components) provide the added benefit of dividing and conquering the complexity of component code into separate Ruby files, which can even be wrapped as [Ruby gems](https://guides.rubygems.org/what-is-a-gem/) for cross-project reuse if needed.

#### Section 5 Exercise 02 User Manager

[section-05-custom-components/exercise-02/user_manager.rb](/section-05-custom-components/exercise-02/user_manager.rb)

Run this command from cloned repo directory:

```
glimmer section-05-custom-components/exercise-02/user_manager.rb
```

Screenshot(s):

![user manager](/screenshots/section-05-exercise-02-screenshot-01-user-manager.png)

![user manager add user](/screenshots/section-05-exercise-02-screenshot-02-user-manager-add-user.png)

![user manager user added](/screenshots/section-05-exercise-02-screenshot-03-user-manager-user-added.png)

![user manager select user](/screenshots/section-05-exercise-02-screenshot-04-user-manager-select-user.png)

![user manager edit user](/screenshots/section-05-exercise-02-screenshot-05-user-manager-edit-user.png)

### Section 6 Scaffolding (Bonus)

Note: this section is an optional bonus section outside the original plan of the workshop, so it is only covered if workshop participants finished previous exercises early and had extra time.

#### Section 6 Exercise 01 Application Scaffolding

[Glimmer DSL for LibUI Application Scaffolding](https://github.com/AndyObtiva/glimmer-dsl-libui#scaffold-application) requires a Git configuration for `user.name` (`git config --global user.name "FirstName LastName"`) and `github.user` (`git config --global github.user githubusername`) as needed by the juwelier Ruby gem used for scaffolding.

Go out of this GitHub repository directory:

```
cd ..
```

Run:

```
gem install glimmer-dsl-libui -v0.12.5
```

Scaffold an application by running:

```
glimmer "scaffold[hello_world]"
```

[section-08-scaffolding/exercise-01/hello_world](/section-08-scaffolding/exercise-01/hello_world)

The following files are generated and reported by the `glimmer` command:

```
Created hello_world/.gitignore
Created hello_world/.ruby-version
Created hello_world/.ruby-gemset
Created hello_world/VERSION
Created hello_world/LICENSE.txt
Created hello_world/Gemfile
Created hello_world/Rakefile
Created hello_world/app/hello_world.rb
Created hello_world/app/hello_world/view/hello_world.rb
Created hello_world/app/hello_world/model/greeting.rb
Created hello_world/icons/windows/Hello World.ico
Created hello_world/icons/macosx/Hello World.icns
Created hello_world/icons/linux/Hello World.png
Created hello_world/app/hello_world/launch.rb
Created hello_world/bin/hello_world
```

They include a basic Hello, World! application with menus and about/preferences dialogs.

Views live under `app/app_name/view` (e.g. `app/hello_world/view`)

Models live under `app/app_name/model` (e.g. `app/hello_world/model`)

The application runs automatically once scaffolding is done.

You can run scaffolded application with this command from cloned repo directory:

```
cd section-06-application-scaffolding/exercise-01/hello_world
glimmer run
```

or

```
cd section-06-application-scaffolding/exercise-01/hello_world
bin/hello_world
```

Screenshot(s):

![application scaffolding 1](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-mac-scaffold-app-initial-screen.png)

![application scaffolding 2](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-mac-scaffold-app-preferences.png)

![application scaffolding 3](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-mac-scaffold-app-changed-greeting.png)

![application scaffolding 4](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-mac-scaffold-app-about.png)

## Hack Day

There will be 2 events associated with this workshop:
- The Workshop: it takes place from 11:15pm-1:15pm
- The Hack Day event: it takes place from 3:45pm-5:45pm

Everyone is welcome to attend the Hack Day event for "How To Build Basic Desktop Applications in Ruby", including Software Developers who are missing the Workshop.

To participate in the Hack Day event, please make sure to [Setup Glimmer DSL for LibUI](#setup-glimmer-dsl-for-libui) beforehand.

Aftewrwards, you may engage in one of the following activities:
- Go through the workshop exercises if you missed the workshop
- Finish the workshop exercises if you attended the workshop, but did not get around to finishing all exercises
- Do the additional exercises that are in the [RubyConf 2023](https://github.com/AndyObtiva/how-to-build-desktop-applications-in-ruby/tree/rubyconf2023) longer version of the workshop
- Build an application that stores its data in memory (in Ruby variables)
- Build an application that stores its data in flat files (e.g. CSV files)
- Build an application that stores its data with a relational database (e.g. SQLite)
- Build a board game or 2D game (e.g. Hangman). This requires advanced knowledge that is available in the [RubyConf 2023](https://github.com/AndyObtiva/how-to-build-desktop-applications-in-ruby/tree/rubyconf2023) longer version of the workshop

I will be availble at the Hack Day event to answer any questions or help with any problems.

Happy hacking!!!

## License

[MIT](LICENSE.txt)

Copyright (c) 2024 Andy Maleh
