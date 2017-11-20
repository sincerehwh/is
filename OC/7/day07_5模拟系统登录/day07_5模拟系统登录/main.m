//
//  main.m
//  day07_5模拟系统登录
//
//  Created by tarena on 15/9/24.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char name[100];
        NSLog(@"请输入一个用户名:");
        scanf("%s", name);
        NSString *strName = [NSString stringWithFormat:@"%s", name];
        char password[100];
        NSLog(@"请输入一个密码:");
        scanf("%s", password);
        NSString *strPassword = [NSString stringWithCString:password encoding:NSASCIIStringEncoding];
        
        NSString *fileName = [NSString stringWithContentsOfFile:@"/Users/tarena/Desktop/name" encoding:NSUTF8StringEncoding error:nil];
        if ([strName isEqualToString:fileName] == YES)
        {
            NSString *filePassword = [NSString  stringWithContentsOfFile:@"/Users/tarena/Desktop/password" encoding:NSUTF8StringEncoding error:nil];
            if ([strPassword isEqualToString:filePassword] == YES)
            {
                NSLog(@"登录成功");
            }
            else
            {
                NSLog(@"用户名或密码错误");
            }
        }
        else
        {
            NSLog(@"用户名或密码错误");
        }
    }
    return 0;
}
