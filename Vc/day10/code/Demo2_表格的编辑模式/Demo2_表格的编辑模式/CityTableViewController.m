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

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"城市列表";
    //配置导航栏右侧的编辑按钮
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"编辑" style:UIBarButtonItemStylePlain target:self action:@selector(clickEditButton:)];
}

// 点击右侧按钮后开启编辑模式
-(void)clickEditButton:(UIBarButtonItem *)item
{
    [self.tableView setEditing:!self.tableView.editing animated:YES];
    
    item.title = self.tableView.isEditing?@"完成":@"编辑";
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

#pragma mark - 表格的编辑功能
//问1：当前行是否可以编辑
//此方法默认返回YES
-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row == 0){
        return NO;
    }else{
        return YES;
    }
}

//问2：当前行是什么编辑样式
//默认返回delegate样式
-(UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == (self.allCitys.count-1)) {
        return UITableViewCellEditingStyleInsert;
    }else{
        return UITableViewCellEditingStyleDelete;
    }
}

//答1：提交编辑动作后，如何响应
-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle==UITableViewCellEditingStyleDelete) {
        //删除动作
        // 1.先改数据模型
        [self.allCitys removeObjectAtIndex:indexPath.row];
        
        // 2.再刷新表格
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationRight];
    }else{
        //增加动作
        City *newCity = [[City alloc]init];
        newCity.name = @"Test";
        newCity.population = 1000;
        //先改模型
        [self.allCitys addObject:newCity];
        //再刷新
        NSIndexPath *newIndexPath = [NSIndexPath indexPathForRow:self.allCitys.count-1 inSection:0];
        [tableView insertRowsAtIndexPaths:@[newIndexPath] withRowAnimation:UITableViewRowAnimationLeft];
    }
}


#pragma  mark - 移动行
//问1：该行是否可以移动
-(BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}

//答1：移动后做什么
-(void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath
{
    // 按照旧的位置，找到模型
    City *city = self.allCitys[sourceIndexPath.row];
    // 在数组中移除该元素
    [self.allCitys removeObjectAtIndex:sourceIndexPath.row];
    
    // 按照新的位置，插入回数组
    [self.allCitys insertObject:city atIndex:destinationIndexPath.row];
}










@end
