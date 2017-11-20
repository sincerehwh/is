//
//  main.c
//  作业 1
//
//  Created by tarena on 14-11-5.
//  Copyright (c) 2014年 tarena. All rights reserved.
/*
     套打菱形
 */

#include <stdio.h>


int main(int argc, const char * argv[])
{
    //空心菱形
    int x = 0,y = 0;
    int r = 5;//菱形半径
    
    for(y = 0; y <= 2*r; y++){
        for(x = 0; x <= 2*r ; x++)
            (y == r-x || y == x-r || y == x+r || y == -x+3*r)?printf("*"):printf(" ");
        printf("\n");
    }
    
    //实心菱形
    for(y = 0; y <= 2*r; y++){
        for(x = 0; x <= 2*r ; x++)
            (y >= r-x && y >= x-r && y <= x+r && y <= -x+3*r)?printf("*"):printf(" ");
        printf("\n");
    }
    
    
      return 0;
}

