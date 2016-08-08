//
//  UIView+ZQFExtention.m
//  ZQFoundation
//
//  Created by ZhaiQiang on 16/5/18.
//  Copyright © 2016年 ZhaiQiang. All rights reserved.
//

#import "UIView+ZQFExtention.h"

@implementation UIView (ZQFExtention)

@end

@implementation UIView (ZQFFrame)

@end

@implementation UIView (ZQFSnapshot)
- (UIImage *)snapshot {
    UIGraphicsBeginImageContext(self.bounds.size);
    [self.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

@end