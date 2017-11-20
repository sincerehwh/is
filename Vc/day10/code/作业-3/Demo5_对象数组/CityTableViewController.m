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
#import "InputViewController.h"

@interface CityTableViewController ()<InputViewControllerDelegate>

@property(nonatomic,strong)NSMutableArray *allCitys;

@end

@implementation CityTableViewController

- (NSMutableArray *)allCitys
{
    if (!_allCitys) {
        _allCitys = [[City demoData] mutableCopy];
    }
    return _allCitys;
}

- (void)inputViewController:(InputViewController *)vc newCityInfo:(City *)city
{
    //先改数据模型
    [self.allCitys addObject:city];
    
    //再来刷新界面
    //[self.tableView reloadData];
    //创建代表新添加的行对应的indexPath位置
    //最后一条数据是新增的
    //它对应的section是0
    //对应的row，就是最后一个元素的下标
    //数组长度-1
    NSIndexPath *newIndexPath = [NSIndexPath indexPathForRow:self.allCitys.count-1 inSection:0];
    //tableView按照新指定的indexPath,只创建
    //该位置对应的新的cell对象，并插入到tableView中
    [self.tableView insertRowsAtIndexPaths:@[newIndexPath] withRowAnimation:UITableViewRowAnimationLeft];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"城市列表";
    //配置导航栏右侧的加号按钮
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(clickAddButton:)];
}

-(void)clickAddButton:(UIBarButtonItem *)sender
{
    // 1.创建负责输入数据的控制器的实例
    InputViewController *inputVC = [[InputViewController alloc]init];
    
    inputVC.delegate = self;
    
    // 2.推出vc
    [self.navigationController pushViewController:inputVC animated:YES];
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
    DetailViewController *detailVC = [[DetailViewController alloc]init];
    
    //将选中的行对应的city对象给detailVC来显示
    detailVC.city = selectedCity;
    
    //推出DetailViewController
    [self.navigationController pushViewController:detailVC animated:YES];
    
}












@end
