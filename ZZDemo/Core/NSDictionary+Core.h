//
//  NSDictionary+Core.h
//  ZZDemo
//
//  Created by Lingfeng on 16/1/3.
//  Copyright © 2016年 Personal. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (Core)

/*
 @return A dictionary merged from local dictionary or nil if no plist is found.
 */

+ (NSDictionary*)dictionaryFromPList:(NSString*)file;

@end
