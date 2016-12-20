//
//  CommonClass.m
//  Ecommerce
//
//  Created by Apple on 02/05/16.
//  Copyright © 2016 cears infotech. All rights reserved.
//

#import "GlobalClass.h"

@implementation GlobalClass
@synthesize userDict, cartArray;

static GlobalClass * _sharedInstance = nil;

+(GlobalClass *)sharedInstance
{
    @synchronized([GlobalClass class])
    {
        if (!_sharedInstance)
            _sharedInstance = [[self alloc] init];
        
        return _sharedInstance;
    }
    
    return nil;
}

- (id)init {
    if (self = [super init]) {
        
        userDict = [NSMutableDictionary dictionary];
        cartArray = [NSMutableArray array];
    }
    return self;
}


-(void) showLoadingWithView:(UIView *) view1 withLabel:(NSString *)lblString {
    
    [DejalBezelActivityView activityViewForView:view1 withLabel:lblString];
}

-(void) hideLoading {
    
    [DejalBezelActivityView removeViewAnimated:YES];
}

- (BOOL)validateString:(NSString*)stringToSearch withRegex:(NSString*)regexString {
    NSPredicate *regex = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regexString];
    return [regex evaluateWithObject:stringToSearch];
}

-(NSString *)localizeString:(NSString *)localeKey {
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"ar" ofType:@"lproj"];
    NSBundle *languageBundle = [NSBundle bundleWithPath:path];
    NSString *localizedString = [languageBundle localizedStringForKey:localeKey value:@"" table:nil];
    
    return localizedString;
}

- (NSDictionary *) dictionaryByReplacingNullsWithStrings:(NSDictionary *)nullDict {
    
    NSMutableDictionary *replaced = [NSMutableDictionary dictionaryWithDictionary: nullDict];
    const id nul = [NSNull null];
    const NSString *blank = @"";
    
    for (NSString *key in nullDict) {
        const id object = [nullDict objectForKey: key];
        if (object == nul) {
            [replaced setObject: blank forKey: key];
        }
        else if ([object isKindOfClass: [NSDictionary class]]) {
            [replaced setObject: [self dictionaryByReplacingNullsWithStrings:object] forKey: key];
        }
    }
    return [NSDictionary dictionaryWithDictionary: replaced];
}

@end
