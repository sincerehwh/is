//
//  main.m
//  day04_6多态
//
//  Created by tarena on 15/9/21.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRDog.h"
#import "TRCat.h"

void test()
{
    TRAnimal *ani = [[TRDog alloc] initWithName:@"阿黄" andAge:3];//让父类的指针指向子类的对象
    [ani eat];//用父类指针调用子类中重写的方法
    [ani sleep];
    //[ani watchHome];//父类的指针不能调用子类自己添加的方法
    
    ani = [[TRCat alloc]initWithName:@"加菲" andAge:5];
    [ani eat];
    [ani sleep];
}

void show(TRAnimal *a)
{
    [a eat];
}

void test2()
{
    TRDog *dog = [[TRDog alloc] initWithName:@"旺财" andAge:4];
    show(dog);
    show([[TRCat alloc]initWithName:@"可可" andAge:2]);
}

void test3()
{
    TRAnimal *ani[3];
    ani[0] = [[TRAnimal alloc] init];
    ani[1] = [[TRDog alloc] initWithName:@"阿黄" andAge:3];
    ani[2] = [[TRCat alloc] initWithName:@"可可" andAge:1];
    for (int i = 0; i < 3; i++)
    {
        [ani[i] eat];
    }
}

typedef enum : NSUInteger {
    ANIMAL,
    DOG,
    CAT,
} ANIMALS;

TRAnimal* test4(ANIMALS type)
{
    switch (type)
    {
        case ANIMAL:
            return [[TRAnimal alloc]init];
        case DOG:
            return [[TRDog alloc] initWithName:@"阿黄" andAge:3];
        case CAT:
            return [[TRCat alloc] init];
    }
    return nil;
}
void test5()
{
    TRAnimal* ani = test4(DOG);
    [ani eat];
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        test5();
    }
    return 0;
}
