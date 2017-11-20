//
//  ShowResultTableViewController.m
//  Demo4_搜索框
//
//  Created by tarena on 15/12/14.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "ShowResultTableViewController.h"
#import "Product.h"

@interface ShowResultTableViewController ()

@end

@implementation ShowResultTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.resultData.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    // 找到某一个商品，然后显示商品名到cell中
    Product *p = self.resultData[indexPath.row];
    cell.textLabel.text = p.name;
    
    return cell;
}


@end
