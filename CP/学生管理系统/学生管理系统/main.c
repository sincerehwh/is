//
//  main.c
//  学生管理系统
//
//  Created by tarena on 15/5/15.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>


struct student
{
    int no;
    char name[20];
    double score;
};
int count = 0;//计数器
int i = 0,error = 0;//记错
int j = 0,temp = 0;//计数
char user[20] = "admin";
char pass[20] = "admin";
char tempData[20] = "";

struct student stu[50] = {0};//结构体数组
//函数声明
void login(void);//登录函数
void menu(void);//菜单函数
//业务层逻辑
int initstudent(void);//添加学生数据
int deletestudent(void);//删除学生数据
int findstudent(void);//查找学生
void changestudent(void);//修改学生信息
void sortstudentScore(struct student sut[],int n);//排序
void showAllStudent(void);//遍历学生
void login(void)
{
    printf("*************\n");
    printf("请输入用户名:\n");
    scanf("%s",tempData);
    if (strcmp(tempData, user)==0)
    {
    labe:
        printf("请输入密码\n");
        scanf("%s",tempData);
        if (strcmp(tempData, pass)==0)
        {//进入系统
            menu();
        }
        else
        {
            error++;
            if (3==error) {
                exit(1);
                goto labe;
            }
        }
    }
    else
    {
        printf("账号不存在\n");
        exit(1);
    }
}
void menu(void)
{
    do
    {
    printf("******************\n");
    printf("1:遍历所有学生\n");
    printf("2:初始化学生信息\n");
    printf("3:查找指定学生信息\n");
    printf("4:删除指定学生信息\n");
    printf("5:修改指定学生信息\n");
    printf("6:按成绩排序\n");
    printf("7:退出\n");
    printf("******************\n");
    int select = 0;
    printf("请输入:\n");
    scanf("%d",&select);
    switch (select) {
        case 1:
            printf("1:遍历所有学生\n");
            break;
            case 2:
            printf("2:初始化学生信息\n");
            count = initstudent();
            break;
            case 3:
            printf("3:查找指定学生信息\n");
            break;
            case 4:
            printf("4:删除指定学生信息\n");
            break;
            case 5:
            printf("5:修改指定学生信息\n");
            break;
            case 6:
            printf("6:按程序排序\n");
            break;
            case 7:
            printf("7:退出\n");
            break;
        default:
            break;
    }
        sleep(2);
        system("clear");
    }while(getchar()!='q');//输入字符q退出
}
int initstudent(void)
{
    do {
        printf("请输入学号\n");
        scanf("%d",&stu[i].no);
        printf("请输入姓名\n");
        scanf("%s",stu[i].name);
        printf("请输入成绩\n");
        scanf("%lf",&stu[i].score);
        count++;//学生人数的＋＋
        printf("是否继续输入?q退出\n");
        getchar();//空字符
        if (getchar()=='q') {
            break;
        }
    } while (1);
    return count-1;
}
int findstudent(void)
{
    return 0;
}
int main(int argc, const char * argv[])
{

    // insert code here...
    printf("Hello, World!\n");
    return 0;
}

