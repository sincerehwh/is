//
//  main.m
//  day07_1方法选择器
//
//  Created by tarena on 15/9/24.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRStudent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        TRStudent *stu = [[TRStudent alloc] initWithName:@"张三" andID:1000];
        
        SEL sel = @selector(study);
        if ([TRStudent instancesRespondToSelector:sel] == YES)
        {
            NSLog(@"类TRStudent中 存在 study方法");
        }
        else
        {
            NSLog(@"类TRStudent中 不存在 study方法");
        }
        if ([TRStudent instancesRespondToSelector:@selector(learn)] == YES)
        {
            NSLog(@"类TRSTudent中 存在 learn方法");
        }
        else
        {
            NSLog(@"类TRSTudent中 不存在 learn方法");
        }
        
        if ([stu respondsToSelector:sel] == YES)
        {
            NSLog(@"对象stu 可以 调用study方法");
        }
        else
        {
            NSLog(@"对象stu 不可以 调用study方法");
        }
        if ([stu respondsToSelector:@selector(learn)] == YES)
        {
            NSLog(@"对象stu 可以 调用learn方法");
        }
        else
        {
            NSLog(@"对象stu 不可以 调用learn方法");
        }
        
        [stu performSelector:sel];
        [stu study];
    }
    return 0;
}
