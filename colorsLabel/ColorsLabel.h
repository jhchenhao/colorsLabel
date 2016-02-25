//
//  ColorsLabel.h
//  colorsLabel
//
//  Created by jhtxch on 16/2/25.
//  Copyright © 2016年 jhtxch. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    TEXTDIRECTIONLEFTTORIGHT, //从坐往右
    TEXTDIRECTIONTOPTOBOTTOM, //从上往下
    TEXTDIRECTIONTOPLEFTTOBOTTOMRIGHT, //从坐上往右下
} TEXTDIRCTION;

@interface ColorsLabel : UILabel

@property (nonatomic, strong) NSArray <UIColor *> *colors; //颜色
@property (nonatomic, assign) TEXTDIRCTION textDirection; //颜色方向

@end
