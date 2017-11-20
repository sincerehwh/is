//
//  SettingTableViewController.m
//  Demo1_静态表格_纯代码
//
//  Created by tarena on 15/12/14.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "SettingTableViewController.h"
#import "User.h"

@interface SettingTableViewController ()
//静态表格中的可变数据合起来是一个用户信息对象
//所以，这回表视图的数据模型选择User
@property(nonatomic,strong)User *currentUser;

@end

@implementation SettingTableViewController

- (User *)currentUser
{
    if (!_currentUser) {
        _currentUser = [[User alloc]init];
        _currentUser.wechatNum = @"abc";
        _currentUser.qqNum = @"9875";
        _currentUser.phoneNum = @"1234567890";
        _currentUser.email = @"aaa@qq.com";
        _currentUser.protect = NO;
    }
    return _currentUser;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"账号与安全";
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    switch (section) {
        case 0:
            return 1;
        case 1:
            return 3;
        default:
            return 3;
    }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:nil];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    switch (indexPath.section) {
        case 0://第一个分区
            cell.accessoryType = UITableViewCellAccessoryNone;
            cell.textLabel.text = @"微信号";
            cell.detailTextLabel.text = self.currentUser.wechatNum;
            break;
        case 1://第二个分区
            if (indexPath.row == 0 ) {//第一行：qq
                cell.textLabel.text = @" QQ号";
                cell.detailTextLabel.text = self.currentUser.qqNum;
            }else if(indexPath.row ==1){//第二行：手机
                cell.textLabel.text = @"手机号";
                cell.detailTextLabel.text = self.currentUser.phoneNum;
            }else{//第三行：邮箱
                cell.textLabel.text = @"邮箱地址";
                cell.detailTextLabel.text = self.currentUser.email;
            }
            break;
        case 2://第三个分区
            if (indexPath.row == 0) {
                cell.textLabel.text = @"微信密码";
            }else if(indexPath.row == 1){
                cell.textLabel.text = @"账号保护";
                cell.detailTextLabel.text = self.currentUser.isProtect?@"已保护":@"未保护";
                //添加图片子视图
                UIImageView *imageView = [[ UIImageView alloc]initWithFrame:CGRectMake(210, 12, 20, 20)];
                imageView.image  = [UIImage imageNamed:self.currentUser.isProtect?@"ProfileLockOn":@"ProfileLockOff"];
                [cell.contentView addSubview:imageView];
            }else{
                cell.textLabel.text = @"微信安全中心";
            }
            break;
    }
    return cell;
}

@end
