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

Code:

[section-01-gui-basics/exercise-09/option_selector.rb](/section-01-gui-basics/exercise-09/option_selector.rb)

Run via this command from cloned repo directory:

```
glimmer section-01-gui-basics/exercise-09/option_selector.rb
```

Screenshots:

![option selector screenshot 1](/screenshots/section-02-exercise-09-screenshot-01-option-selector.png)

![option selector screenshot 2](/screenshots/section-02-exercise-09-screenshot-02-option-selector-options-checked.png)

## License

[MIT](LICENSE.txt)

Copyright (c) 2023 Andy Maleh
