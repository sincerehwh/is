//
//  main.c
//  Demo_4 冒泡排序
//
//  Created by tarena on 14-11-6.
//  Copyright (c) 2014年 tarena. All rights reserved.
/*
      两循环、一判断 、三交换
 */

#include <stdio.h>

int main(int argc, const char * argv[])
{

    int i = 0,j = 0,temp = 0;
    //数据源
    int a[10] = {10,4,33,25,17,64,56,128,256,99};
    
    for(i = 0;i < 10; i++)//轮
    {
        for(j = 0; j < 10-1-i;j++)//每一个数比较次数
        {
              if(a[j] > a[j+1]) //默认 升  写 < 就是降序
              {
                  temp = a[j];
                  a[j] = a[j+1];//交换
                  a[j+1] = temp;
              }
        }
    }
    
    //输出数据
    for(i = 0; i < 10; i++)
    {
        printf("a[%d] = %d\n",i,a[i]);
    }
    return 0;
}

