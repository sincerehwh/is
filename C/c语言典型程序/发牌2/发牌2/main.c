//
//  main.c
//  发牌2
//
//  Created by tarena on 15/5/13.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>
char color[4][10] = {"♥️","♣️","♠️","♦️"};//字符串数组
char dian[13] = {'A','2','3','4','5','6','7','8','9','X','J','Q','K'};
int flag[4][13]={0};
int user = 0;//玩家的数量
int i = 0,j = 0;//控制循环
void start()
{
    while(1)
    {
    for (i = 0; i<13; i++)
    {
        int h = rand()%4;//花色随机
        int d = rand()%13;//点数随机
        if (flag[h][d])
        {
            i--;//发过的牌不能再出现
            continue;
        }
        else
        {
            flag[h][d] = 1;
            if (dian[d]=='X') {
                printf("%s10",color[h]);//4个花色的10点牌
        }
            else
            {
                printf("%s%c",color[h],dian[d]);
            }
        }
    }
    printf("\n");
        user++;
        if (4 == user)
        {
            exit(1);
        }
    }
}
int main(int argc, const char * argv[])
{
    srand((unsigned int)time(0));
    start();
        return 0;
}

