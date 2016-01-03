//
//  NSDictionary+Core.m
//  ZZDemo
//
//  Created by Lingfeng on 16/1/3.
//  Copyright © 2016年 Personal. All rights reserved.
//

#import "NSDictionary+Core.h"

@implementation NSDictionary (Core)

#pragma mark - Public Methods

+ (NSDictionary*)dictionaryFromPList:(NSString*)file
{
    return [self dictionaryDirectFromMainBundle:file];
}

#pragma mark - Private Methods

+ (NSDictionary *)dictionaryDirectFromPlist:(NSString *)file inBundleNamed:(NSString*)bundleName
{
    NSString *bundlePath = [[NSBundle mainBundle] pathForResource:bundleName
                                                           ofType:@"bundle"];
    NSString *finalPath = [[NSBundle bundleWithPath:bundlePath] pathForResource:file
                                                                         ofType:@"plist"];
    
    return [[NSDictionary alloc] initWithContentsOfFile:finalPath];
}

+ (NSDictionary *)dictionaryDirectFromPlist:(NSString *)file inBundle:(NSBundle *)bundle
{
    NSString *finalPath = [bundle pathForResource:file
                                           ofType:@"plist"];
    
    return [[NSDictionary alloc] initWithContentsOfFile:finalPath];
}

+ (NSDictionary *)dictionaryDirectFromMainBundle:(NSString *)file
{
    NSString *filePath = [[NSBundle mainBundle] pathForResource:file
                                                         ofType:@"plist"];
    return [[NSDictionary alloc] initWithContentsOfFile:filePath];
}

@end
