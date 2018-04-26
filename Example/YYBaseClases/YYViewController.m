//
//  YYViewController.m
//  YYBaseClases
//
//  Created by Yvan.Peng on 03/09/2018.
//  Copyright (c) 2018 Yvan.Peng. All rights reserved.
//

#import "YYViewController.h"
#import "YYContentViewController.h"

@interface YYViewController () <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, copy) NSArray *dataSource;
@property (nonatomic, copy) NSArray *titles;
@end

@implementation YYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.dataSource = @[
                        @"YYButtonUpImage"
                        ];
    
    
    self.titles     = @[
                        @"图片在上,标题在下"
                        ];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
    }
    cell.textLabel.text = self.titles[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    YYContentViewController *vc = [YYContentViewController new];
    vc.title = self.dataSource[indexPath.row];
    vc.sel = NSSelectorFromString(self.dataSource[indexPath.row]);
    [self.navigationController pushViewController:vc animated:YES];
}
@end
