//
//  UIButton+ZQFExtention.h
//  ZQFoundation
//
//  Created by ZhaiQiang on 16/5/18.
//  Copyright © 2016年 ZhaiQiang. All rights reserved.
//


#import <UIKit/UIKit.h>

@interface UIButton (ZQFExtention)

@end

//http://www.jianshu.com/p/62850b201049

typedef NS_ENUM(NSInteger,ZQFButtonTitlePosition) {
    ZQFButtonTitlePostionBottom,
};

@interface UIButton (ZQFButtonTitlePosition)

- (void)setTitlePosition:(ZQFButtonTitlePosition)type;

@end