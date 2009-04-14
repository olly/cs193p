#import "Controller.h"

@implementation Controller
- (void)awakeFromNib {
	polygon.minimumNumberOfSides = 3;
	polygon.maximumNumberOfSides = 12;
	[self updateInterface];
}

- (IBAction)increase {
    polygon.numberOfSides = polygon.numberOfSides + 1;
	[self updateInterface];
}

- (IBAction)decrease {
    polygon.numberOfSides = polygon.numberOfSides - 1;
	[self updateInterface];
}

- (void)updateInterface {
	increaseButton.enabled = (polygon.numberOfSides < 12);
	decreaseButton.enabled = (polygon.numberOfSides > 2);
	numberOfSidesLabel.text = [NSString stringWithFormat:@"%d", polygon.numberOfSides];
	nameLabel.text = [NSString stringWithFormat:@"%@", polygon.name];
	degreeAngleLabel.text = [NSString stringWithFormat:@"%.0f˚", polygon.angleInDegrees];
}
@end
