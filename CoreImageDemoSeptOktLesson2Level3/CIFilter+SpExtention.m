//
//  CIFilter+SpExtention.m
//  CoreImageDemoSeptOktLesson2Level3
//
//  Created by Nikolay Shubenkov on 14/11/15.
//  Copyright © 2015 Nikolay Shubenkov. All rights reserved.
//

#import "CIFilter+SpExtention.h"

@implementation CIFilter (SpExtention)

+ (NSArray *)sp_allFilteres {
    NSArray *properties = [CIFilter filterNamesInCategory:
                           kCICategoryBuiltIn];
    NSLog(@"%@", properties);
    
    NSMutableArray *filters = [NSMutableArray new];
    for (NSString *filterName in properties) {
        CIFilter *fltr = [CIFilter filterWithName:filterName];
        NSLog(@"%@", [fltr attributes]);
        [filters addObject:fltr];
    }
    return filters;
}

@end
