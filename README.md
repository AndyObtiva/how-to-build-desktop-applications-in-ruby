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

## Exercises

Exercises are numbered and organized under sections.

You can run an exercise by simply passing the exercise main Ruby file name as an argument to the `glimmer` command.

Example:

```
glimmer section-01-gui-basics/exercise-09/hello_operations.rb
```

### Section 1 GUI Basics

#### Exercise 1 Empty Window

#### Exercise 2 Hello, World! Window with Args

#### Exercise 3 Hello, World! Window with Props

#### Exercise 4 Hello, World! Window + Label with Args

#### Exercise 5 Hello, World! Window + Label with Props

#### Exercise 6 Hello, Button!

#### Exercise 7 Hello, Layout! with Horizontal Box

#### Exercise 8 Hello, Layout! with Horizontal & Vertical Boxes

#### Exercise 9 Option Selector

[section-01-gui-basics/exercise-09/option_selector.rb](/section-01-gui-basics/exercise-09/option_selector.rb)

Run via this command from cloned repo directory:

```
glimmer section-01-gui-basics/exercise-09/option_selector.rb
```

Screenshots:

![option selector screenshot 1](/screenshots/section-02-exercise-09-screenshot-01-option-selector.png)

![option selector screenshot 2](/screenshots/section-02-exercise-09-screenshot-02-option-selector-options-checked.png)

### Section 5 Area (Canvas) Graphics

#### Exercise 20 Area Shapes

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

### Section 6 Drag & Drop

#### Exercise 23 Shape Coloring

[section-06-drag-and-drop/section-23/shape_coloring.rb](/section-06-drag-and-drop/section-23/shape_coloring.rb)

Run via this command from cloned repo directory:

```
glimmer section-06-drag-and-drop/section-23/shape_coloring.rb
```

Screenshots:

![shape coloring 1](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-mac-shape-coloring.png)

![shape coloring 2](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-mac-shape-coloring-drag-and-drop.png)

![shape coloring 3](https://raw.githubusercontent.com/AndyObtiva/glimmer-dsl-libui/master/images/glimmer-dsl-libui-mac-shape-coloring-color-dialog.png)

## License

[MIT](LICENSE.txt)

Copyright (c) 2023 Andy Maleh
