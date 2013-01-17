# ARChromeActivity

#### `ARChromeActivity` is a `UIActivity` subclass that provides an "Open in Chrome" action to a `UIActivityViewController`.
Forked by Alex Rupérez who adds i18n multilingual support and other internal improvements. 

![Demo screenshot](https://raw.github.com/alexruperez/ARChromeActivity/master/screenshot.png)

## Requirements
- As `UIActivity` is iOS 6 only, so is the subclass.
- This project uses ARC. If you want to use it in a non ARC project, you must add the `-fobjc-arc` compiler flag to ARChromeActivity.m in Target Settings > Build Phases > Compile Sources.

## Installation
Add the `ARChromeActivity` subfolder to your project. There are no required libraries other than `UIKit`.

## Usage
_(See example Xcode project)_

Simply `alloc`/`init` an instance of `ARChromeActivity` and pass that object into the applicationActivities array when creating a `UIActivityViewController`.

    NSURL *URL = [NSURL URLWithString:@"http://github.com/alexruperez"];
    ARChromeActivity *activity = [[ARChromeActivity alloc] init];
    UIActivityViewController *activityViewController = [[UIActivityViewController alloc] initWithActivityItems:@[URL] applicationActivities:@[activity]];
    [self presentViewController:activityViewController animated:YES completion:nil];

Highly recommended usage with [RDActivityViewController](https://github.com/rdougan/RDActivityViewController).
