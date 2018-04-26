//
//  UIColor+YYExtend.h
//  Pods-YYBaseClases_Example
//
//  Created by Yvan.Peng on 2018/4/26.
//

#import <UIKit/UIKit.h>

@interface UIColor (YYExtend)
/// 返回rbga,下标01234;如果不存在返回nil
- (NSArray *)yy_rgba;
@end
