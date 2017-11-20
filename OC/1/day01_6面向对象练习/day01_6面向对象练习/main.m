//
//  main.m
//  day01_6面向对象练习
//
//  Created by tarena on 15/9/17.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRCat : NSObject
{
    NSString* _name;
    int _age;
}
-(void)setName:(NSString*)name;
-(NSString*)getName;
-(void)setAge:(int)age;
-(int)getAge;
-(void)bark;
@end
@implementation TRCat

-(void)setName:(NSString *)name
{
    _name = name;
}

-(NSString*)getName
{
    return _name;
}

-(void)setAge:(int)age
{
    _age = age;
}

-(int)getAge
{
    return _age;
}

-(void)bark
{
    NSLog(@"喵");
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        TRCat *cat = [TRCat alloc];
        [cat setName:@"可可"];
        [cat setAge:3];
        NSLog(@"名字叫%@的这只猫%d岁了", [cat getName],[cat getAge]);
        [cat bark];
        
    }
    return 0;
}
