//
//  main.c
//  day11-2 扫雷
//
//  Created by tarena on 15-5-15.
//  Copyright (c) 2015年 Tarena. All rights reserved.
//

#include <stdio.h>
#include <time.h>
#include <stdlib.h>
int main(int argc, const char * argv[]) {
    //a.雷区 地图 5*5 正方形
    int size = 0;
    printf("请输入雷区的大小:\n");
    scanf("%d",&size);
    //生成雷区
    int map[size][size];
    //b.生成雷 -1就是雷
    srand((unsigned int)time(0));
    //生成雷的个数
    for (int i = 0; i<size; i++) {
        int x = rand()%size;//随机行
        int y = rand()%size;//随机列
        if (map[x][y]!=-1) { //以前不是雷
            map[x][y] = -1;//设置成雷
        }else{//以前是雷
            i--;//重新生成雷
        }
    }
    //手动初始化 将非雷的位置清0
    for (int i = 0; i<size; i++) {
        for (int j = 0; j<size; j++) {
            if (map[i][j]!=-1) {
                map[i][j] = 0;
            }
        }
    }
    
    //c.根据雷的位置生成其它的数值
    //统计8个格中是否有雷
    for (int i = 0; i<size; i++) {
        for (int j = 0; j<size; j++) {
            if(map[i][j]==-1){//如果是雷就不需要统计
                continue;
            }
            //不是雷的时候，就需要统计八个方向雷的个数
            int num = 0;
            /*左上 上 右上
              左  i,j 右
              左下 下 右下
            */
            //i>0&&j>0 描述合理的位置
            //map[i][j] 描述是位置的数组
            //左上
            if(i>0&&j>0&&map[i-1][j-1]==-1) num++;
            //上
            if (i>0&&map[i-1][j]==-1)num++;
            //右上
            if (i>0&&j<size-1&&map[i-1][j+1]==-1) num++;
            //左
            if (j>0&&map[i][j-1]==-1)num++;
            //右
            if (j<size-1&&map[i][j+1]==-1)num++;
            //左下
            if (i<size-1&&j>0&&map[i+1][j-1]==-1)num++;
            //下
            if (i<size-1&&map[i+1][j]==-1)num++;
            //右下
            if (i<size-1&&j<size-1&&map[i+1][j+1]==-1)num++;
            //统计雷的个数 并赋值
            map[i][j] = num;
        }
    }
    
    //查看雷区
    /*
    for (int i = 0; i<size; i++) {
        for (int j = 0; j<size; j++) {
            printf("%d\t",map[i][j]);
        }
        printf("\n");
    }
    */
    
    //用户操作部分
    int map2[size][size];
    //手动的进行初始化操作
    for (int i = 0; i<size; i++) {
        for (int j = 0; j<size; j++) {
            map2[i][j] = 0;
        }
    }
    while (1) {
        //显示地图
        for (int i = 0; i<size; i++) {
            for (int j = 0; j<size; j++) {
                printf("%d\t",map2[i][j]);
            }
            printf("\n");
        }
        //输入下标
        int x = -1;
        int y = -1;
        printf("请输入您要选择的位置:\n");
        printf("请输入x的值:\n");//行坐标
        scanf("%d",&x);
        printf("请输入y的值:\n");//列坐标
        scanf("%d",&y);
        //判断位置 有没有踩中雷
        if (map[x][y]==-1) {
            printf("Game Over!您踩中雷了!\n");
        }else{//没踩中雷
            map2[x][y]=map[x][y];
        }
    }
    
    return 0;
}








