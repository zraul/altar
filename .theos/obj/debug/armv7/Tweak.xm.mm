#line 1 "Tweak.xm"
#include <UIKit/UIKit.h>


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class UIPasteboard; @class UIDevice; @class NSUserDefaults; @class GetDeviceMessage; @class SpringBoard; @class ASIdentifierManager; 
static void (*_logos_orig$_ungrouped$SpringBoard$applicationDidFinishLaunching$)(_LOGOS_SELF_TYPE_NORMAL SpringBoard* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$SpringBoard$applicationDidFinishLaunching$(_LOGOS_SELF_TYPE_NORMAL SpringBoard* _LOGOS_SELF_CONST, SEL, id); static NSUUID * (*_logos_orig$_ungrouped$UIDevice$identifierForVendor)(_LOGOS_SELF_TYPE_NORMAL UIDevice* _LOGOS_SELF_CONST, SEL); static NSUUID * _logos_method$_ungrouped$UIDevice$identifierForVendor(_LOGOS_SELF_TYPE_NORMAL UIDevice* _LOGOS_SELF_CONST, SEL); static NSString * (*_logos_orig$_ungrouped$UIDevice$model)(_LOGOS_SELF_TYPE_NORMAL UIDevice* _LOGOS_SELF_CONST, SEL); static NSString * _logos_method$_ungrouped$UIDevice$model(_LOGOS_SELF_TYPE_NORMAL UIDevice* _LOGOS_SELF_CONST, SEL); static NSString * (*_logos_orig$_ungrouped$UIDevice$uniqueIdentifier)(_LOGOS_SELF_TYPE_NORMAL UIDevice* _LOGOS_SELF_CONST, SEL); static NSString * _logos_method$_ungrouped$UIDevice$uniqueIdentifier(_LOGOS_SELF_TYPE_NORMAL UIDevice* _LOGOS_SELF_CONST, SEL); static NSString * (*_logos_orig$_ungrouped$UIDevice$serialNumberData)(_LOGOS_SELF_TYPE_NORMAL UIDevice* _LOGOS_SELF_CONST, SEL); static NSString * _logos_method$_ungrouped$UIDevice$serialNumberData(_LOGOS_SELF_TYPE_NORMAL UIDevice* _LOGOS_SELF_CONST, SEL); static void * (*_logos_meta_orig$_ungrouped$UIDevice$get_UUID)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static void * _logos_meta_method$_ungrouped$UIDevice$get_UUID(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$ASIdentifierManager$advertisingIdentifier)(_LOGOS_SELF_TYPE_NORMAL ASIdentifierManager* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$ASIdentifierManager$advertisingIdentifier(_LOGOS_SELF_TYPE_NORMAL ASIdentifierManager* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$GetDeviceMessage$advertisingIdentifier)(_LOGOS_SELF_TYPE_NORMAL GetDeviceMessage* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$GetDeviceMessage$advertisingIdentifier(_LOGOS_SELF_TYPE_NORMAL GetDeviceMessage* _LOGOS_SELF_CONST, SEL); static NSData * (*_logos_orig$_ungrouped$UIPasteboard$dataForPasteboardType$)(_LOGOS_SELF_TYPE_NORMAL UIPasteboard* _LOGOS_SELF_CONST, SEL, NSString *); static NSData * _logos_method$_ungrouped$UIPasteboard$dataForPasteboardType$(_LOGOS_SELF_TYPE_NORMAL UIPasteboard* _LOGOS_SELF_CONST, SEL, NSString *); static id (*_logos_orig$_ungrouped$NSUserDefaults$objectForKey$)(_LOGOS_SELF_TYPE_NORMAL NSUserDefaults* _LOGOS_SELF_CONST, SEL, id); static id _logos_method$_ungrouped$NSUserDefaults$objectForKey$(_LOGOS_SELF_TYPE_NORMAL NSUserDefaults* _LOGOS_SELF_CONST, SEL, id); 

#line 3 "Tweak.xm"


static void _logos_method$_ungrouped$SpringBoard$applicationDidFinishLaunching$(_LOGOS_SELF_TYPE_NORMAL SpringBoard* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id application) {
    _logos_orig$_ungrouped$SpringBoard$applicationDidFinishLaunching$(self, _cmd, application);

    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"From" message:@"zheng" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
    NSLog(@"tweaklog SpringBoard");
}






static NSUUID * _logos_method$_ungrouped$UIDevice$identifierForVendor(_LOGOS_SELF_TYPE_NORMAL UIDevice* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSUUID *uuid;
    NSString *deviceIDFV = @"11111111111111111";
    uuid = [[NSUUID alloc] initWithUUIDString: deviceIDFV];
    NSLog(@"TweakLog: deviceidfv=%@", deviceIDFV);
    return uuid;
}


static NSString * _logos_method$_ungrouped$UIDevice$model(_LOGOS_SELF_TYPE_NORMAL UIDevice* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSString *sModel = _logos_orig$_ungrouped$UIDevice$model(self, _cmd);
    NSLog(@"nbTweakLog, model=%@", sModel);
    return sModel;
}


static NSString * _logos_method$_ungrouped$UIDevice$uniqueIdentifier(_LOGOS_SELF_TYPE_NORMAL UIDevice* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSString *unidentifier =_logos_orig$_ungrouped$UIDevice$uniqueIdentifier(self, _cmd);
    NSLog(@"nbTweakLog: unidentifier=%@", unidentifier);
    return unidentifier;
}

static NSString * _logos_method$_ungrouped$UIDevice$serialNumberData(_LOGOS_SELF_TYPE_NORMAL UIDevice* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSString *serial = _logos_orig$_ungrouped$UIDevice$serialNumberData(self, _cmd);
    NSLog(@"TweakLog: serial=%@", serial);
    return serial;
}

static void * _logos_meta_method$_ungrouped$UIDevice$get_UUID(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	NSLog(@"TTTTTTTTTTTTTTTTTTT");
	return _logos_meta_orig$_ungrouped$UIDevice$get_UUID(self, _cmd);
}






static id _logos_method$_ungrouped$ASIdentifierManager$advertisingIdentifier(_LOGOS_SELF_TYPE_NORMAL ASIdentifierManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSUUID *uuid;
    NSString *deviceIDFA = @"222222222222222";
    uuid = [[NSUUID alloc] initWithUUIDString: deviceIDFA];
    
    NSLog(@"TweakLog:deviceIDFA=%@", deviceIDFA);
    return uuid;
}




static id _logos_method$_ungrouped$GetDeviceMessage$advertisingIdentifier(_LOGOS_SELF_TYPE_NORMAL GetDeviceMessage* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSString *unidentifier =_logos_orig$_ungrouped$GetDeviceMessage$advertisingIdentifier(self, _cmd);
    NSLog(@"TweakLog: advertisingIdentifier=%@", unidentifier);
    return unidentifier;
}





static NSData * _logos_method$_ungrouped$UIPasteboard$dataForPasteboardType$(_LOGOS_SELF_TYPE_NORMAL UIPasteboard* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSString * pasteboardType) {
    NSData *result = _logos_orig$_ungrouped$UIPasteboard$dataForPasteboardType$(self, _cmd, pasteboardType);
    NSLog(@"nbTweakLog, dataForPasteboardType=%@, result=%@", pasteboardType, result);
    return result;
}




static id _logos_method$_ungrouped$NSUserDefaults$objectForKey$(_LOGOS_SELF_TYPE_NORMAL NSUserDefaults* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id aKey) {
    id result;
    NSString *key = (NSString *)aKey;
    result = _logos_orig$_ungrouped$NSUserDefaults$objectForKey$(self, _cmd, aKey);
    NSLog(@"TweakLog, NSUserDefaults objectForKey=%@, value=%@", key, result);
    if ([key caseInsensitiveCompare:@"OpenUDID_appUID"] == NSOrderedSame)
    {
        
        result = @"11111111111111111";
        NSLog(@"nbTweakLog, NSUserDefaults objectForKey=%@, value=%@", key, result);
    }
    else if ([key caseInsensitiveCompare:@"OpenUDID"] == NSOrderedSame)
    {
        NSMutableDictionary *localDict = [NSMutableDictionary dictionaryWithCapacity:4];
        
        NSString *tmp = @"222222222222222";
        if (tmp != nil){
            [localDict setObject:tmp forKey:@"OpenUDID"];
            
            tmp = @"333333333333333";
            [localDict setObject:tmp forKey:@"OpenUDID_appUID"];
            [localDict setObject:[NSDate date] forKey:@"OpenUDID_createdTS"];
            
            tmp = @"44444444444444444";
            [localDict setObject:tmp forKey:@"OpenUDID_slot"];
            NSLog(@"nbTweakLog, NSUserDefaults localDict objectForKey=%@, value=%@", key, localDict);
            result = localDict;
            NSLog(@"nbTweakLog, NSUserDefaults objectForKey=%@, value=%@", key, result);
        }

    }
    return result;
}



static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SpringBoard = objc_getClass("SpringBoard"); MSHookMessageEx(_logos_class$_ungrouped$SpringBoard, @selector(applicationDidFinishLaunching:), (IMP)&_logos_method$_ungrouped$SpringBoard$applicationDidFinishLaunching$, (IMP*)&_logos_orig$_ungrouped$SpringBoard$applicationDidFinishLaunching$);Class _logos_class$_ungrouped$UIDevice = objc_getClass("UIDevice"); Class _logos_metaclass$_ungrouped$UIDevice = object_getClass(_logos_class$_ungrouped$UIDevice); MSHookMessageEx(_logos_class$_ungrouped$UIDevice, @selector(identifierForVendor), (IMP)&_logos_method$_ungrouped$UIDevice$identifierForVendor, (IMP*)&_logos_orig$_ungrouped$UIDevice$identifierForVendor);MSHookMessageEx(_logos_class$_ungrouped$UIDevice, @selector(model), (IMP)&_logos_method$_ungrouped$UIDevice$model, (IMP*)&_logos_orig$_ungrouped$UIDevice$model);MSHookMessageEx(_logos_class$_ungrouped$UIDevice, @selector(uniqueIdentifier), (IMP)&_logos_method$_ungrouped$UIDevice$uniqueIdentifier, (IMP*)&_logos_orig$_ungrouped$UIDevice$uniqueIdentifier);MSHookMessageEx(_logos_class$_ungrouped$UIDevice, @selector(serialNumberData), (IMP)&_logos_method$_ungrouped$UIDevice$serialNumberData, (IMP*)&_logos_orig$_ungrouped$UIDevice$serialNumberData);MSHookMessageEx(_logos_metaclass$_ungrouped$UIDevice, @selector(get_UUID), (IMP)&_logos_meta_method$_ungrouped$UIDevice$get_UUID, (IMP*)&_logos_meta_orig$_ungrouped$UIDevice$get_UUID);Class _logos_class$_ungrouped$ASIdentifierManager = objc_getClass("ASIdentifierManager"); MSHookMessageEx(_logos_class$_ungrouped$ASIdentifierManager, @selector(advertisingIdentifier), (IMP)&_logos_method$_ungrouped$ASIdentifierManager$advertisingIdentifier, (IMP*)&_logos_orig$_ungrouped$ASIdentifierManager$advertisingIdentifier);Class _logos_class$_ungrouped$GetDeviceMessage = objc_getClass("GetDeviceMessage"); MSHookMessageEx(_logos_class$_ungrouped$GetDeviceMessage, @selector(advertisingIdentifier), (IMP)&_logos_method$_ungrouped$GetDeviceMessage$advertisingIdentifier, (IMP*)&_logos_orig$_ungrouped$GetDeviceMessage$advertisingIdentifier);Class _logos_class$_ungrouped$UIPasteboard = objc_getClass("UIPasteboard"); MSHookMessageEx(_logos_class$_ungrouped$UIPasteboard, @selector(dataForPasteboardType:), (IMP)&_logos_method$_ungrouped$UIPasteboard$dataForPasteboardType$, (IMP*)&_logos_orig$_ungrouped$UIPasteboard$dataForPasteboardType$);Class _logos_class$_ungrouped$NSUserDefaults = objc_getClass("NSUserDefaults"); MSHookMessageEx(_logos_class$_ungrouped$NSUserDefaults, @selector(objectForKey:), (IMP)&_logos_method$_ungrouped$NSUserDefaults$objectForKey$, (IMP*)&_logos_orig$_ungrouped$NSUserDefaults$objectForKey$);} }
#line 123 "Tweak.xm"
