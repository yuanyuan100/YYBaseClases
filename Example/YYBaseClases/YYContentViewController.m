//
//  YYContentViewController.m
//  YYBaseClases_Example
//
//  Created by Yvan.Peng on 2018/3/9.
//  Copyright © 2018年 Yvan.Peng. All rights reserved.
//

#import "YYContentViewController.h"
#import <YYBaseClases/YYBaseClases-umbrella.h>
#import <YYKit/YYKit.h>

@interface YYContentViewController ()

@end

@implementation YYContentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    [self performSelector:self.sel];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 添加控件
- (void)YYButtonUpImage {
    YYButtonUpImage *button = [YYButtonUpImage buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 100, 100, 80);
    button.yy_spaceUD = 10;
    button.backgroundColor = [UIColor blueColor];
    [button setTitle:@"hello" forState:UIControlStateNormal];
    [button setImage:[UIImage imageWithColor:[UIColor redColor] size:CGSizeMake(30, 30)] forState:UIControlStateNormal];
    [self.view addSubview:button];
    
    YYButtonUpImage *button2 = [YYButtonUpImage buttonWithType:UIButtonTypeCustom];
    button2.frame = CGRectMake(201, 100, 100, 80);
    button2.backgroundColor = [UIColor blueColor];
    [button2 setTitle:@"hello" forState:UIControlStateNormal];
    [button2 setImage:[UIImage imageWithColor:[UIColor redColor] size:CGSizeMake(30, 30)] forState:UIControlStateNormal];
    [self.view addSubview:button2];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
