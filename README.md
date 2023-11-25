# How To Build Desktop Applications in Ruby
## RubyConf 2023 Workshop Code Exercises by Andy Maleh

Please star ("⭐️") this project and [Glimmer DSL for LibUI](https://github.com/AndyObtiva/glimmer-dsl-libui) to save for later reference with regards to Ruby Desktop Development. [Glimmer DSL for LibUI](https://github.com/AndyObtiva/glimmer-dsl-libui) was used in this workshop because it is the simplest and quickest to setup in standard Ruby (aka MRI / CRuby), but the lessons learned are applicable to other [Glimmer GUI DSLs](https://github.com/AndyObtiva/glimmer#glimmer-dsl-comparison-table) (with some syntax variations), including more mature ones like [Glimmer DSL for SWT](https://github.com/AndyObtiva/glimmer-dsl-swt), which might be better for more serious usage after finishing the workshop. If you discover any issues or get stuck while going through the material of this repo, please [report them in GitHub issues](https://github.com/AndyObtiva/how-to-build-desktop-applications-in-ruby/issues) or discuss in the [Glimmer Gitter Chat](https://app.gitter.im/#/room/#AndyObtiva_glimmer:gitter.im).

## Setup Glimmer DSL for LibUI

(aka Exercise 0)

1- Follow Presentation Slides at:

Short Link:

[https://bit.ly/rubyconf2023desktop](https://bit.ly/rubyconf2023desktop)

Long Link:

[https://docs.google.com/presentation/d/e/2PACX-1vTzKJ_covbLCfT2Ozse-FGhK8SRRdJ9xrOHQMpzlerhlyj09BlunreTKBWUfoKz3hpE2C5ZEn2LnUpD/pub?start=false&loop=false&delayms=60000&slide=id.g140fe579a5a_0_0](https://docs.google.com/presentation/d/e/2PACX-1vTzKJ_covbLCfT2Ozse-FGhK8SRRdJ9xrOHQMpzlerhlyj09BlunreTKBWUfoKz3hpE2C5ZEn2LnUpD/pub?start=false&loop=false&delayms=60000&slide=id.g140fe579a5a_0_0)

2- Open Terminal (on Mac or Linux) or Command-Prompt/Git-Bash (on Windows) [do not use WSL or PowerShell]

3- Install [glimmer-dsl-libui](https://github.com/AndyObtiva/glimmer-dsl-libui) gem

Run:

```
gem install glimmer-dsl-libui -v0.11.4
```

4- Load Glimmer Meta-Example to test gem

Run:

```
glimmer examples
```

You should see the Glimmer Meta-Example (the example of examples).

Mac | Windows | Linux
----|---------|------
![glimmer-dsl-libui-mac-meta-example.png](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-mac-meta-example.png) | ![glimmer-dsl-libui-windows-meta-example.png](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-windows-meta-example.png) | ![glimmer-dsl-libui-linux-meta-example.png](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-linux-meta-example.png)

5- Launch 3 basic examples:

[Basic Window](https://github.com/AndyObtiva/glimmer-dsl-libui/blob/master/docs/examples/GLIMMER-DSL-LIBUI-BASIC-EXAMPLES.md#basic-window)

Mac | Windows | Linux
----|---------|------
![glimmer-dsl-libui-mac-basic-window.png](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-mac-basic-window.png) | ![glimmer-dsl-libui-windows-basic-window.png](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-windows-basic-window.png) | ![glimmer-dsl-libui-linux-basic-window.png](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-linux-basic-window.png)

[Basic Button](https://github.com/AndyObtiva/glimmer-dsl-libui/blob/master/docs/examples/GLIMMER-DSL-LIBUI-BASIC-EXAMPLES.md#basic-button)

Mac | Windows | Linux
----|---------|------
![glimmer-dsl-libui-mac-basic-button.png](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-mac-basic-button.png) ![glimmer-dsl-libui-mac-basic-button-msg-box.png](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-mac-basic-button-msg-box.png) | ![glimmer-dsl-libui-windows-basic-button.png](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-windows-basic-button.png) ![glimmer-dsl-libui-windows-basic-button-msg-box.png](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-windows-basic-button-msg-box.png) | ![glimmer-dsl-libui-linux-basic-button.png](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-linux-basic-button.png) ![glimmer-dsl-libui-linux-basic-button-msg-box.png](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-linux-basic-button-msg-box.png)

[Basic Scrolling Area](https://github.com/AndyObtiva/glimmer-dsl-libui/blob/master/docs/examples/GLIMMER-DSL-LIBUI-BASIC-EXAMPLES.md#basic-scrolling-area)

Mac | Windows | Linux
----|---------|------
![glimmer-dsl-libui-mac-dynamic-area.png](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-mac-basic-scrolling-area.png) ![glimmer-dsl-libui-mac-dynamic-area-updated.png](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-mac-basic-scrolling-area-scrolled.png) | ![glimmer-dsl-libui-windows-dynamic-area.png](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-windows-basic-scrolling-area.png) ![glimmer-dsl-libui-windows-dynamic-area-updated.png](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-windows-basic-scrolling-area-scrolled.png) | ![glimmer-dsl-libui-linux-dynamic-area.png](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-linux-basic-scrolling-area.png) ![glimmer-dsl-libui-linux-dynamic-area-updated.png](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-linux-basic-scrolling-area-scrolled.png)

6- Launch 3 advanced examples:

[Control Gallery](https://github.com/AndyObtiva/glimmer-dsl-libui/blob/master/docs/examples/GLIMMER-DSL-LIBUI-ADVANCED-EXAMPLES.md#control-gallery)

Mac | Windows | Linux
----|---------|------
![glimmer-dsl-libui-mac-control-gallery.png](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-mac-control-gallery.png) | ![glimmer-dsl-libui-windows-control-gallery.png](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-windows-control-gallery.png) | ![glimmer-dsl-libui-linux-control-gallery.png](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-linux-control-gallery.png)

[Form Table](https://github.com/AndyObtiva/glimmer-dsl-libui/blob/master/docs/examples/GLIMMER-DSL-LIBUI-ADVANCED-EXAMPLES.md#form-table)

Mac | Windows | Linux
----|---------|------
![glimmer-dsl-libui-mac-form-table.png](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-mac-form-table.png) ![glimmer-dsl-libui-mac-form-table-contact-entered.png](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-mac-form-table-contact-entered.png) ![glimmer-dsl-libui-mac-form-table-filtered.png](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-mac-form-table-filtered.png) | ![glimmer-dsl-libui-windows-form-table.png](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-windows-form-table.png) ![glimmer-dsl-libui-windows-form-table-contact-entered.png](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-windows-form-table-contact-entered.png) ![glimmer-dsl-libui-windows-form-table-filtered.png](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-windows-form-table-filtered.png) | ![glimmer-dsl-libui-linux-form-table.png](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-linux-form-table.png) ![glimmer-dsl-libui-linux-form-table-contact-entered.png](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-linux-form-table-contact-entered.png) ![glimmer-dsl-libui-linux-form-table-filtered.png](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-linux-form-table-filtered.png)

[Snake](https://github.com/AndyObtiva/glimmer-dsl-libui/blob/master/docs/examples/GLIMMER-DSL-LIBUI-ADVANCED-EXAMPLES.md#snake)

Mac | Windows | Linux
----|---------|------
![glimmer-dsl-libui-mac-snake.png](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-mac-snake.png) ![glimmer-dsl-libui-mac-snake-game-over.png](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-mac-snake-game-over.png) | ![glimmer-dsl-libui-windows-snake.png](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-windows-snake.png) ![glimmer-dsl-libui-windows-snake-game-over.png](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-windows-snake-game-over.png) | ![glimmer-dsl-libui-linux-snake.png](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-linux-snake.png) ![glimmer-dsl-libui-linux-snake-game-over.png](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-linux-snake-game-over.png)

## Setup Workshop GitHub Repository

```
git clone https://github.com/AndyObtiva/how-to-build-desktop-applications-in-ruby.git
```

```
cd how-to-build-desktop-applications-in-ruby
```

```
bundle
```

## Resources

- [How To Build Desktop Applications in Ruby Workshop Presentation Slides](https://docs.google.com/presentation/d/e/2PACX-1vTzKJ_covbLCfT2Ozse-FGhK8SRRdJ9xrOHQMpzlerhlyj09BlunreTKBWUfoKz3hpE2C5ZEn2LnUpD/pub?start=false&loop=false&delayms=60000&slide=id.g140fe579a5a_0_0)
- [Glimmer DSL for LibUI](https://github.com/AndyObtiva/glimmer-dsl-libui)
- [Glimmer DSL for LibUI Supported Keywords](https://github.com/AndyObtiva/glimmer-dsl-libui#supported-keywords)

## Exercises

Exercises are numbered and organized under sections.

You can run an exercise by simply passing the exercise main Ruby file name as an argument to the `glimmer` command.

Example:

```
glimmer section-01-gui-basics/exercise-09/hello_operations.rb
```

### Section 1 GUI Basics

#### Exercise 1 Empty Window

[section-01-gui-basics/exercise-01/empty_window.rb](/section-01-gui-basics/exercise-01/empty_window.rb)

Run this command from cloned repo directory:

```
glimmer section-01-gui-basics/exercise-01/empty_window.rb
```

Screenshot(s):

![empty window](/screenshots/section-01-exercise-01-screenshot-01-empty-window.png)

#### Exercise 2 Hello, World! Window with Args

[section-01-gui-basics/exercise-02/hello_world_window_with_args.rb](/section-01-gui-basics/exercise-02/hello_world_window_with_args.rb)

Run this command from cloned repo directory:

```
glimmer section-01-gui-basics/exercise-02/hello_world_window_with_args.rb
```

Screenshot(s):

![hello world window with args](/screenshots/section-01-exercise-01-screenshot-02-hello-world-window-with-args.png)

#### Exercise 3 Hello, World! Window with Props

[section-01-gui-basics/exercise-03/hello_world_window_with_props.rb](/section-01-gui-basics/exercise-03/hello_world_window_with_props.rb)

Run this command from cloned repo directory:

```
glimmer section-01-gui-basics/exercise-03/hello_world_window_with_props.rb
```

Screenshot(s):

![hello world window with props](/screenshots/section-01-exercise-01-screenshot-02-hello-world-window-with-args.png)

#### Exercise 4 Hello, World! Window + Label with Args

[section-01-gui-basics/exercise-04/hello_world_window_label_with_args.rb](/section-01-gui-basics/exercise-04/hello_world_window_label_with_args.rb)

Run this command from cloned repo directory:

```
glimmer section-01-gui-basics/exercise-04/hello_world_window_label_with_args.rb
```

Screenshot(s):

![hello world window label with args](/screenshots/section-01-exercise-01-screenshot-03-hello-world-window-label-with-args.png)

#### Exercise 5 Hello, World! Window + Label with Props

[section-01-gui-basics/exercise-05/hello_world_window_label_with_props.rb](/section-01-gui-basics/exercise-05/hello_world_window_label_with_props.rb)

Run this command from cloned repo directory:

```
glimmer section-01-gui-basics/exercise-05/hello_world_window_label_with_props.rb
```

Screenshot(s):

![hello world window label with args](/screenshots/section-01-exercise-01-screenshot-03-hello-world-window-label-with-args.png)

#### Exercise 6 Hello, Button!

[section-01-gui-basics/exercise-06/hello_button.rb](/section-01-gui-basics/exercise-06/hello_button.rb)

Run this command from cloned repo directory:

```
glimmer section-01-gui-basics/exercise-06/hello_button.rb
```

Screenshot(s):

![hello button](/screenshots/section-01-exercise-01-screenshot-04-hello-button.png)

![hello button clicked](/screenshots/section-01-exercise-01-screenshot-04-hello-button-clicked.png)

#### Exercise 7 Hello, Layout! with Horizontal Box

[section-01-gui-basics/exercise-07/hello_layout_with_horizontal_box.rb](/section-01-gui-basics/exercise-07/hello_layout_with_horizontal_box.rb)

Run this command from cloned repo directory:

```
glimmer section-01-gui-basics/exercise-07/hello_layout_with_horizontal_box.rb
```

Screenshot(s):

![hello layout with horizontal box](/screenshots/section-01-exercise-01-screenshot-05-hello-layout-with-horizontal-box.png)

#### Exercise 8 Hello, Layout! with Horizontal & Vertical Boxes

[section-01-gui-basics/exercise-08/hello_layout_with_horizontal_and_vertical_boxes.rb](section-01-gui-basics/exercise-08/hello_layout_with_horizontal_and_vertical_boxes.rb)

Run this command from cloned repo directory:

```
glimmer section-01-gui-basics/exercise-08/hello_layout_with_horizontal_and_vertical_boxes.rb
```

Screenshot(s):

![hello layout with horizontal and vertical boxes](/screenshots/section-01-exercise-01-screenshot-06-hello-layout-with-horizontal-and-vertical-boxes.png)

#### Exercise 9 Option Selector

[section-01-gui-basics/exercise-09/option_selector.rb](/section-01-gui-basics/exercise-09/option_selector.rb)

Run this command from cloned repo directory:

```
glimmer section-01-gui-basics/exercise-09/option_selector.rb
```

Screenshot(s):

![option selector screenshot 1](/screenshots/section-02-exercise-09-screenshot-01-option-selector.png)

![option selector screenshot 2](/screenshots/section-02-exercise-09-screenshot-02-option-selector-options-checked.png)

### Section 2 MVC Software Architecture

#### Exercise 10 Option Selector MVC Explicit Controller

[section-02-mvc-software-architecture/exercise-10/option_selector_mvc_explicit_controller.rb](/section-02-mvc-software-architecture/exercise-10/option_selector_mvc_explicit_controller.rb)

Run this command from cloned repo directory:

```
glimmer section-02-mvc-software-architecture/exercise-10/option_selector_mvc_explicit_controller.rb
```

Screenshot(s):

![option selector screenshot 1](/screenshots/section-02-exercise-09-screenshot-01-option-selector.png)

![option selector screenshot 2](/screenshots/section-02-exercise-09-screenshot-02-option-selector-options-checked.png)

#### Exercise 11 Option Selector MVC Implicit Controller

[section-02-mvc-software-architecture/exercise-11/option_selector_mvc_implicit_controller.rb](/section-02-mvc-software-architecture/exercise-11/option_selector_mvc_implicit_controller.rb)

Run this command from cloned repo directory:

```
glimmer section-02-mvc-software-architecture/exercise-11/option_selector_mvc_implicit_controller.rb
```

Screenshot(s):

![option selector screenshot 1](/screenshots/section-02-exercise-09-screenshot-01-option-selector.png)

![option selector screenshot 2](/screenshots/section-02-exercise-09-screenshot-02-option-selector-options-checked.png)

### Section 3 MVP & Data-Binding

#### Exercise 12 Option Selector MVP and Data-Binding

[section-03-mvp-data-binding/exercise-12/option_selector_mvp_and_data_binding.rb](/section-03-mvp-data-binding/exercise-12/option_selector_mvp_and_data_binding.rb)

Run this command from cloned repo directory:

```
glimmer section-03-mvp-data-binding/exercise-12/option_selector_mvp_and_data_binding.rb
```

Screenshot(s):

![option selector screenshot 1](/screenshots/section-02-exercise-09-screenshot-01-option-selector.png)

![option selector screenshot 2](/screenshots/section-02-exercise-09-screenshot-02-option-selector-options-checked.png)

#### Exercise 13 Option Selector with Reset

[section-03-mvp-data-binding/exercise-13/option_selector_mvp_and_data_binding_with_reset.rb](/section-03-mvp-data-binding/exercise-13/option_selector_mvp_and_data_binding_with_reset.rb)

Run this command from cloned repo directory:

```
glimmer section-03-mvp-data-binding/exercise-13/option_selector_mvp_and_data_binding_with_reset.rb
```

Screenshot(s):

![option selector screenshot 1](/screenshots/section-02-exercise-09-screenshot-01-option-selector.png)

![option selector screenshot 2](/screenshots/section-02-exercise-09-screenshot-02-option-selector-options-checked.png)

![option selector with reset](/screenshots/section-03-exercise-13-screenshot-01-option-selector-with-reset.png)

#### Exercise 14 Address Form

[section-03-mvp-data-binding/exercise-14/address_form.rb](/section-03-mvp-data-binding/exercise-14/address_form.rb)

Run this command from cloned repo directory:

```
glimmer section-03-mvp-data-binding/exercise-14/address_form.rb
```

Screenshot(s):

![address form](/screenshots/section-03-exercise-14-screenshot-02-address-form.png)

#### Exercise 14b Form Table

[section-03-mvp-data-binding/exercise-14b/form_table.rb](/section-03-mvp-data-binding/exercise-14b/form_table.rb)

Run this command from cloned repo directory:

```
glimmer section-03-mvp-data-binding/exercise-14b/form_table.rb
```

Screenshot(s):

![address form](/screenshots/section-03-exercise-14-screenshot-02-address-form.png)

#### Exercise 15 Dynamic Form

[section-03-mvp-data-binding/exercise-15/dynamic_form.rb](/section-03-mvp-data-binding/exercise-15/dynamic_form.rb)

Run this command from cloned repo directory:

```
glimmer section-03-mvp-data-binding/exercise-15/dynamic_form.rb
```

Screenshot(s):

![dynamic form 1](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-mac-dynamic-form-filled.png)

![dynamic form 2](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-mac-dynamic-form-without-some-fields.png)

#### Exercise 16 Dynamic Address Forms

[section-03-mvp-data-binding/exercise-16/dynamic_address_forms.rb](/section-03-mvp-data-binding/exercise-16/dynamic_address_forms.rb)

Run this command from cloned repo directory:

```
glimmer section-03-mvp-data-binding/exercise-16/dynamic_address_forms.rb
```

Screenshot(s):

![dynamic address forms 1](/screenshots/section-03-exercise-16-screenshot-03-dynamic-address-forms.png)

![dynamic address forms 2](/screenshots/section-03-exercise-16-screenshot-04-dynamic-address-forms-2-addresses.png)

![dynamic address forms 3](/screenshots/section-03-exercise-16-screenshot-05-dynamic-address-forms-3-addresses.png)

### Section 4 Advanced Data-Binding

#### Exercise 17 Option Selector with Data-Binding Converters and Hooks

[section-04-advanced-data-binding/exercise-17/option_selector_data_binding_converters_and_hooks.rb](/section-04-advanced-data-binding/exercise-17/option_selector_data_binding_converters_and_hooks.rb)

Run this command from cloned repo directory:

```
glimmer section-04-advanced-data-binding/exercise-17/option_selector_data_binding_converters_and_hooks.rb
```

Screenshot(s):

![option selector screenshot 1](/screenshots/section-02-exercise-09-screenshot-01-option-selector.png)

![option selector screenshot 2](/screenshots/section-02-exercise-09-screenshot-02-option-selector-options-checked.png)

![option selector with reset](/screenshots/section-03-exercise-13-screenshot-01-option-selector-with-reset.png)

#### Exercise 18 Option Selector with Computed Data-Binding

[section-04-advanced-data-binding/exercise-18/option_selector_with_computed_data_binding.rb](/section-04-advanced-data-binding/exercise-18/option_selector_with_computed_data_binding.rb)

Run this command from cloned repo directory:

```
glimmer section-04-advanced-data-binding/exercise-18/option_selector_with_computed_data_binding.rb
```

Screenshot(s):

![option selector screenshot 1](/screenshots/section-02-exercise-09-screenshot-01-option-selector.png)

![option selector screenshot 2](/screenshots/section-02-exercise-09-screenshot-02-option-selector-options-checked.png)

![option selector with reset](/screenshots/section-03-exercise-13-screenshot-01-option-selector-with-reset.png)

#### Exercise 19 Address Form with Nested Indexed Data-Binding

[section-04-advanced-data-binding/exercise-19/address_form_with_nested_indexed_data_binding.rb](/section-04-advanced-data-binding/exercise-19/address_form_with_nested_indexed_data_binding.rb)

Run this command from cloned repo directory:

```
glimmer section-04-advanced-data-binding/exercise-19/address_form_with_nested_indexed_data_binding.rb
```

Screenshot(s):

![address form nested indexed data-binding](/screenshots/section-04-exercise-19-screenshot-01-address-form-with-nested-indexed-data-binding.png)

### Section 5 Area (Canvas) Graphics

#### Exercise 20 Area Shapes (Individual)

1- Line

[section-05-area-canvas-graphics/exercise-20/line.rb](/section-05-area-canvas-graphics/exercise-20/line.rb)

Run this command from cloned repo directory:

```
glimmer section-05-area-canvas-graphics/exercise-20/line.rb
```

Screenshot(s):

![area shapes line](/screenshots/section-05-exercise-20-screenshot-01-line.png)

2- Rectangle

[section-05-area-canvas-graphics/exercise-20/rectangle.rb](/section-05-area-canvas-graphics/exercise-20/rectangle.rb)

Run this command from cloned repo directory:

```
glimmer section-05-area-canvas-graphics/exercise-20/rectangle.rb
```

Screenshot(s):

![area shapes rectangle](/screenshots/section-05-exercise-20-screenshot-02-rectangle.png)

3- Square

[section-05-area-canvas-graphics/exercise-20/square.rb](/section-05-area-canvas-graphics/exercise-20/square.rb)

Run this command from cloned repo directory:

```
glimmer section-05-area-canvas-graphics/exercise-20/square.rb
```

Screenshot(s):

![area shapes square](/screenshots/section-05-exercise-20-screenshot-03-square.png)

4- Arc

[section-05-area-canvas-graphics/exercise-20/arc.rb](/section-05-area-canvas-graphics/exercise-20/arc.rb)

Run this command from cloned repo directory:

```
glimmer section-05-area-canvas-graphics/exercise-20/arc.rb
```

Screenshot(s):

![area shapes arc](/screenshots/section-05-exercise-20-screenshot-04-arc.png)

5- Circle

[section-05-area-canvas-graphics/exercise-20/circle.rb](/section-05-area-canvas-graphics/exercise-20/circle.rb)

Run this command from cloned repo directory:

```
glimmer section-05-area-canvas-graphics/exercise-20/circle.rb
```

Screenshot(s):

![area shapes circle](/screenshots/section-05-exercise-20-screenshot-05-circle.png)

6- Bezier

[section-05-area-canvas-graphics/exercise-20/bezier.rb](/section-05-area-canvas-graphics/exercise-20/bezier.rb)

Run this command from cloned repo directory:

```
glimmer section-05-area-canvas-graphics/exercise-20/bezier.rb
```

Screenshot(s):

![area shapes bezier](/screenshots/section-05-exercise-20-screenshot-06-bezier.png)

7- Figure

[section-05-area-canvas-graphics/exercise-20/figure.rb](/section-05-area-canvas-graphics/exercise-20/figure.rb)

Run this command from cloned repo directory:

```
glimmer section-05-area-canvas-graphics/exercise-20/figure.rb
```

Screenshot(s):

![area shapes figure](/screenshots/section-05-exercise-20-screenshot-07-figure.png)

8- Polygon

[section-05-area-canvas-graphics/exercise-20/polygon.rb](/section-05-area-canvas-graphics/exercise-20/polygon.rb)

Run this command from cloned repo directory:

```
glimmer section-05-area-canvas-graphics/exercise-20/polygon.rb
```

Screenshot(s):

![area shapes polygon](/screenshots/section-05-exercise-20-screenshot-08-polygon.png)

9- Polyline

[section-05-area-canvas-graphics/exercise-20/polyline.rb](/section-05-area-canvas-graphics/exercise-20/polyline.rb)

Run this command from cloned repo directory:

```
glimmer section-05-area-canvas-graphics/exercise-20/polyline.rb
```

Screenshot(s):

![area shapes polyline](/screenshots/section-05-exercise-20-screenshot-09-polyline.png)

10- Polybezier

[section-05-area-canvas-graphics/exercise-20/polybezier.rb](/section-05-area-canvas-graphics/exercise-20/polybezier.rb)

Run this command from cloned repo directory:

```
glimmer section-05-area-canvas-graphics/exercise-20/polybezier.rb
```

Screenshot(s):

![area shapes polybezier](/screenshots/section-05-exercise-20-screenshot-10-polybezier.png)

11- Composite Shape

[section-05-area-canvas-graphics/exercise-20/composite_shape.rb](/section-05-area-canvas-graphics/exercise-20/composite_shape.rb)

Run this command from cloned repo directory:

```
glimmer section-05-area-canvas-graphics/exercise-20/composite_shape.rb
```

Screenshot(s):

![area shapes composite shape](/screenshots/section-05-exercise-20-screenshot-11-composite-shape.png)

#### Exercise 21 Area Shapes

[section-05-area-canvas-graphics/exercise-21/area_shapes.rb](/section-05-area-canvas-graphics/exercise-21/area_shapes.rb)

Run this command from cloned repo directory:

```
glimmer section-05-area-canvas-graphics/exercise-21/area_shapes.rb
```

Screenshot(s):

![area shapes](/screenshots/section-05-exercise-21-screenshot-12-area-shapes.png)

#### Exercise 22 Area Shapes with Selection and Movement

[section-05-area-canvas-graphics/exercise-22/area_shapes_with_selection_and_movement.rb](/section-05-area-canvas-graphics/exercise-22/area_shapes_with_selection_and_movement.rb)

Run this command from cloned repo directory:

```
glimmer section-05-area-canvas-graphics/exercise-22/area_shapes_with_selection_and_movement.rb
```

Screenshot(s):

![area shapes](/screenshots/section-05-exercise-22-screenshot-13-area-shapes-with-selection-and-movement.png)

![area shapes with selection and movement](/screenshots/section-05-exercise-22-screenshot-14-area-shapes-with-selection-and-movement.png)

### Section 6 Drag & Drop

#### Exercise 23 Shape Coloring

[section-06-drag-and-drop/exercise-23/shape_coloring.rb](/section-06-drag-and-drop/exercise-23/shape_coloring.rb)

Run this command from cloned repo directory:

```
glimmer section-06-drag-and-drop/exercise-23/shape_coloring.rb
```

Screenshot(s):

![shape coloring 1](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-mac-shape-coloring.png)

![shape coloring 2](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-mac-shape-coloring-drag-and-drop.png)

![shape coloring 3](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-mac-shape-coloring-color-dialog.png)

### Section 7 Custom Components

#### Exercise 24 Address Form Custom Control

[section-07-custom-components/exercise-24/address_form_custom_control.rb](/section-07-custom-components/exercise-24/address_form_custom_control.rb)

Run this command from cloned repo directory:

```
glimmer section-07-custom-components/exercise-24/address_form_custom_control.rb
```

Screenshot(s):

![address form custom control](/screenshots/section-07-exercise-24-screenshot-01-address-form-custom-control.png)

#### Exercise 25 User Manager

[section-07-custom-components/exercise-25/user_manager.rb](/section-07-custom-components/exercise-25/user_manager.rb)

Run this command from cloned repo directory:

```
glimmer section-07-custom-components/exercise-25/user_manager.rb
```

Screenshot(s):

![user manager](/screenshots/section-07-exercise-24-screenshot-02-user-manager.png)

![user manager add user](/screenshots/section-07-exercise-24-screenshot-03-user-manager-add-user.png)

![user manager user added](/screenshots/section-07-exercise-24-screenshot-04-user-manager-user-added.png)

![user manager select user](/screenshots/section-07-exercise-24-screenshot-05-user-manager-select-user.png)

![user manager edit user](/screenshots/section-07-exercise-24-screenshot-06-user-manager-edit-user.png)

#### Exercise 26 Basic Custom Shape

[section-07-custom-components/exercise-26/basic_custom_shape.rb](/section-07-custom-components/exercise-26/basic_custom_shape.rb)

Run this command from cloned repo directory:

```
glimmer section-07-custom-components/exercise-26/basic_custom_shape.rb
```

Screenshot(s):

![basic custom shape](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-mac-basic-composite-shape.gif)

### Section 8 Application Scaffolding

#### Exercise 27 Application Scaffolding

Scaffold an application by running:

```
glimmer "scaffold[hello_world]"
```

[section-08-application-scaffolding/exercise-27/hello_world](/section-08-application-scaffolding/exercise-27/hello_world)

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
cd section-08-application-scaffolding/exercise-27/hello_world
glimmer run
```

or

```
cd section-08-application-scaffolding/exercise-27/hello_world
bin/hello_world
```

Screenshot(s):

![application scaffolding 1](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-mac-scaffold-app-initial-screen.png)

![application scaffolding 2](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-mac-scaffold-app-preferences.png)

![application scaffolding 3](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-mac-scaffold-app-changed-greeting.png)

![application scaffolding 4](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-mac-scaffold-app-about.png)

## License

[MIT](LICENSE.txt)

Copyright (c) 2023 Andy Maleh
