#import "Controller.h"

@implementation Controller
- (IBAction)updateValue:(id)sender {
    sliderValue.text = [NSString stringWithFormat:@"%.1f", uiSlider.value];
}
@end
