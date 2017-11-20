//
//  main.c
//  Demo_12 异或加密
//
//  Created by tarena on 14-11-3.
//  Copyright (c) 2014年 tarena. All rights reserved.
//

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
/*
    使用异或原理加密
 */
char file_name[256] = {0};
char temp_file[256] = "temp1234567890.temp";
char pass_word[20] = "123456";
char ch = 0;
int pwd_len = 0;
int i = 0;
FILE *fp = NULL;
FILE *fp_temp = NULL;


void inputpass();
void menu();

void inputpass()
{
    scanf("%s",pass_word);
}


void menu()
{
    printf("**************************************\n");
    printf("                  代码加密器1.0\n");
    printf("**************************************\n");
    printf("请输入你要加密的文件!\n");
    scanf("%s",file_name);
    fp = fopen(file_name, "rb");
    if(NULL == fp)
    {
        printf("文件打开失败\n");
        exit(1);
    }
    printf("输入密码:如 123456\n");
    inputpass();
    pwd_len = (int)strlen(pass_word);
    if(0 == pwd_len)
    {
        printf("对不起！密码长度不能为零!\n");
        exit(2);
    }
    //都输入正确
    fp_temp = fopen(temp_file, "wb");
    while (1)
    {
        ch = fgetc(fp);
        if(feof(fp))
        {
            break;
        }
        ch ^=pass_word[i++];
        fputc(ch, fp_temp);
        if(i == pwd_len)
        {
            i = 0;
        }
    }
    fclose(fp);
    fclose(fp_temp);
    remove(file_name);
    rename(temp_file, file_name);
    printf("亲~加密完成!\n");
}




int main(int argc, const char * argv[])
{
    menu();
    return 0;
}

