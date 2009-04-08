#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface Controller : NSObject {
    IBOutlet UILabel *sliderValue;
    IBOutlet UISlider *uiSlider;
}
- (IBAction)updateValue:(id)sender;
@end
