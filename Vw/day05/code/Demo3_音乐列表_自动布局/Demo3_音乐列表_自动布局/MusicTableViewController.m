//
//  MusicTableViewController.m
//  Demo3_音乐列表_自动布局
//
//  Created by tarena on 15/12/24.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "MusicTableViewController.h"
#import "TRMusic.h"
#import "TRMusicGroup.h"
#import "MusicCell.h"

@interface MusicTableViewController ()
@property(nonatomic,strong)TRMusicGroup *group;
@end

@implementation MusicTableViewController

- (TRMusicGroup *)group
{
    if (!_group) {
        _group = [TRMusicGroup fakeData][0];
    }
    return _group;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}



#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.group.musics.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MusicCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MusicCell" forIndexPath:indexPath];
    
    TRMusic *music = self.group.musics[indexPath.row];
    cell.music = music;
    
    return cell;
}


@end
