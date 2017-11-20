//
//  SubareaTableViewController.m
//  Demo5_对象数组
//
//  Created by tarena on 15/12/11.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "SubareaTableViewController.h"

@interface SubareaTableViewController ()

@end

@implementation SubareaTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = self.city.name;
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"SubAreaCell"];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.city.subAreas.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SubAreaCell" forIndexPath:indexPath];
    
    cell.textLabel.text = self.city.subAreas[indexPath.row];
    
    return cell;
}
@end
