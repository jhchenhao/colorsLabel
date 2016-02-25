//
//  ColorsLabel.m
//  colorsLabel
//
//  Created by jhtxch on 16/2/25.
//  Copyright © 2016年 jhtxch. All rights reserved.
//

#import "ColorsLabel.h"

@implementation ColorsLabel

- (void)layoutSubviews
{
    [super layoutSubviews];
    if (self.colors) {
        if (self.colors.count == 1) {
            self.textColor = [self.colors lastObject];
        }else{
            //获取文字的高度
            CGFloat textHeight = [self.text boundingRectWithSize:CGSizeMake(1000, 10000) options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:@{NSFontAttributeName : self.font} context:nil].size.height;
            CGSize size = CGSizeMake(textHeight, textHeight);
            //将uicolor转换为cgcolorref
            NSMutableArray *colorRefs = [NSMutableArray array];
            NSMutableArray *locations = [NSMutableArray array];
            CGFloat num = 1.0 / (CGFloat)(self.colors.count + 1);
            for (UIColor *color in self.colors) {
                [colorRefs addObject:(id)color.CGColor];
                [locations addObject:@(num * ([self.colors indexOfObject:color] + 1))];
            }
            //创建gradientlayer
            CAGradientLayer *gradientLayer = [CAGradientLayer layer];
            gradientLayer.frame = CGRectMake(0, 0, size.width, size.width);
            gradientLayer.colors = colorRefs;
            gradientLayer.locations = locations;
            gradientLayer.startPoint = CGPointMake(0, 0);
            gradientLayer.endPoint = CGPointMake(1, 0);
            if (self.textDirection == TEXTDIRECTIONLEFTTORIGHT) {
                gradientLayer.endPoint = CGPointMake(1, 0);
            }else if (self.textDirection == TEXTDIRECTIONTOPTOBOTTOM){
                gradientLayer.endPoint = CGPointMake(0, 1);
            }else if (self.textDirection == TEXTDIRECTIONTOPLEFTTOBOTTOMRIGHT){
                gradientLayer.endPoint = CGPointMake(1, 1);
            }
            //创建uiimage
            UIGraphicsBeginImageContext(size);
            [gradientLayer renderInContext:UIGraphicsGetCurrentContext()];
            UIImage *colorImage = UIGraphicsGetImageFromCurrentImageContext();
            UIGraphicsEndImageContext();
            //创建颜色
            UIColor *colors = [UIColor colorWithPatternImage:colorImage];
            self.textColor = colors;
        }
    }
}

@end
