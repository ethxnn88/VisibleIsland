#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <sys/sysctl.h>

CGFloat xPos =  0;
CGFloat yPos =  20.0;

static BOOL fixEnabled;
static BOOL islandEnabled;
static BOOL posEnabled;

@interface FBSystemService : NSObject

+(id)sharedInstance;
-(void)exitAndRelaunch:(BOOL)arg1;

@end

@interface SBSystemApertureWindow : UIView
@end

@interface _SBSystemApertureMagiciansCurtainView : UIView
@end

@interface Model : NSObject

+ (NSString *)deviceModel;

@end

@implementation Model

+ (NSString *)deviceModel {
    size_t size;
    sysctlbyname("hw.machine", NULL, &size, NULL, 0);

    char *machine = (char *)malloc(size);
    if (machine == NULL) {
        return nil;
    }

    if (sysctlbyname("hw.machine", machine, &size, NULL, 0) == -1) {
        free(machine);
        return nil;
    }

    NSString *deviceModel = [NSString stringWithUTF8String:machine];
    free(machine);

    return deviceModel;
}

@end

%hook SBSystemApertureWindow

- (CGRect)frame {
    if (fixEnabled) {
        NSString *deviceModel = [Model deviceModel];
        if ([deviceModel isEqualToString:@"iPhone10,3"]) { //X
            %orig;
            return CGRectMake(0, 20.5, 375, 812);
        } else if ([deviceModel isEqualToString:@"iPhone10,6"]) { //X
            %orig;
            return CGRectMake(0, 20.5, 375, 812);
        } else if ([deviceModel isEqualToString:@"iPhone11,2"]) { //XS
            %orig;
            return CGRectMake(0, 20.5, 375, 812);
        } else if ([deviceModel isEqualToString:@"iPhone12,3"]) { //11 Pro
            %orig;
            return CGRectMake(0, 20.5, 375, 812);


        } else if ([deviceModel isEqualToString:@"iPhone11,6"]) { //XS Max FAKE OFFSETS??
            %orig;
            return CGRectMake(0, 22.5, 414, 896);
        } else if ([deviceModel isEqualToString:@"iPhone12,5"]) { //11 Pro Max FAKE OFFSTES??
            %orig;
            return CGRectMake(0, 22.5, 414, 896);


        } else if ([deviceModel isEqualToString:@"iPhone11,8"]) { //XR FIND OFFSETS - USING ESTIMATED
            %orig;
            return CGRectMake(0, 22.5, 414, 896);
        } else if ([deviceModel isEqualToString:@"iPhone12,1"]) { //11 FIND OFFSETS - USING ESTIMATED
            %orig;
            return CGRectMake(0, 22.5, 414, 896);


        } else if ([deviceModel isEqualToString:@"iPhone13,2"]) { //12 FIND OFFSETS - USING ESTIMATED
            %orig;
            return CGRectMake(0, 21.5, 390, 844);
        } else if ([deviceModel isEqualToString:@"iPhone13,3"]) { //12 Pro FIND OFFSETS - USING ESTIMATED
            %orig;
            return CGRectMake(0, 21.5, 390, 844);


        } else if ([deviceModel isEqualToString:@"iPhone13,1"]) { //12 Mini FIND OFFSETS - USING ESTIMATED
            %orig;
            return CGRectMake(0, 19.5, 360, 780);


        } else if ([deviceModel isEqualToString:@"iPhone13,4"]) { //12 Pro Max FIND OFFSETS - USING ESTIMATED
            %orig;
            return CGRectMake(0, 22.3, 428, 926);


        } else if ([deviceModel isEqualToString:@"iPhone14,5"]) { //13
            %orig;
            return CGRectMake(0, 24, 390, 844);
        } else if ([deviceModel isEqualToString:@"iPhone14,2"]) { //13 Pro
            %orig;
            return CGRectMake(0, 24, 390, 844);
        } else if ([deviceModel isEqualToString:@"iPhone14,7"]) { //14
            %orig;
            return CGRectMake(0, 24, 390, 844);


        } else if ([deviceModel isEqualToString:@"iPhone14,4"]) { //13 Mini FAKE OFFSETS??
            %orig;
            return CGRectMake(0, 22.5, 360, 780);


        } else if ([deviceModel isEqualToString:@"iPhone14,3"]) { //13 Pro Max FAKE OFFSETS??
            %orig;
            return CGRectMake(0, 26, 428, 926);
        }
    } else if (posEnabled) {
        NSString *deviceModel = [Model deviceModel];
        if ([deviceModel isEqualToString:@"iPhone10,3"]) { //X
            %orig;
            return CGRectMake(xPos, yPos, 375, 812);
        } else if ([deviceModel isEqualToString:@"iPhone10,6"]) { //X
            %orig;
            return CGRectMake(xPos, yPos, 375, 812);
        } else if ([deviceModel isEqualToString:@"iPhone11,2"]) { //XS
            %orig;
            return CGRectMake(xPos, yPos, 375, 812);
        } else if ([deviceModel isEqualToString:@"iPhone12,3"]) { //11 Pro
            %orig;
            return CGRectMake(xPos, yPos, 375, 812);


        } else if ([deviceModel isEqualToString:@"iPhone11,6"]) { //XS Max
            %orig;
            return CGRectMake(xPos, yPos, 414, 896);
        } else if ([deviceModel isEqualToString:@"iPhone12,5"]) { //11
            %orig;
            return CGRectMake(xPos, yPos, 414, 896);


        } else if ([deviceModel isEqualToString:@"iPhone11,8"]) { //XR
            %orig;
            return CGRectMake(xPos, yPos, 414, 896);
        } else if ([deviceModel isEqualToString:@"iPhone12,1"]) { //11
            %orig;
            return CGRectMake(xPos, yPos, 414, 896);


        } else if ([deviceModel isEqualToString:@"iPhone13,2"]) { //12
            %orig;
            return CGRectMake(xPos, yPos, 390, 844);
        } else if ([deviceModel isEqualToString:@"iPhone13,3"]) { //12 Pro
            %orig;
            return CGRectMake(xPos, yPos, 390, 844);


        } else if ([deviceModel isEqualToString:@"iPhone13,1"]) { //12 Mini
            %orig;
            return CGRectMake(xPos, yPos, 360, 780);


        } else if ([deviceModel isEqualToString:@"iPhone13,4"]) { //12 Pro Max
            %orig;
            return CGRectMake(xPos, yPos, 428, 926);


        } else if ([deviceModel isEqualToString:@"iPhone14,5"]) { //13
            %orig;
            return CGRectMake(xPos, yPos, 390, 844);
        } else if ([deviceModel isEqualToString:@"iPhone14,2"]) { //13 Pro
            %orig;
            return CGRectMake(xPos, yPos, 390, 844);
        } else if ([deviceModel isEqualToString:@"iPhone14,7"]) { //14
            %orig;
            return CGRectMake(xPos, yPos, 390, 844);


        } else if ([deviceModel isEqualToString:@"iPhone14,4"]) { //13 Mini
            %orig;
            return CGRectMake(xPos, yPos, 360, 780);


        } else if ([deviceModel isEqualToString:@"iPhone14,3"]) { //13 Pro Max
            %orig;
            return CGRectMake(xPos, yPos, 428, 926);
        }
    }

    return %orig;
}

