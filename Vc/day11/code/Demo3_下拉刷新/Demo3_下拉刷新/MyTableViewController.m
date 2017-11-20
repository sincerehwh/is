//
//  MyTableViewController.m
//  Demo3_下拉刷新
//
//  Created by tarena on 15/12/14.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "MyTableViewController.h"

@interface MyTableViewController ()

@property(nonatomic,strong)NSMutableArray *allNames;

@end

@implementation MyTableViewController

-(NSMutableArray *)allNames
{
    if (!_allNames) {
        _allNames = [NSMutableArray array];
        [_allNames addObject:@"张三"];
        [_allNames addObject:@"李四"];
        [_allNames addObject:@"王五"];
        [_allNames addObject:@"赵六"];
    }
    return _allNames;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"MyCell"];
    // 1.创建UIRefreshControl控件实例
    UIRefreshControl *rc = [[UIRefreshControl alloc]init];
    // 2.将控件赋给控制器的refreshControl属性
    self.refreshControl = rc;
    
    // 3.添加valueChanged事件的监听
    [rc addTarget:self action:@selector(refresh:) forControlEvents:UIControlEventValueChanged];
    
}


-(void)refresh:(UIRefreshControl *)sender
{
    //判断控件是否处于转圈的状态
    //如果处于状态，则说明用户有了下拉动作
    //发网络请求，传输新的数据，等传输结束后
    //设置刷新控件为结束刷新，停止旋转
    if ([sender isRefreshing]) {
        //发网络请求
        //模拟网络请求3秒后，得到了“测试”数据
        //在refreshOver方法中，将返回的“测试”数据
        //保存到数据模型中，并更新界面
        [self performSelector:@selector(refreshOver:) withObject:@"测试" afterDelay:3];
    }
}

-(void)refreshOver:(NSString *)result
{
    // 将数据保存到模型中
    [self.allNames insertObject:result atIndex:0];
    
    // 更新界面
    NSIndexPath *newIndexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    [self.tableView insertRowsAtIndexPaths:@[newIndexPath] withRowAnimation:UITableViewRowAnimationTop];
    
    // 修改RefreshControl控件，停止旋转
    [self.refreshControl endRefreshing];
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.allNames.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCell" forIndexPath:indexPath];
    
    cell.textLabel.text = self.allNames[indexPath.row];
    
    return cell;
}

@end
