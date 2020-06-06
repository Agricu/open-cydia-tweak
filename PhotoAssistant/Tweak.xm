
%hook PUDeletePhotosActionController

-(bool) shouldSkipDeleteConfirmation {
return TRUE;
}

%end


%hook PUUserTransformView

-(double) preferredMaximumZoomScale {
return %orig;
}
-(void) _setPreferredMaximumZoomScale:(double)argl {
argl = 9999;
return %orig;
}
%end

static BOOL deleteEnable = NO;

static void loadPrefs() {
    NSMutableDictionary *settings = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/cn.agricu.mobileslideshow.plist"];
    deleteEnable = [settings objectForKey:@"deleteEnable"] ? [[settings objectForKey:@"deleteEnable"] boolValue] : NO;
}

%ctor {
    loadPrefs();
    if (deleteEnable)
    {
        %init(_ungrouped);
    }

}