- (void)setFrame:(CGRect)frame {
    if (fixEnabled) {
        NSString *deviceModel = [Model deviceModel];
        if ([deviceModel isEqualToString:@"iPhone10,3"]) { //X
            %orig(CGRectMake(0, 20.5, 375, 812));
        } else if ([deviceModel isEqualToString:@"iPhone10,6"]) { //X
            %orig(CGRectMake(0, 20.5, 375, 812));
        } else if ([deviceModel isEqualToString:@"iPhone11,2"]) { //XS
            %orig(CGRectMake(0, 20.5, 375, 812));
        } else if ([deviceModel isEqualToString:@"iPhone12,3"]) { //11 Pro
            %orig(CGRectMake(0, 20.5, 375, 812));


        } else if ([deviceModel isEqualToString:@"iPhone11,6"]) { //XS Max FAKE OFFSETS??
            %orig(CGRectMake(0, 22.5, 414, 896));
        } else if ([deviceModel isEqualToString:@"iPhone12,5"]) { //11 Pro Max FAKE OFFSETS??
            %orig(CGRectMake(0, 22.5, 414, 896));


        } else if ([deviceModel isEqualToString:@"iPhone11,8"]) { //XR FIND OFFSETS - USING ESTIMATED
            %orig(CGRectMake(0, 22.5, 414, 896));
        } else if ([deviceModel isEqualToString:@"iPhone12,1"]) { //11 FIND OFFSETS - USING ESTIMATED
            %orig(CGRectMake(0, 22.5, 414, 896));


        } else if ([deviceModel isEqualToString:@"iPhone13,2"]) { //12 FIND OFFSETS - USING ESTIMATED
            %orig(CGRectMake(0, 21.5, 390, 844));
        } else if ([deviceModel isEqualToString:@"iPhone13,3"]) { //12 Pro FIND OFFSETS - USING ESTIMATED
            %orig(CGRectMake(0, 21.5, 390, 844));


        } else if ([deviceModel isEqualToString:@"iPhone13,1"]) { //12 Mini FIND OFFSETS - USING ESTIMATED
            %orig(CGRectMake(0, 19.5, 360, 780));


        } else if ([deviceModel isEqualToString:@"iPhone13,4"]) { //12 Pro Max FIND OFFSETS - USING ESTIMATED
            %orig(CGRectMake(0, 23.3, 428, 926));


        } else if ([deviceModel isEqualToString:@"iPhone14,5"]) { //13
            %orig(CGRectMake(0, 24, 390, 844));
        } else if ([deviceModel isEqualToString:@"iPhone14,2"]) { //13 Pro
            %orig(CGRectMake(0, 24, 390, 844));
        } else if ([deviceModel isEqualToString:@"iPhone14,7"]) { //14
            %orig(CGRectMake(0, 24, 390, 844));


        } else if ([deviceModel isEqualToString:@"iPhone14,4"]) { //13 Mini FAKE OFFSETS??
            %orig(CGRectMake(0, 22.5, 360, 780));


        } else if ([deviceModel isEqualToString:@"iPhone14,3"]) { //13 Pro Max FAKE OFFSETS??
            %orig(CGRectMake(0, 26, 428, 926));
        }
    } else if (posEnabled) {
        NSString *deviceModel = [Model deviceModel];
        if ([deviceModel isEqualToString:@"iPhone10,3"]) { //X
            %orig;
            %orig(CGRectMake(xPos, yPos, 375, 812));
        } else if ([deviceModel isEqualToString:@"iPhone10,6"]) { //X
            %orig;
            %orig(CGRectMake(xPos, yPos, 375, 812));
        } else if ([deviceModel isEqualToString:@"iPhone11,2"]) { //XS
            %orig;
            %orig(CGRectMake(xPos, yPos, 375, 812));
        } else if ([deviceModel isEqualToString:@"iPhone12,3"]) { //11 Pro
            %orig;
            %orig(CGRectMake(xPos, yPos, 375, 812));


        } else if ([deviceModel isEqualToString:@"iPhone11,6"]) { //XS Max
            %orig;
            %orig(CGRectMake(xPos, yPos, 414, 896));
        } else if ([deviceModel isEqualToString:@"iPhone12,5"]) { //11 Pro Max
            %orig;
            %orig(CGRectMake(xPos, yPos, 414, 896));


        } else if ([deviceModel isEqualToString:@"iPhone11,8"]) { //XR
            %orig;
            %orig(CGRectMake(xPos, yPos, 414, 896));
        } else if ([deviceModel isEqualToString:@"iPhone12,1"]) { //11
            %orig;
            %orig(CGRectMake(xPos, yPos, 414, 896));


        } else if ([deviceModel isEqualToString:@"iPhone13,2"]) { //12
            %orig;
            %orig(CGRectMake(xPos, yPos, 390, 844));
        } else if ([deviceModel isEqualToString:@"iPhone13,3"]) { //12 Pro
            %orig;
            %orig(CGRectMake(xPos, yPos, 390, 844));


        } else if ([deviceModel isEqualToString:@"iPhone13,1"]) { //12 Mini
            %orig;
            %orig(CGRectMake(xPos, yPos, 360, 780));


        } else if ([deviceModel isEqualToString:@"iPhone13,4"]) { //12 Pro Max
            %orig;
            %orig(CGRectMake(xPos, yPos, 428, 926));


        } else if ([deviceModel isEqualToString:@"iPhone14,5"]) { //13
            %orig;
            %orig(CGRectMake(xPos, yPos, 390, 844));
        } else if ([deviceModel isEqualToString:@"iPhone14,2"]) { //13 Pro
            %orig;
            %orig(CGRectMake(xPos, yPos, 390, 844));
        } else if ([deviceModel isEqualToString:@"iPhone14,7"]) { //14
            %orig(CGRectMake(xPos, yPos, 390, 844));


        } else if ([deviceModel isEqualToString:@"iPhone14,4"]) { //13 Mini
            %orig;
            %orig(CGRectMake(xPos, yPos, 360, 780));


        } else if ([deviceModel isEqualToString:@"iPhone14,3"]) { //13 Pro Max
            %orig;
            %orig(CGRectMake(xPos, yPos, 428, 926));
        }

    } else {
        %orig(frame);
    }
}

