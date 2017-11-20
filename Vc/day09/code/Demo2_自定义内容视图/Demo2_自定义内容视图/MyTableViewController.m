//
//  MyTableViewController.m
//  Demo2_自定义内容视图
//
//  Created by tarena on 15/12/10.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "MyTableViewController.h"

@interface MyTableViewController ()

@end

@implementation MyTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell1"];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 100;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell1" forIndexPath:indexPath];
    
    //先尝试着去cell的contentView中
    //按照tag值为1，去取，看是否有这样一个label
    //没有label，再新建
    
    UILabel *label = [cell.contentView viewWithTag:1];
    if (label == nil) {
        label = [[UILabel alloc]init];
        label.frame = CGRectMake(0, 0, cell.bounds.size.width, cell.bounds.size.height);
        label.font = [UIFont italicSystemFontOfSize:35];
        label.textColor = [UIColor redColor];
        label.textAlignment = NSTextAlignmentCenter;
        //为label添加一个tag值，做标记
        label.tag = 1;
        [cell.contentView addSubview:label];
        
    }

    label.text = [NSString stringWithFormat:@"%ld",indexPath.row+1];
    return cell;
}

@end
