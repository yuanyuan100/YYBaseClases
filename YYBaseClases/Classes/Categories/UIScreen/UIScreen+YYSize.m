//
//  UIScreen+YYSize.m
//  YYCategoryKit
//
//  Created by Yvan.Peng on 2018/2/26.
//

#import "UIScreen+YYSize.h"

@implementation UIScreen (YYSize)
+ (UIScrrenYYSize)yy_type {
    return [self yy_typeWithDeviceOrientation:UIDeviceOrientationPortrait];
}

+ (UIScrrenYYSize)yy_typeSystem {
    return [self yy_typeWithDeviceOrientation:[[UIDevice currentDevice] orientation]];
}

+ (UIScrrenYYSize)yy_typeWithDeviceOrientation:(UIDeviceOrientation)orientation {
    
    UIScrrenYYSize i = UIScrrenYYSize_1125x2436;
    while (i) {
        if (CGSizeEqualToSize([self yy_size], [self yy_sizeType:i deviceOrientation:orientation])) {
            return i;
        }
        i--;
    }
    return UIScrrenYYSize_Unkown;
}


+ (CGSize)yy_sizeType:(UIScrrenYYSize)type {
    return [self yy_sizeType:type deviceOrientation:UIDeviceOrientationPortrait];
}

+ (CGSize)yy_sizeType:(UIScrrenYYSize)type deviceOrientation:(UIDeviceOrientation)orientation {
    
    CGSize size = CGSizeZero;
    switch (type) {
        case UIScrrenYYSize_320x480:
            size = CGSizeMake(320/1.0, 480/1.0);
            break;
        case UIScrrenYYSize_640x960:
            size = CGSizeMake(640/2.0, 960/2.0);
            break;
        case UIScrrenYYSize_640x1136:
            size = CGSizeMake(640/2.0, 1136/2.0);
            break;
        case UIScrrenYYSize_750x1334:
            size = CGSizeMake(750/2.0, 1334/2.0);
            break;
        case UIScrrenYYSize_1080x1920:
            size = CGSizeMake(414, 736);
            break;
        case UIScrrenYYSize_1125x2436:
            size = CGSizeMake(1125/3.0, 2436/3.0);
            break;
        default:
            size = CGSizeZero;
            break;
    }
    
    if (orientation == UIInterfaceOrientationPortrait) {
        return size;
    }  else {
        return CGSizeMake(size.height, size.width);
    }
}

+ (CGSize)yy_size {
    return [UIScreen mainScreen].bounds.size;
}

+ (CGFloat)yy_width {
    return self.yy_size.width;
}

+ (CGFloat)yy_height {
    return self.yy_size.height;
}
@end
