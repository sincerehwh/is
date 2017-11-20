//
//  GameViewController.m
//  CardGame
//
//  Created by tarena on 15/12/3.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "GameViewController.h"
#import "Card.h"
#import "Poker.h"
#import "Game.h"

@interface GameViewController ()

@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *allButtons;

//准备 游戏对象 + 扑克牌对象
@property(nonatomic,strong)Poker *poker;
@property(nonatomic,strong)Game *game;

@end

@implementation GameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //创建扑克牌实例
    self.poker = [[Poker alloc]init];
    //开始游戏
    self.game = [[Game alloc]initWithPoker:self.poker andNumberOfChoose:self.allButtons.count];
    [self showCards];
}

//刷新界面
-(void)showCards
{
    //遍历game中的allRandomCards
    //按照下标，将每一个card对象的数据显示到button上
    for (NSInteger index=0; index<self.allButtons.count; index++) {
        // 找到该位置对应的card对象
        Card *card = self.game.allRandomCards[index];
        // 显示纸牌的花色和大小作为按钮的title
        NSString *title = [card.suit stringByAppendingString:card.rank];
        
        [self.allButtons[index] setTitle:title forState:UIControlStateNormal];
        
    }
    
}








- (IBAction)clickButton:(UIButton *)sender
{
    NSInteger index = [self.allButtons indexOfObject:sender];
    NSLog(@"%ld",index);
}








@end
