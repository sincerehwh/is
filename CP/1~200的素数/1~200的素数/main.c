//
//  main.c
//  1~200的素数
//
//  Created by tarena on 15/5/8.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#include <stdio.h>
#include <math.h>
int main(int argc, const char * argv[])
{
    int max = 0;
    int i = 0;
    printf("请输入一个范围 1～200以内\n");
    scanf("%d",&max);
    for (i = 2; i<=max; i++) {
        int j = 0;
        for (j = sqrt(i); j>1; j--)//sqrt开方的函数
        {
            if (i%j==0)
            {
                break;
            }
        }
        if (j == 1)
        {
            printf("%d ",i);
        }

    }
    printf("\n");
        return 0;
}

