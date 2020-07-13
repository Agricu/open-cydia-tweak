
#include <ToastView.h>
#import <UIKit/UIKit.h>

%hook AppDelegate

- (bool)application:(id)arg1 
didFinishLaunchingWithOptions:(id)arg2{
           [ToastView showToast:@"感谢使用本插件\n\n⚠️广告去除已启动⚠️\n\n😇享受😇"
withDuration:3.0];
return %orig;
}
%end

%hook BUSplashPreloader

-(void) setTimeout:(double)arg1 {
	return;
}
%end


%hook BUAdSlot

-(void) setAdType:(long long)arg1 {
	return;
}
%end