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
        // 根据card的状态，设置button的对应的显示
        UIButton *button = self.allButtons[index];
        [button setTitle:[self titleForCard:card] forState:UIControlStateNormal];
        [button setBackgroundImage:[UIImage imageNamed:[self backgroundImageNameForCard:card]] forState:UIControlStateNormal];
        //matched  YES    NO
        //enabled   NO    YES
        button.enabled = !card.isMatched;
    }
}

//根据传入的card对象，返回该显示的title文字
-(NSString *)titleForCard:(Card *)card
{
    return  card.isFaceUp?card.cardInfo:@"";
}

//根据传入的card对象，返回该显示的按钮的背景图的名称
-(NSString *)backgroundImageNameForCard:(Card *)card
{
    return card.isFaceUp?@"cardfront.png":@"cardback.png";
}


- (IBAction)clickButton:(UIButton *)sender
{
    NSInteger index = [self.allButtons indexOfObject:sender];
    //1.把这个索引给game
    [self.game chooseCardAtIndex:index];
    //2.立即刷新界面
    [self showCards];
}








@end
