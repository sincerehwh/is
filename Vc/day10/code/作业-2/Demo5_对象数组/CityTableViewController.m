//
//  CityTableViewController.m
//  Demo5_对象数组
//
//  Created by tarena on 15/12/10.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "CityTableViewController.h"
#import "City.h"

@interface CityTableViewController ()

@property(nonatomic,strong)NSArray *allCitys;

@end

@implementation CityTableViewController

- (NSArray *)allCitys
{
    if (!_allCitys) {
        _allCitys = [City demoData];
    }
    return _allCitys;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"城市列表";
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // 有几个城市就有几个分区
    return self.allCitys.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //根据分区号，找到此分区对应的city对象
    City *city = self.allCitys[section];
    //该分区的行数，就有city的subAreas的个数决定
    return city.subAreas.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    // 根据当前行的section分区号，找到city对象
    City *city = self.allCitys[indexPath.section];
    
    // 根据行号row，找到数据在subAreas数组中的某一个数据
    cell.textLabel.text = city.subAreas[indexPath.row];
    
    return cell;
}

//设置分区头标题
//-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
//{
//    // 根据分区号，找到该分区对应的city对象
//    City *city = self.allCitys[section];
//    // 返回该城市的name做头标题
//    return city.name;
//}

//设置分区尾标题
-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    City *city = self.allCitys[section];
    return [NSString stringWithFormat:@"人口数：%ld万",city.population];
}

#pragma mark - UITableViewDelegate
//自定义分区头视图的方法
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    City *city = self.allCitys[section];
    
    UIView *headerView = [[UIView alloc]init];
    headerView.frame = CGRectMake(0, 0, self.tableView.bounds.size.width, 40);
    
    //标签
    UILabel *label = [[UILabel alloc]init];
    label.frame = headerView.bounds;
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont systemFontOfSize:30];
    label.textColor = [UIColor redColor];
    label.text = city.name;
    [headerView addSubview:label];
    
    //按钮
    UIButton *button = [[UIButton alloc]init];
    button.frame = CGRectMake(headerView.bounds.size.width-60-5, 5, 60, 30);
    button.backgroundColor = [UIColor greenColor];
    [button setTitle:@"下载" forState:UIControlStateNormal];
    [headerView addSubview:button];

    return headerView;
}

//设置分区头视图的高度
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 40;
}




//自定义分区尾视图的方法






@end
