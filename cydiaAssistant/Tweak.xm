
#import <UIKit/UIKit.h>

%hook Cydia
-(void) applicationDidEnterBackground:(id)arg1 {
return;
}

-(void) applicationWillResignActive:(id)arg1 {
return;
}
%end
static BOOL cydiaEnable = NO;

static void loadPrefs() {
    NSMutableDictionary *settings = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/cn.agricu.cydia.plist"];
    cydiaEnable = [settings objectForKey:@"cydiaEnable"] ? [[settings objectForKey:@"cydiaEnable"] boolValue] : NO;
}

%ctor {
    loadPrefs();
    if (cydiaEnable)
    {
        %init(_ungrouped);
    }

}