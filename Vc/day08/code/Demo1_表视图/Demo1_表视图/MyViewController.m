//
//  MyViewController.m
//  Demo1_表视图
//
//  Created by tarena on 15/12/9.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    UITableView *tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    //tableView.frame = self.view.bounds;
    [self.view addSubview:tableView];
    
    //为了显示数据，设置表视图的数据源代理
    tableView.dataSource = self;
    //为了表格与用户交互，或者是自定义表格外观
    //设置表视图的delegate代理
    tableView.delegate = self;
    
}

//问1：有几个分区(选答：默认是1)
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
}

//问2：每个分区有几行（必答）
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section==0) {
        return 3;
    }else if(section == 1){
        return 2;
    }else{
        return 4;
    }
}

//问3：每行什么样（必答）
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc]init];
    
    if (indexPath.section == 0) {
        cell.textLabel.text = @"Hello";
    }else if (indexPath.section == 1){
        cell.textLabel.text = @"Hello World";
    }else{
        cell.textLabel.text = @"Hello Kitty";
    }
    
    return cell;
}

//一答：点击某行后如何响应
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"section:%ld  row:%ld",indexPath.section,indexPath.row);
}

@end
