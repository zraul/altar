#include <UIKit/UIKit.h>


%hook UIDevice

-(NSUUID *)identifierForVendor
{
    NSUUID *uuid;
    NSString *deviceIDFV = @"111111111111111";
    NSLog(@"tweak identifierForVendor");
    uuid = [[NSUUID alloc] initWithUUIDString: deviceIDFV];
    return uuid;
}

%end

%hook SpringBoard

-(void)applicationDidFinishLaunching:(id)application {
    %orig;

    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"From" message:@"zheng" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
}

%end
