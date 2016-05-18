//
//  NSNumber+ZQFCategory.m
//  ZQFoundation
//
//  Created by ZhaiQiang on 16/5/18.
//  Copyright © 2016年 ZhaiQiang. All rights reserved.
//

#import "NSNumber+ZQFCategory.h"

@implementation NSNumber (ZQFCategory)

@end

@implementation NSNumber (ZQFDiskSizeTransform)

-(NSString *)diskSize{
    double convertedValue = self.longLongValue;
    int multiplyFactor = 0;
    
    NSArray *tokens = @[@"bytes", @"KB", @"MB", @"GB", @"TB"];
    
    while (convertedValue > 1024) {
        convertedValue /= 1024;
        multiplyFactor++;
    }
    
    return [NSString stringWithFormat:@"%4.2f %@",convertedValue, [tokens objectAtIndex:multiplyFactor]];
    
}

@end