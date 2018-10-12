#include <UIKit/UIKit.h>

%hook SpringBoard

-(void)applicationDidFinishLaunching:(id)application {
    %orig;

    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"From" message:@"zheng" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
    NSLog(@"tweaklog SpringBoard");
}

%end

%hook UIDevice
//idfv
-(NSUUID *)identifierForVendor
{
    NSUUID *uuid;
    NSString *deviceIDFV = @"11111111111111111";
    uuid = [[NSUUID alloc] initWithUUIDString: deviceIDFV];
    NSLog(@"TweakLog: deviceidfv=%@", deviceIDFV);
    return uuid;
}

-(NSString *)uniqueIdentifier
{
    NSString *sModel = %orig;
    NSLog(@"model=%@", sModel);
    return sModel;
}

-(NSString *)serialNumberData {
    NSString *serial = %orig;
    NSLog(@"TweakLog: serial=%@", serial);
    return serial;
}

+(void *)get_UUID {
	NSLog(@"TTTTTTTTTTTTTTTTTTT");
	return %orig;
}

%end

%hook ASIdentifierManager

-(id)advertisingIdentifier
{
    NSUUID *uuid;
    NSString *deviceIDFA = @"222222222222222";
    uuid = [[NSUUID alloc] initWithUUIDString: deviceIDFA];
    
    NSLog(@"TweakLog:deviceIDFA=%@", deviceIDFA);
    return uuid;
}
%end

%hook GetDeviceMessage
-(id)advertisingIdentifier
{
    NSString *unidentifier =%orig;
    NSLog(@"TweakLog: advertisingIdentifier=%@", unidentifier);
    return unidentifier;
}
%end

