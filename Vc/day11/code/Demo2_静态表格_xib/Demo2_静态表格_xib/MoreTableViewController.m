//
//  MoreTableViewController.m
//  Demo2_静态表格_xib
//
//  Created by tarena on 15/12/14.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "MoreTableViewController.h"

@interface MoreTableViewController ()
@property (strong, nonatomic) IBOutlet UITableViewCell *greenDiamondCell;

@property (strong, nonatomic) IBOutlet UITableViewCell *freeDataCell;

@property (strong, nonatomic) IBOutlet UITableViewCell *qPlayCell;

@property (strong, nonatomic) IBOutlet UITableViewCell *translateCell;

@property (strong, nonatomic) IBOutlet UITableViewCell *ontimeCloseCell;

@property (strong, nonatomic) IBOutlet UITableViewCell *exitCell;
@property (strong, nonatomic) IBOutlet UITableViewCell *userInfoCell;

@property (weak, nonatomic) IBOutlet UIImageView *headerImageView;

@property (weak, nonatomic) IBOutlet UILabel *screenNameLabel;

@end

@implementation MoreTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.headerImageView.layer.cornerRadius = 20;
    self.headerImageView.layer.masksToBounds = YES;
    self.headerImageView.layer.borderWidth = 1;
    self.headerImageView.layer.borderColor = [UIColor redColor].CGColor;
    self.screenNameLabel.text = @"xx";
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 4;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    switch (section) {
        case 0:
            return 1;
        case 1:
            return 4;
        case 2:
            return 1;
        default:
            return 1;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.section) {
        case 0:
            return self.userInfoCell;
        case 1:
            if (indexPath.row == 0) {
                return self.greenDiamondCell;
            }else if(indexPath.row == 1){
                return self.freeDataCell;
            }else if(indexPath.row ==2){
                return self.qPlayCell;
            }else{
                return self.translateCell;
            }
        case 2:
            return self.ontimeCloseCell;
        default:
            return self.exitCell;
    }
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        return 100;
    }else{
        return 44;
    }
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 10;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 10;
}

@end
