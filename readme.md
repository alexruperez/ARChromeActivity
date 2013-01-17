# ARChromeActivity

`ARChromeActivity` is a `UIActivity` subclass that provides an "Open in Chrome" action to a `UIActivityViewController`.

Forked by Alex Rupérez who adds i18n multilingual support and other internal improvements. 

![ARChromeActivity screenshot](https://raw.github.com/alexruperez/ARChromeActivity/master/screenshot.png "ARChromeActivity screenshot")

## Requirements

- As `UIActivity` is iOS 6 only, so is the subclass.
- This project uses ARC. If you want to use it in a non ARC project, you must add the `-fobjc-arc` compiler flag to ARChromeActivity.m in Target Settings > Build Phases > Compile Sources.

## Installation

Add the `ARChromeActivity` subfolder to your project. There are no required libraries other than `UIKit`.

## Usage

*(See example Xcode project)*

Simply `alloc`/`init` an instance of `ARChromeActivity` and pass that object into the applicationActivities array when creating a `UIActivityViewController`.

```objectivec
NSURL *URL = [NSURL URLWithString:@"http://github.com/alexruperez"];
ARChromeActivity *activity = [[ARChromeActivity alloc] init];
UIActivityViewController *activityViewController = [[UIActivityViewController alloc] initWithActivityItems:@[URL] applicationActivities:@[activity]];
[self presentViewController:activityViewController animated:YES completion:nil];
```

Note that you can include the activity in any UIActivityViewController and it will only be shown to the user if there is a URL in the activity items.

Highly recommended usage with [RDActivityViewController](https://github.com/rdougan/RDActivityViewController).
