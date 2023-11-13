# How To Build Desktop Applications in Ruby
## RubyConf 2023 Workshop Code Exercises by Andy Maleh

## Setup Glimmer DSL for LibUI

(aka Exercise 0)

1- Follow Presentation Slides at:

Short Link:

[https://bit.ly/rubyconf2023desktop](https://bit.ly/rubyconf2023desktop)

Long Link:

[https://docs.google.com/presentation/d/e/2PACX-1vTzKJ_covbLCfT2Ozse-FGhK8SRRdJ9xrOHQMpzlerhlyj09BlunreTKBWUfoKz3hpE2C5ZEn2LnUpD/pub?start=false&loop=false&delayms=60000&slide=id.g140fe579a5a_0_0](https://docs.google.com/presentation/d/e/2PACX-1vTzKJ_covbLCfT2Ozse-FGhK8SRRdJ9xrOHQMpzlerhlyj09BlunreTKBWUfoKz3hpE2C5ZEn2LnUpD/pub?start=false&loop=false&delayms=60000&slide=id.g140fe579a5a_0_0)

2- Open Terminal (on Mac or Linux) or Command-Prompt/Git-Bash (on Windows)

3- Install gem

Run:

```
gem install glimmer-dsl-libui
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

1. Basic Window
2. Basic Button
3. Basic Scrolling Area

6- Launch 3 advanced examples:

1. Control Gallery
2. Form Table
3. Snake

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

#### Exercise 2 Hello, World! Window with Args

[section-01-gui-basics/exercise-02/hello_world_window_with_args.rb](/section-01-gui-basics/exercise-02/hello_world_window_with_args.rb)

#### Exercise 3 Hello, World! Window with Props

[section-01-gui-basics/exercise-03/hello_world_window_with_props.rb](/section-01-gui-basics/exercise-03/hello_world_window_with_props.rb)

#### Exercise 4 Hello, World! Window + Label with Args

[section-01-gui-basics/exercise-04/hello_world_window_label_with_args.rb](/section-01-gui-basics/exercise-04/hello_world_window_label_with_args.rb)

#### Exercise 5 Hello, World! Window + Label with Props

[section-01-gui-basics/exercise-05/hello_world_window_label_with_props.rb](/section-01-gui-basics/exercise-05/hello_world_window_label_with_props.rb)

#### Exercise 6 Hello, Button!

[section-01-gui-basics/exercise-06/hello_button.rb](/section-01-gui-basics/exercise-06/hello_button.rb)

#### Exercise 7 Hello, Layout! with Horizontal Box

[section-01-gui-basics/exercise-07/hello_layout_with_horizontal_box.rb](/section-01-gui-basics/exercise-07/hello_layout_with_horizontal_box.rb)

#### Exercise 8 Hello, Layout! with Horizontal & Vertical Boxes

[section-01-gui-basics/exercise-08/hello_layout_with_horizontal_and_vertical_boxes.rb](section-01-gui-basics/exercise-08/hello_layout_with_horizontal_and_vertical_boxes.rb)

#### Exercise 9 Option Selector

[section-01-gui-basics/exercise-09/option_selector.rb](/section-01-gui-basics/exercise-09/option_selector.rb)

Run via this command from cloned repo directory:

```
glimmer section-01-gui-basics/exercise-09/option_selector.rb
```

Screenshots:

![option selector screenshot 1](/screenshots/section-02-exercise-09-screenshot-01-option-selector.png)

![option selector screenshot 2](/screenshots/section-02-exercise-09-screenshot-02-option-selector-options-checked.png)

### Section 2 MVC Software Architecture

#### Exercise 10 Option Selector MVC Explicit Controller

[section-02-mvc-software-architecture/exercise-10/option_selector_mvc_explicit_controller.rb](/section-02-mvc-software-architecture/exercise-10/option_selector_mvc_explicit_controller.rb)

#### Exercise 11 Option Selector MVC Implicit Controller

[/Users/andymaleh/code/how-to-build-desktop-applications-in-ruby/section-02-mvc-software-architecture/exercise-11/option_selector_mvc_implicit_controller.rb](//Users/andymaleh/code/how-to-build-desktop-applications-in-ruby/section-02-mvc-software-architecture/exercise-11/option_selector_mvc_implicit_controller.rb)

### Section 3 MVP & Data-Binding

#### Exercise 13 Option Selector with Reset

[section-03-mvp-data-binding/exercise-13/option_selector_mvp_and_data_binding_with_reset.rb](/section-03-mvp-data-binding/exercise-13/option_selector_mvp_and_data_binding_with_reset.rb)

Run via this command from cloned repo directory:

```
glimmer section-03-mvp-data-binding/exercise-13/option_selector_mvp_and_data_binding_with_reset.rb
```

Screenshots:

![option selector screenshot 1](/screenshots/section-02-exercise-09-screenshot-01-option-selector.png)

![option selector screenshot 2](/screenshots/section-02-exercise-09-screenshot-02-option-selector-options-checked.png)

![option selector with reset](/screenshots/section-03-exercise-13-screenshot-01-option-selector-with-reset.png)

#### Exercise 14 Address Form

[section-03-mvp-data-binding/exercise-14/address_form.rb](/section-03-mvp-data-binding/exercise-14/address_form.rb)

Run via this command from cloned repo directory:

```
glimmer section-03-mvp-data-binding/exercise-14/address_form.rb
```

Screenshots:

![address form](/screenshots/section-03-exercise-14-screenshot-02-address-form.png)

#### Exercise 15 Dynamic Form

[section-03-mvp-data-binding/exercise-15/dynamic_form.rb](/section-03-mvp-data-binding/exercise-15/dynamic_form.rb)

Run via this command from cloned repo directory:

```
glimmer section-03-mvp-data-binding/exercise-15/dynamic_form.rb
```

Screenshots:

![dynamic form 1](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-mac-dynamic-form-filled.png)

![dynamic form 2](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-mac-dynamic-form-without-some-fields.png)

#### Exercise 16 Dynamic Address Forms

[section-03-mvp-data-binding/exercise-16/dynamic_address_forms.rb](/section-03-mvp-data-binding/exercise-16/dynamic_address_forms.rb)

Run via this command from cloned repo directory:

```
glimmer section-03-mvp-data-binding/exercise-16/dynamic_address_forms.rb
```

Screenshots:

![dynamic address forms 1](/screenshots/section-03-exercise-16-screenshot-03-dynamic-address-forms.png)

![dynamic address forms 2](/screenshots/section-03-exercise-16-screenshot-04-dynamic-address-forms-2-addresses.png)

![dynamic address forms 3](/screenshots/section-03-exercise-16-screenshot-05-dynamic-address-forms-3-addresses.png)

### Section 4 Advanced Data-Binding

#### Exercise 17 Option Selector with Data-Binding Converters and Hooks

[section-04-advanced-data-binding/exercise-17/option_selector_data_binding_converters_and_hooks.rb](/section-04-advanced-data-binding/exercise-17/option_selector_data_binding_converters_and_hooks.rb)

Run via this command from cloned repo directory:

```
glimmer section-04-advanced-data-binding/exercise-17/option_selector_data_binding_converters_and_hooks.rb
```

Screenshots:

![option selector screenshot 1](/screenshots/section-02-exercise-09-screenshot-01-option-selector.png)

![option selector screenshot 2](/screenshots/section-02-exercise-09-screenshot-02-option-selector-options-checked.png)

![option selector with reset](/screenshots/section-03-exercise-13-screenshot-01-option-selector-with-reset.png)

#### Exercise 18 Option Selector with Computed Data-Binding

[section-04-advanced-data-binding/exercise-18/option_selector_with_computed_data_binding.rb](/section-04-advanced-data-binding/exercise-18/option_selector_with_computed_data_binding.rb)

Run via this command from cloned repo directory:

```
glimmer section-04-advanced-data-binding/exercise-18/option_selector_with_computed_data_binding.rb
```

Screenshots:

![option selector screenshot 1](/screenshots/section-02-exercise-09-screenshot-01-option-selector.png)

![option selector screenshot 2](/screenshots/section-02-exercise-09-screenshot-02-option-selector-options-checked.png)

![option selector with reset](/screenshots/section-03-exercise-13-screenshot-01-option-selector-with-reset.png)

#### Exercise 19 Address Form with Nested Indexed Data-Binding

[section-04-advanced-data-binding/exercise-19/address_form_with_nested_indexed_data_binding.rb](/section-04-advanced-data-binding/exercise-19/address_form_with_nested_indexed_data_binding.rb)

Run via this command from cloned repo directory:

```
glimmer section-04-advanced-data-binding/exercise-19/address_form_with_nested_indexed_data_binding.rb
```

Screenshots:

![address form nested indexed data-binding](/screenshots/section-04-exercise-19-screenshot-01-address-form-with-nested-indexed-data-binding.png)

### Section 5 Area (Canvas) Graphics

#### Exercise 20 Area Shapes (Individual)

1- Line

[section-05-area-canvas-graphics/exercise-20/line.rb](/section-05-area-canvas-graphics/exercise-20/line.rb)

Run via this command from cloned repo directory:

```
glimmer section-05-area-canvas-graphics/exercise-20/line.rb
```

Screenshots:

![area shapes line](/screenshots/section-05-exercise-20-screenshot-01-line.png)

2- Rectangle

[section-05-area-canvas-graphics/exercise-20/rectangle.rb](/section-05-area-canvas-graphics/exercise-20/rectangle.rb)

Run via this command from cloned repo directory:

```
glimmer section-05-area-canvas-graphics/exercise-20/rectangle.rb
```

Screenshots:

![area shapes rectangle](/screenshots/section-05-exercise-20-screenshot-02-rectangle.png)

3- Square

[section-05-area-canvas-graphics/exercise-20/square.rb](/section-05-area-canvas-graphics/exercise-20/square.rb)

Run via this command from cloned repo directory:

```
glimmer section-05-area-canvas-graphics/exercise-20/square.rb
```

Screenshots:

![area shapes square](/screenshots/section-05-exercise-20-screenshot-03-square.png)

4- Arc

[section-05-area-canvas-graphics/exercise-20/arc.rb](/section-05-area-canvas-graphics/exercise-20/arc.rb)

Run via this command from cloned repo directory:

```
glimmer section-05-area-canvas-graphics/exercise-20/arc.rb
```

Screenshots:

![area shapes arc](/screenshots/section-05-exercise-20-screenshot-04-arc.png)

5- Circle

[section-05-area-canvas-graphics/exercise-20/circle.rb](/section-05-area-canvas-graphics/exercise-20/circle.rb)

Run via this command from cloned repo directory:

```
glimmer section-05-area-canvas-graphics/exercise-20/circle.rb
```

Screenshots:

![area shapes circle](/screenshots/section-05-exercise-20-screenshot-05-circle.png)

6- Bezier

[section-05-area-canvas-graphics/exercise-20/bezier.rb](/section-05-area-canvas-graphics/exercise-20/bezier.rb)

Run via this command from cloned repo directory:

```
glimmer section-05-area-canvas-graphics/exercise-20/bezier.rb
```

Screenshots:

![area shapes bezier](/screenshots/section-05-exercise-20-screenshot-06-bezier.png)

7- Figure

[section-05-area-canvas-graphics/exercise-20/figure.rb](/section-05-area-canvas-graphics/exercise-20/figure.rb)

Run via this command from cloned repo directory:

```
glimmer section-05-area-canvas-graphics/exercise-20/figure.rb
```

Screenshots:

![area shapes figure](/screenshots/section-05-exercise-20-screenshot-07-figure.png)

8- Polygon

[section-05-area-canvas-graphics/exercise-20/polygon.rb](/section-05-area-canvas-graphics/exercise-20/polygon.rb)

Run via this command from cloned repo directory:

```
glimmer section-05-area-canvas-graphics/exercise-20/polygon.rb
```

Screenshots:

![area shapes polygon](/screenshots/section-05-exercise-20-screenshot-08-polygon.png)

9- Polyline

[section-05-area-canvas-graphics/exercise-20/polyline.rb](/section-05-area-canvas-graphics/exercise-20/polyline.rb)

Run via this command from cloned repo directory:

```
glimmer section-05-area-canvas-graphics/exercise-20/polyline.rb
```

Screenshots:

![area shapes polyline](/screenshots/section-05-exercise-20-screenshot-09-polyline.png)

10- Polybezier

[section-05-area-canvas-graphics/exercise-20/polybezier.rb](/section-05-area-canvas-graphics/exercise-20/polybezier.rb)

Run via this command from cloned repo directory:

```
glimmer section-05-area-canvas-graphics/exercise-20/polybezier.rb
```

Screenshots:

![area shapes polybezier](/screenshots/section-05-exercise-20-screenshot-10-polybezier.png)

11- Composite Shape

[section-05-area-canvas-graphics/exercise-20/composite_shape.rb](/section-05-area-canvas-graphics/exercise-20/composite_shape.rb)

Run via this command from cloned repo directory:

```
glimmer section-05-area-canvas-graphics/exercise-20/composite_shape.rb
```

Screenshots:

![area shapes composite shape](/screenshots/section-05-exercise-20-screenshot-11-composite-shape.png)

#### Exercise 21 Area Shapes

[section-05-area-canvas-graphics/exercise-21/area_shapes.rb](/section-05-area-canvas-graphics/exercise-21/area_shapes.rb)

Run via this command from cloned repo directory:

```
glimmer section-05-area-canvas-graphics/exercise-21/area_shapes.rb
```

Screenshots:

![area shapes](/screenshots/section-05-exercise-21-screenshot-12-area-shapes.png)

#### Exercise 22 Area Shapes with Selection and Movement

[section-05-area-canvas-graphics/exercise-22/area_shapes_with_selection_and_movement.rb](/section-05-area-canvas-graphics/exercise-22/area_shapes_with_selection_and_movement.rb)

Run via this command from cloned repo directory:

```
glimmer section-05-area-canvas-graphics/exercise-22/area_shapes_with_selection_and_movement.rb
```

Screenshots:

![area shapes](/screenshots/section-05-exercise-21-screenshot-12-area-shapes.png)

![area shapes with selection and movement](/screenshots/section-05-exercise-22-screenshot-12-area-shapes-with-selection-and-movement.png)

### Section 6 Drag & Drop

#### Exercise 23 Shape Coloring

[section-06-drag-and-drop/exercise-23/shape_coloring.rb](/section-06-drag-and-drop/exercise-23/shape_coloring.rb)

Run via this command from cloned repo directory:

```
glimmer section-06-drag-and-drop/exercise-23/shape_coloring.rb
```

Screenshots:

![shape coloring 1](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-mac-shape-coloring.png)

![shape coloring 2](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-mac-shape-coloring-drag-and-drop.png)

![shape coloring 3](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-mac-shape-coloring-color-dialog.png)

### Section 8 Application Scaffolding

#### Exercise 27 Application Scaffolding

Scaffold an application by running:

```
glimmer "scaffold[hello_world]"
```

[section-08-application-scaffolding/exercise-27/hello_world](/section-08-application-scaffolding/exercise-27/hello_world)

Run via this command from cloned repo directory:

```
cd section-08-application-scaffolding/exercise-27/hello_world
glimmer run
```

or

```
cd section-08-application-scaffolding/exercise-27/hello_world
bin/hello_world
```

Screenshots:

![application scaffolding 1](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-mac-scaffold-app-initial-screen.png)

![application scaffolding 2](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-mac-scaffold-app-preferences.png)

![application scaffolding 3](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-mac-scaffold-app-changed-greeting.png)

![application scaffolding 4](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-mac-scaffold-app-about.png)

## License

[MIT](LICENSE.txt)

Copyright (c) 2023 Andy Maleh
