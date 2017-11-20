//
//  MyTableViewController.m
//  Demo2_表视图控制器
//
//  Created by tarena on 15/12/9.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "MyTableViewController.h"

@interface MyTableViewController ()

@end

@implementation MyTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 100;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //先尝试着从tableView中取，看有没有回收了得cell
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCell"];
    //如果没有取到可重用的单元格，则新建
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault
           reuseIdentifier:@"MyCell"];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"%ld",indexPath.row+1];
    
    return cell;
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80;
}



-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"....");
}

@end
