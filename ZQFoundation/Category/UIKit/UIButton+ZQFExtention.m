//
//  UIButton+ZQFExtention.m
//  ZQFoundation
//
//  Created by ZhaiQiang on 16/5/18.
//  Copyright © 2016年 ZhaiQiang. All rights reserved.
//

#import "UIButton+ZQFExtention.h"
#import <CoreGraphics/CoreGraphics.h>

@implementation UIButton (ZQFExtention)

@end

@implementation UIButton (ZQFButtonTitlePosition)

-(void)setTitlePosition:(ZQFButtonTitlePosition)type{
    switch (type) {
        case ZQFButtonTitlePostionBottom:
        {
            // the space between the image and text
            CGFloat spacing = 2.0;
            
            // lower the text and push it left so it appears centered
            //  below the image
            CGSize imageSize = self.imageView.frame.size;
            self.titleEdgeInsets = UIEdgeInsetsMake(0.0, - imageSize.width, - (imageSize.height + spacing), 0.0);
            
            // raise the image and push it right so it appears centered
            //  above the text
            CGSize titleSize = self.titleLabel.frame.size;
            self.imageEdgeInsets = UIEdgeInsetsMake(-(titleSize.height + spacing), 0.0, 0.0, - titleSize.width);
        }
            break;
            
        default:
            break;
    }
}

@end