//
//  main.c
//  捉黑A发牌程序
//
//  Created by tarena on 14-11-7.
//  Copyright (c) 2014年 tarena. All rights reserved.
//

#include <stdio.h>
#include <string.h>
#include <time.h>
#include <stdlib.h>

//声明一个数组来保存花色
char  huase[4][100] = {"♣","♠","♥","♦"};//字符串数组
char  dian[13] = {'A','2','3','4','5','6','7','8','9','X','J','Q','K'};
int flag[4][13] = {0};
int user = 0;//玩家的数量
int i = 0,j = 0;//控制循环用的

void start()
{
    while(1)
    {
    srand((int)time(0));
    for(i = 0;i < 3; i++)
    {
        int h = rand()%4;//花色随机
        int d = rand()%13;//点数随机
        if(flag[h][d])
        {
            i--;//发过的牌不能再出现
            continue;
        }
        else
        {
            flag[h][d] = 1;
            if(dian[d] == 'X')
            {
                printf("%s10 ",huase[h]);//4个花色的10点牌
            }
            else
            {
                printf(" %s%c ",huase[h],dian[d]);
            }
        }
    }
    printf("\n");
    //每发完一个玩家的牌
    user++;
        if(4 == user)
            exit(1);//正好牌发完程序退出
    }
}




int main(int argc, const char * argv[])
{
    start();//调用
    return 0;
}

