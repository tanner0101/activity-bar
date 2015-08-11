# ActivityBar

[![CI Status](http://img.shields.io/travis/Tanner Nelson/ActivityBar.svg?style=flat)](https://travis-ci.org/Tanner Nelson/ActivityBar)
[![Version](https://img.shields.io/cocoapods/v/ActivityBar.svg?style=flat)](http://cocoapods.org/pods/ActivityBar)
[![License](https://img.shields.io/cocoapods/l/ActivityBar.svg?style=flat)](http://cocoapods.org/pods/ActivityBar)
[![Platform](https://img.shields.io/cocoapods/p/ActivityBar.svg?style=flat)](http://cocoapods.org/pods/ActivityBar)

![ActivityBar Animation](http://tanner.xyz/activity-bar/activity-bar.gif)

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

UIKit

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
Start and stop the ActivityBar loading

```swift
self.activityBar.start()
self.activityBar.stop()
```

## Author

Tanner Nelson, tanner@bluebite.com

## License

ActivityBar is available under the MIT license. See the LICENSE file for more info.
