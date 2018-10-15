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

-(NSString *)model
{
    NSString *sModel = %orig;
    NSLog(@"nbTweakLog, model=%@", sModel);
    return sModel;
}

-(NSString *)uniqueIdentifier
{
    NSString *unidentifier =%orig;
    NSLog(@"nbTweakLog: unidentifier=%@", unidentifier);
    return unidentifier;
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


%hook UIPasteboard
- (NSData *)dataForPasteboardType:(NSString *)pasteboardType
{
    NSData *result = %orig;
    NSLog(@"nbTweakLog, dataForPasteboardType=%@, result=%@", pasteboardType, result);
    return result;
}
%end

%hook NSUserDefaults
-(id)objectForKey:(id)aKey
{
    id result;
    NSString *key = (NSString *)aKey;
    result = %orig(aKey);
    NSLog(@"TweakLog, NSUserDefaults objectForKey=%@, value=%@", key, result);
    if ([key caseInsensitiveCompare:@"OpenUDID_appUID"] == NSOrderedSame)
    {
        //result = readParams([NSString stringWithUTF8String:STR_DEVICE_OPENUDID_APPUID]);
        result = @"11111111111111111";
        NSLog(@"nbTweakLog, NSUserDefaults objectForKey=%@, value=%@", key, result);
    }
    else if ([key caseInsensitiveCompare:@"OpenUDID"] == NSOrderedSame)
    {
        NSMutableDictionary *localDict = [NSMutableDictionary dictionaryWithCapacity:4];
        //NSString *tmp = readParams([NSString stringWithUTF8String:STR_DEVICE_OPENUDID]);
        NSString *tmp = @"222222222222222";
        if (tmp != nil){
            [localDict setObject:tmp forKey:@"OpenUDID"];
            //tmp = readParams([NSString stringWithUTF8String:STR_DEVICE_OPENUDID_APPUID]);
            tmp = @"333333333333333";
            [localDict setObject:tmp forKey:@"OpenUDID_appUID"];
            [localDict setObject:[NSDate date] forKey:@"OpenUDID_createdTS"];
            //tmp = readParams([NSString stringWithUTF8String:STR_DEVICE_OPENUDID_SLOT]);
            tmp = @"44444444444444444";
            [localDict setObject:tmp forKey:@"OpenUDID_slot"];
            NSLog(@"nbTweakLog, NSUserDefaults localDict objectForKey=%@, value=%@", key, localDict);
            result = localDict;
            NSLog(@"nbTweakLog, NSUserDefaults objectForKey=%@, value=%@", key, result);
        }

    }
    return result;
}

%end

