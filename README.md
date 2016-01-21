# ActivityBar

[![CI Status](http://img.shields.io/travis/Tanner Nelson/ActivityBar.svg?style=flat)](https://travis-ci.org/Tanner Nelson/ActivityBar)
[![Version](https://img.shields.io/cocoapods/v/ActivityBar.svg?style=flat)](http://cocoapods.org/pods/ActivityBar)
[![License](https://img.shields.io/cocoapods/l/ActivityBar.svg?style=flat)](http://cocoapods.org/pods/ActivityBar)
[![Platform](https://img.shields.io/cocoapods/p/ActivityBar.svg?style=flat)](http://cocoapods.org/pods/ActivityBar)

An iMessage UIProgressBar-style view for showing ogoing activity.

![ActivityBar Animation](https://cloud.githubusercontent.com/assets/1342803/12491558/c7e82b1a-c049-11e5-9dd6-a4ff185d32c6.gif)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

ActivityBar is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "ActivityBar"
```

## Getting Started

Add the ActivityBar to your view controller.

```swift
import UIKit
import ActivityBar

class ViewController: UIViewController {
    var activityBar: ActivityBar!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.activityBar = ActivityBar.addTo(self)
    }
}
```

If there is a NavigationBar present, ActivityBar, will attach itself to the NavigationBar.
Otherwise, it will be placed directly underneath the Status Bar.

### Color

Change the color of the ActivityBar at any time.
By default, ActivityBar will be the tintColor of your application.

```swift
self.activityBar.color = UIColor.greenColor()
```

### Animation
Start and stop the ActivityBar's indefinite animation.

```swift
self.activityBar.start()
self.activityBar.stop()
```

### Progress
Set the ActivityBar to display progress between 0% and 100%. 

```swift
//displays the ActivityBar and animates to 75%
self.activityBar.progress = 0.75
```

The ActivityBar will animate between different states of progress. To hide the ActivityBar, set the progress property to `nil`. 

```swift
//hides the ActivityBar
self.activityBar.progress = nil
```

Note: You can call `start()` at any point without first setting `progress` to `nil`.

## Author

Tanner Nelson, tanner@bluebite.com

## License

ActivityBar is available under the MIT license. See the LICENSE file for more info.
