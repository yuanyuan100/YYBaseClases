//
//  UIColor+YYExtend.m
//  Pods-YYBaseClases_Example
//
//  Created by Yvan.Peng on 2018/4/26.
//

#import "UIColor+YYExtend.h"

@implementation UIColor (YYExtend)
- (NSArray *)yy_rgba {
    NSString *rgbaStr = [NSString stringWithFormat:@"%@", self];
    NSArray *rgbaArr = [rgbaStr componentsSeparatedByString:@" "];
    if (rgbaArr.count > 4) {
        return [rgbaArr subarrayWithRange:NSMakeRange(1, 4)];
    }
    return nil;
}
@end
