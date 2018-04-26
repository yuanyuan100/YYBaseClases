//
//  UIImage+YYColor.m
//  iOS_Color
//
//  Created by Yvan.Peng on 2018/3/1.
//

#import "UIImage+YYColor.h"

@implementation UIImage (YYColor)
/**
 *  重新绘制图片
 *
 *  @param color 填充色
 *
 *  @return UIImage
 */
- (UIImage *)yy_imageWithColor:(UIColor *)color
{
    UIGraphicsBeginImageContextWithOptions(self.size, NO, self.scale);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextTranslateCTM(context, 0, self.size.height);
    CGContextScaleCTM(context, 1.0, -1.0);
    CGContextSetBlendMode(context, kCGBlendModeNormal);
    CGRect rect = CGRectMake(0, 0, self.size.width, self.size.height);
    CGContextClipToMask(context, rect, self.CGImage);
    [color setFill];
    CGContextFillRect(context, rect);
    UIImage*newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}
@end
