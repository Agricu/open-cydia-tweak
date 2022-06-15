#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


#define settingPath @"var/mobile/Library/Preferences/cn.agricu.stepnumber.plist"



////支付宝步数
%hook HKQuantity

-(double)doubleValueForUnit:(id)arg1 {

    NSMutableDictionary *prefs = [[NSMutableDictionary alloc] initWithContentsOfFile:settingPath];
    BOOL isEnabled = [[prefs objectForKey:@"enabled"] boolValue];
    BOOL addRandom = [[prefs objectForKey:@"random"] boolValue];
    int targetStepNumber = [[prefs objectForKey:@"targetStepNumber"] intValue];

    int origStepNumber = %orig;
    if (isEnabled && (targetStepNumber > origStepNumber))
    {
        int newStepNumber = targetStepNumber;
        if (addRandom)
        {
            newStepNumber += arc4random()%100;////数字为区间浮动，例如，100:表示1-100浮动
        }
        return newStepNumber;
    }
    return origStepNumber;
}

%end