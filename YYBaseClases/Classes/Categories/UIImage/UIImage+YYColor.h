//
//  UIImage+YYColor.h
//  iOS_Color
//
//  Created by Yvan.Peng on 2018/3/1.
//

#import <UIKit/UIKit.h>

@interface UIImage (YYColor)
/// 类似系统的tinColor改变UIImage的颜色一样
/// 重新绘制图片的颜色
- (UIImage *)yy_imageWithColor:(UIColor *)color;
@end
