//
//  NSArray+Core.m
//  ZZDemo
//
//  Created by Lingfeng on 16/1/3.
//  Copyright © 2016年 Personal. All rights reserved.
//

#import "NSArray+Core.h"

@implementation NSArray (Core)

+ (NSArray*)arrayFromPList:(NSString*)file
{   
    return [self arrayDirectFromMainBundle:file];
}

#pragma mark - Private Methods

+ (NSArray *)arrayDirectFromMainBundle:(NSString *)file
{
    NSString *filePath = [[NSBundle mainBundle] pathForResource:file
                                                         ofType:@"plist"];
    return [[NSArray alloc] initWithContentsOfFile:filePath];
}

+ (NSArray *)arrayDirectFromPlist:(NSString *)file inBundleNamed:(NSString*)bundleName
{
    NSString *bundlePath = [[NSBundle mainBundle] pathForResource:bundleName
                                                           ofType:@"bundle"];
    NSString *finalPath = [[NSBundle bundleWithPath:bundlePath] pathForResource:file
                                                                         ofType:@"plist"];
    
    return [[NSArray alloc] initWithContentsOfFile:finalPath];
}

+ (NSArray *)arrayDirectFromPlist:(NSString *)file inBundle:(NSBundle *)bundle
{
    NSString *finalPath = [bundle pathForResource:file
                                           ofType:@"plist"];
    
    return [[NSArray alloc] initWithContentsOfFile:finalPath];
}

- (id)objectAtIndexedSubscript:(NSUInteger)idx
{
    return ((idx < self.count) ?
            [self objectAtIndex:idx] : nil);
}

- (NSArray *)subarrayFromIndex:(NSInteger)index
{
    if (self.count == 0 || index < 0 || index >= self.count )
    {
        return nil;
    }
    
    return [self subarrayWithRange:NSMakeRange(index, self.count -1)];
}

@end
