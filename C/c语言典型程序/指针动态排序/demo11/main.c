//
//  main.c
//  demo11
//
//  Created by tarena on 15/5/14.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#include <stdio.h>
#include <stdbool.h>
//动态排序的例子
//自定义类型，给已经存在的类型起别名
typedef bool (*pfun)(int ,int);
//动态排序的函数
//比如说在不知道要排序的数据时，就要求我们预留接口写出排序函数
void sortArr(int a[],int n,pfun p);
void sortArr(int a[],int n,pfun p)
{
    for (int i = 0; i<n; i++) {
        for (int j = 0; j<n-i-1; j++) {
            //pfun函数指针来排序
            //用传入的函数来排序
            if (p(a[j],a[j+1])) {
                int temp = a[j];
                a[j] = a[j+1];
                a[j+1] = temp;
            }
        }
    }
}
//第一种情况 升序排列
bool comp_up(int a,int b)
{
    return a>b;
}
//第二种情况 降序排列
bool comp_down(int a,int b)
{
    return a<b;
}
//第三种情况 按照个位上的数大小
bool comp_num(int a,int b)
{
    int na  = a%10;//拿个位数
    int nb = b%10;
    return na>nb;
}
int main(int argc, const char * argv[])
{
    int a[5] = {12,23,43,32,321};
    //冒泡排序 更加具有灵活性
    sortArr(a, 5, comp_up);
    for (int i = 0; i<5; i++) {
        printf("%d\n",a[i]);
    }

    
    return 0;
}













