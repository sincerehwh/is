//
//  main.c
//  day10-1 放球与取球
//
//  Created by tarena on 15-5-14.
//  Copyright (c) 2015年 Tarena. All rights reserved.
//

#include <stdio.h>
//1.创建一个网兜，用来保存球
int balls[3] = {0};
//2.放球的问题
//用来保存网兜的状态
int ballIndex = -1;
int isFull();
int isFull(){
    if (ballIndex==2) {
        return 1;//网兜满了
    }else{
        return 0;//网兜未满
    }
}
//放球的操作
void push(int ball);
void push(int ball){
    if(!isFull()){//不满放球
        ballIndex++;
        balls[ballIndex] = ball;//保存球
        printf("向网兜放了一个球:%d!\n",ball);
    }else{
        //满了不可以放球
        printf("网兜已满，不可放球!\n");
    }
    
}
//3.取球操作
int isEmpty();
int isEmpty(){
    if (ballIndex==-1) {
        return 1;//空
    }else{
        return 0;
    }
}

int pop();
int pop(){
    if (!isEmpty()) {//网兜不空，可以取球
        //int temp = balls[ballIndex--];
        int temp = balls[ballIndex];
        //当球取走的时候，应该将原有的位置清0
        balls[ballIndex] = 0;
        ballIndex--;
        printf("取出的球为:%d\n",temp);
        return temp;
    }else{//网兜空了，不能取球
        printf("网兜空了，不能取球!\n");
        return 0;
    }
}

//4.查看网兜的状态
void showBalls();
void showBalls(){
    for (int i = 2; i>=0; i--) {
        printf("balls[%d]:%d\n",i,balls[i]);
    }
}

int main(int argc, const char * argv[]) {
    showBalls();
    push(1);
    showBalls();
    push(2);
    showBalls();
    push(3);
    showBalls();
    push(1);
    showBalls();
    int ball = pop();
    printf("main: ball:%d\n",ball);
    showBalls();
    pop();
    showBalls();
    pop();
    showBalls();
    ball = pop();
    printf("main: ball:%d\n",ball);
    showBalls();
    return 0;
}




