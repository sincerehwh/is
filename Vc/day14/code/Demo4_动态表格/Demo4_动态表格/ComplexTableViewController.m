//
//  ComplexTableViewController.m
//  Demo4_动态表格
//
//  Created by tarena on 15/12/17.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "ComplexTableViewController.h"
#import "News.h"
#import "NewsCell.h"
#import "DetailViewController.h"

@interface ComplexTableViewController ()
@property(nonatomic,strong)NSArray *allNews;

@end

@implementation ComplexTableViewController

- (NSArray *)allNews
{
    if (!_allNews) {
        _allNews = [News demoData];
    }
    return _allNews;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2*self.allNews.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row%2 == 0) {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell1" forIndexPath:indexPath];
        return cell;
    }else{
        NewsCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell2" forIndexPath:indexPath];
        //indexPath.row  1   3   5   7
        //数组中下标       0   1   2   3
        News *news = self.allNews[indexPath.row/2];
        cell.news = news;
        
        return cell;
    }
   
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row%2 == 0) {
        return 44;
    }else{
        return 70;
    }
}

//截获点击“查看详情”实现的跳转
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UITableViewCell *)sender
{
    //根据点击的源头cell，获取它在表格中的位置
    NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
    //根据位置找到该行对应的数据
    //得到的值：  0   2   4   6   8  10
    //想要的下标：0   1   2   3   4  5
    News *selectedNews = self.allNews[indexPath.row/2];
    //根据segue拿到要推出的目标vc
    DetailViewController *detailVC = segue.destinationViewController;
    //给目标vc赋值
    detailVC.news = selectedNews;
}









@end
