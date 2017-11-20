//
//  CityTableViewController.m
//  Demo5_对象数组
//
//  Created by tarena on 15/12/10.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "CityTableViewController.h"
#import "City.h"
#import "DetailViewController.h"

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
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.allCitys.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CityCell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"CityCell"];
    }
    
    //设置cell的辅助视图
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    //按照行号取出对应的城市对象
    City *city = self.allCitys[indexPath.row];
    
    //显示城市对象的各个属性到指定位置
    cell.textLabel.text = city.name;
    //cell.detailTextLabel.text =[NSString stringWithFormat:@"%ld万",city.population];
    
    return cell;
}

//点击单元格后有响应
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    City *selectedCity = self.allCitys[indexPath.row];
    //创建显示详情的vc实例
    //DetailViewController *detailVC = [[DetailViewController alloc]init];
    
    //将选中的行对应的city对象给detailVC来显示
    //detailVC.city = selectedCity;
    
    //推出DetailViewController
    //[self.navigationController pushViewController:detailVC animated:YES];
    
}












@end
