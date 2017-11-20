//
//  main.m
//  Day01_1
//
//  Created by tarena on 15/9/17.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

void show(NSString* str)
{
    NSLog(@"str=%@", str);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool
    {//自动释放池
        // insert code here...
        NSLog(@"Hello, World!");//等同于printf的作用,字符串前加@表示是OC的字符串
        //OC完全兼容C,所以可以在OC中写C语言程序
        int x = 10;
        double pi = 3.1415926;
        printf("x=%d, pi=%lf\n", x, pi);
        NSLog(@"x=%d, pi=%lf", x, pi);
        //C语言风格的字符串,在OC中不建议使用
        char* str = "This is a C string.";
        NSLog(@"str=%s", str);
        //OC语言的字符串,是主要应用
        NSString* str1 = @"This is a OC string.";
        NSLog(@"str1=%@", str1);//NSString的格式控制符为%@
        NSString* str2 = str1;
        NSLog(@"str2=%@", str2);
        
        show(str2);
    }
    return 0;
}
