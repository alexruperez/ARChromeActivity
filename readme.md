# ARChromeActivity

#### A UIActivity subclass for opening URLs in Google Chrome.
#### Forked by Alex Rupérez who adds i18n multilingual support and other internal improvements. 

## Usage

Typical usage will look something like this:

	NSURL *urlToShare = [NSURL URLWithString:@"http://github.com/alexruperez"];
	NSArray *activityItems = [NSArray arrayWithObject:urlToShare];

	ARChromeActivity *chromeActivity = [[ARChromeActivity alloc] init];
	NSArray *applicationActivities = [NSArray arrayWithObject:chromeActivity];

	UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:activityItems
																			 applicationActivities:applicationActivities];

	[self presentViewController:activityVC animated:YES completion:nil];

Highly recommended usage with [RDActivityViewController](https://github.com/rdougan/RDActivityViewController)!

Have a look at the demo app to see it in context.

![Demo screenshot](https://raw.github.com/alextrob/ARChromeActivity/master/screenshot.png)
