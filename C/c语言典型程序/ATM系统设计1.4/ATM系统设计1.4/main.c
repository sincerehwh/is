//
//  main.c
//  ATM系统设计1.4
//
//  Created by tarena on 15/5/13.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#include <stdio.h>
#include <string.h>
#include <stdlib.h>


//菜单函数
void menu(void);
//登录函数
void login(char a[]);
//存款函数
double SaveMoney(void);
//取款函数
double DrawMoney(void);
//查询函数
double Search(void);

void menu(void)
{
    printf("***************\n");
    printf("1.查询   2.存钱\n");
    printf("3.转账   4.取款\n");
    printf("5.改密   6.其它\n");
    printf("***************\n");
}

void login(char a[])
{
    char user[20] = "1234";
    char password[20] = "888888";
    int error = 0;
    printf("请输入账号\n");
    gets(a);
    if (strcmp(a, user)==0)
    {
        printf("请输入密码\n");
    labe:
        gets(a);
        if (strcmp(a, password)==0)
        {
            menu();
        }
        else
        {
            printf("密码错误 请重新输入\n");
            error++;
            if (3==error) {
                printf("密码错误\n");
                exit(1);
            }
            goto labe;
        }
    }
    else
    {
        printf("没有该用户\n");
    }

}

double SaveMoney(void)
{
    int a = 0;//面值
    int b = 0;//张数
    printf("**************\n");
    printf("请输入面值\n");
    scanf("%d",&a);
    printf("请输入张数\n");
    scanf("%d",&b);
    printf("**************\n");
    return a*b;
}

double DrawMoney(void)
{
    printf("****************\n");
    printf("1.300     2.500\n");
    printf("3.1500    4.2000\n");
    printf("****************\n");
    return -1;
}

double Search(void)
{
    int num = 0;
    int n = 0;
    printf("请输入取得钱数,例如1\n");
    scanf("%d",&n);
    num = SaveMoney();
    DrawMoney();
    switch (n) {
        case 1:
            num = num - 300;
            printf("卡内余额%d\n",num);
            break;
            case 2:
            printf("卡内余额%d\n",num = num-500);
            break;
            
        default:
            break;
    }
    return -1;
    
}

int main(int argc, const char * argv[])
{
    Search();
           return 0;
}

