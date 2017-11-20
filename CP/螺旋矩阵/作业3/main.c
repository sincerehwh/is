//
//  main.c
//  作业3
//
//  Created by tarena on 14-11-7.
//  Copyright (c) 2014年 tarena. All rights reserved.
/*
     N阶螺旋矩阵
 
 */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main(int argc, const char * argv[])
{
    int n = 5,max = 25,i = 0,j = 0,r ,k,c = -1,ang = -1,px,py,l = 0;
    int *matrix = NULL;
    matrix = (int *)calloc(n*n,sizeof(int));
    for(i = n,k = 2*n;i > 0;i = --k/2)
    {
        ++ang;px = sin(ang*M_PI_2);py = cos(ang *M_PI_2);
        for(j = 0; j < i; j++)
        {
            r += px; c += py;
            *(matrix + n*r+c) = (++l > max)?0:l;
        }
    }
    for(i = 0;i < n*n;printf("%2d%c",matrix[i++],((i)%n == 0)?'\n':' '));
    return 0;
}

