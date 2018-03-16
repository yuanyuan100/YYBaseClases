//
//  YYButtonUpImage.m
//  YYBaseClases
//
//  Created by Yvan.Peng on 2018/3/9.
//

#import "YYButtonUpImage.h"

@implementation YYButtonUpImage

- (void)layoutSubviews {
    [super layoutSubviews];
    CGSize imageSize = self.imageView.size;
    CGSize titleSize = self.titleLabel.size;
    self.imageEdgeInsets = UIEdgeInsetsMake(- (imageSize.height + self.yy_spaceUD - (imageSize.height - titleSize.height)), 0.0, 0.0, - titleSize.width);
    /// (- (imageSize.height(底边居中) + self.yy_spaceUD(底边距离居中的距离的两倍) - (imageSize.height - titleSize.height)(图片和文字整体居中)), 0.0, 0.0, - titleSize.width);
    self.titleEdgeInsets = UIEdgeInsetsMake(0, - imageSize.width, - (titleSize.height + self.yy_spaceUD + (imageSize.height - titleSize.height)), 0);
}

@end
