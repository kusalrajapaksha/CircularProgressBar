# CircularProgressBar
By **Kusal Rajapaksha**

A customizable circular progress bar is implemented in SwiftUI. This progress bar allows you to visualize the completion progress with style.


## Features
* **Customizable**: Adjust line width, colors, and other visual properties to match your design.
* **Dynamic Progress**: Easily update the progress value to reflect real-time completion.
* **Responsive**: The progress bar scales to fit the available space, making it suitable for various screen sizes.

## Usage
1. Copy the CircularProgressBar.swift file into your Xcode project.
2. Create an instance of CircularProgressBar in your SwiftUI view, providing a binding to the progress value.

```
import SwiftUI

struct ContentView: View {
    @State private var progress: Double = 0.5

    var body: some View {
        CircularProgressBar(progress: $progress)
            .padding()
    }
}
```

## Customization
You can customize the appearance of the progress bar using the available parameters:

* lineWidth: Adjust the thickness of the progress bar.
* lineColor: Set the color of the progress bar.
* backgroundLineColor: Define the color of the background circle.
* showProgress: Toggle to show or hide the progress text.
* fontSize: Adjust the font size of the progress text.
* fontColor: Set the color of the progress text.

```
CircularProgressBar(
    progress: $progress,
    lineWidth: 20,
    lineColor: .pink,
    backgroundLineColor: .pink.opacity(0.5),
    showProgress: true,
    fontSize: 50,
    fontColor: .black
)
```
## Demonstration

![SimulatorScreenRecording-iPhone15Pro-2024-01-19at14 57 38-ezgif com-video-to-gif-converter](https://github.com/kusalrajapaksha/CircularProgressBar/assets/72430450/9cae6fe8-45df-47c7-80d4-d2a7562e3255)


Thanks to SwiftUI for making it easy to create beautiful and responsive interfaces.
Feel free to customize the content and add more sections based on your project's specific details. Include any necessary images or GIFs to showcase the progress bar in action.