%end

%hook _SBSystemApertureMagiciansCurtainView

-(void)didMoveToWindow {
    if (fixEnabled) {
        self.hidden = YES;
    } else if (posEnabled) {
        self.hidden = YES;
    } else {
        self.hidden = NO;
    }
}

%end

static void respring(CFNotificationCenterRef center, void *observer, CFStringRef name, const void *object, CFDictionaryRef userInfo) {
  [[%c(FBSystemService) sharedInstance] exitAndRelaunch:YES];
}

void preferencesChanged(){
    NSDictionary *prefs = [[NSUserDefaults standardUserDefaults] persistentDomainForName:@"com.ethxnn88.visibleislandprefs"];

    fixEnabled = (prefs && [prefs objectForKey:@"fixEnabled"] ? [[prefs valueForKey:@"fixEnabled"] boolValue] : NO );
    islandEnabled = (prefs && [prefs objectForKey:@"islandEnabled"] ? [[prefs valueForKey:@"islandEnabled"] boolValue] : NO );
    posEnabled = (prefs && [prefs objectForKey:@"posEnabled"] ? [[prefs valueForKey:@"posEnabled"] boolValue] : NO );
    xPos = [[prefs objectForKey:@"xPos"] floatValue];
    yPos = [[prefs objectForKey:@"yPos"] floatValue];
}

%ctor{
	preferencesChanged();

	CFNotificationCenterAddObserver(CFNotificationCenterGetDarwinNotifyCenter(), NULL, (CFNotificationCallback)preferencesChanged, CFSTR("com.ethxnn88.visibleislandprefs-updated"), NULL, CFNotificationSuspensionBehaviorDeliverImmediately);

    if ([[NSBundle mainBundle].bundleIdentifier isEqualToString:@"com.apple.springboard"]) {
        CFNotificationCenterAddObserver(CFNotificationCenterGetDarwinNotifyCenter(), NULL, respring, CFSTR("com.ethxnn88.visibleislandprefs-respring"), NULL, CFNotificationSuspensionBehaviorCoalesce);
    }
}