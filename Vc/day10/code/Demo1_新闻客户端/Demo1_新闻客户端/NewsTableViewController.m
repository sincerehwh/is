//
//  NewsTableViewController.m
//  Demo1_新闻客户端
//
//  Created by tarena on 15/12/11.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "NewsTableViewController.h"
#import "News.h"
#import "NewsCell.h"

@interface NewsTableViewController ()

@property(nonatomic,strong)NSArray *allNews;

@end

@implementation NewsTableViewController

- (NSArray *)allNews
{
    if (!_allNews) {
        _allNews =[News demoData];
    }
    return _allNews;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"新闻列表";
    
    // 注册cell
    // 因为自定义的cell类有xib文件，希望系统依据
    // 这个xib文件来创建cell实例，所以使用registerNib方法来注册
    // 第一个参要传入NewsCell.xib这个文件名
    [self.tableView registerNib:[UINib nibWithNibName:@"NewsCell" bundle:nil] forCellReuseIdentifier:@"NewsCell"];
    
    //设置表头视图
    UIImageView *headerImageView = [[UIImageView alloc]init];
    headerImageView.frame = CGRectMake(0, 0, 0, 210);
    headerImageView.image = [UIImage imageNamed:@"header.png"];
    self.tableView.tableHeaderView = headerImageView;
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.allNews.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    // 1.创建cell对象
    NewsCell *cell = [tableView dequeueReusableCellWithIdentifier:@"NewsCell" forIndexPath:indexPath];
    
    // 2.显示数据
    News *news = self.allNews[indexPath.row];
   
    [cell setNews:news];
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 70;
}



@end
