//
//  main.m
//  day06_6⽐较类信息
//
//  Created by tarena on 15/9/23.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRSquare.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        TRSquare *s = [[TRSquare alloc] init];
        
        //isKindOf是否为指定类及其父类们的对象
        if ([s isKindOfClass:[TRSquare class]])
        {
            NSLog(@"对象s是类TRSquare的对象");
        }
        if ([s isKindOfClass:[TRRect class]])
        {
            NSLog(@"对象s是类TRRect的对象");
        }
        if ([s isKindOfClass:[NSObject class]])
        {
            NSLog(@"对象s是类NSObject的对象");
        }
        
        //isMemberOf仅判断对象s是否为指定类的对象,不判断指定类的父类
        if ([s isMemberOfClass:[TRSquare class]])
        {
            NSLog(@"对象s是类TRSquare的对象");
        }
        if ([s isMemberOfClass:[TRRect class]])
        {
            NSLog(@"对象s是类TRRect的对象");
        }
        if ([s isMemberOfClass:[NSObject class]])
        {
            NSLog(@"对象s是类TRNSObject的对象");
        }
        
        //isSubclassOf是判断一个类是否是另一个类的子类,它是一个类方法
        if ([TRSquare isSubclassOfClass:[TRRect class]])
        {
            NSLog(@"类TRSquare是类TRRect的子类");
        }
    }
    return 0;
}
