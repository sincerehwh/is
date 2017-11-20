//
//  ViewController.m
//  TMessage
//
//  Created by tarena on 15/12/29.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "ViewController.h"
#import "Message.h"
#import "MessageCell.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

//工具条的底部约束
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *bottomLayoutConstraint;

@property (weak, nonatomic) IBOutlet UITextField *textField;

@property(nonatomic,strong)NSMutableArray *allMessage;

@end

@implementation ViewController

- (NSMutableArray *)allMessage
{
    if (!_allMessage) {
        _allMessage = [[Message demoData] mutableCopy];
    }
    return _allMessage;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.allMessage.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // dequeue出一个cell
    MessageCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell1" forIndexPath:indexPath];
    // 该位置对应的Message对象
    Message *msg = self.allMessage[indexPath.row];
    
    // 显示内容
    cell.contentLabel.text = msg.content;
    
    return cell;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    //为了让tableView自适应高度，需要设置如下两个属性
    self.tableView.estimatedRowHeight = 70;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    //设置tableView的内边距，使得内容向下错64个点
    self.tableView.contentInset = UIEdgeInsetsMake(64, 0, 0, 0);
}


//注册键盘通知
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(openKeyboard:) name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(closeKeyboard:) name:UIKeyboardWillHideNotification object:nil];
}

//取消键盘通知
- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardWillShowNotification object:nil];
     [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardWillHideNotification object:nil];
}

//收到弹起键盘的通知后执行
-(void)openKeyboard:(NSNotification *)notification
{
    //读取弹起的键盘的高度
    CGFloat keyboardHeight = [notification.userInfo[UIKeyboardFrameEndUserInfoKey] CGRectValue].size.height;
    //读取动画的时长
    CGFloat duration = [notification.userInfo[UIKeyboardAnimationDurationUserInfoKey] floatValue];
    
    //读取动画的种类
    NSInteger option = [notification.userInfo[UIKeyboardAnimationCurveUserInfoKey] intValue];
    
    //修改底部输入视图的bottom约束
    self.bottomLayoutConstraint.constant = keyboardHeight;
    
    [UIView animateWithDuration:duration delay:0 options:option animations:^{
        [self.view layoutIfNeeded];
        //键盘弹起后，表视图滚动到最底部
        [self scrollToTableViewLastRow];
    } completion:nil];
}

//收到收起键盘的通知后执行
-(void)closeKeyboard:(NSNotification *)notification
{
    //读取动画的时长
    CGFloat duration = [notification.userInfo[UIKeyboardAnimationDurationUserInfoKey] floatValue];
    
    //读取动画的种类
    NSInteger option = [notification.userInfo[UIKeyboardAnimationCurveUserInfoKey] intValue];
    
    //修改底部输入视图的bottom约束
    self.bottomLayoutConstraint.constant = 0;
    
    [UIView animateWithDuration:duration delay:0 options:option animations:^{
        [self.view layoutIfNeeded];
    } completion:nil];
}


// 点击右下角返回按键，发消息，收键盘
- (IBAction)clickReturnKey:(UITextField *)sender {
    NSString *newContent = self.textField.text;
    if (newContent.length == 0) {
        return;
    }
    // 构建Message对象
    Message *newMessage = [[Message alloc]init];
    newMessage.content = newContent;
    newMessage.fromMe = YES;
    
    // 将新的Message保存到模型中
    [self.allMessage addObject:newMessage];
    self.textField.text = @"";
    
    // 局部刷新界面
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:self.allMessage.count-1 inSection:0];
    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];

}


//控制器表视图滚动到最底部
-(void)scrollToTableViewLastRow
{
    NSIndexPath *lastIndexPath = [NSIndexPath indexPathForRow:self.allMessage.count-1  inSection:0];
    
    [self.tableView scrollToRowAtIndexPath:lastIndexPath atScrollPosition:UITableViewScrollPositionBottom animated:YES];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    //界面显示后，表格已经生成了，再滚动到底部
    [self scrollToTableViewLastRow];
}



@end
