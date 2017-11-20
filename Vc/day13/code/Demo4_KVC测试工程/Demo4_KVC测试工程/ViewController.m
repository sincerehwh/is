//
//  ViewController.m
//  Demo4_KVC测试工程
//
//  Created by tarena on 15/12/16.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "ViewController.h"
#import "Student.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Student *stu = [[Student alloc]init];
    
    //1.使用KVC为私有成员变量score赋值
    [stu setValue:@"张三" forKey:@"name"];
    [stu setValue:@98.5 forKey:@"score"];
    
    NSLog(@"%@",[stu valueForKey:@"name"]);
    NSLog(@"%@",[stu valueForKey:@"score"]);
    
    //2.使用KVC为id对象的变量赋值
    id stu2 = [[Student alloc]init];
    [stu2 setValue:@"李四" forKey:@"name"];
    NSLog(@"%@",[stu2 valueForKey:@"name"]);
    
    //3.为学生的dog对象赋个名字
    [stu setValue:@"wangwang" forKeyPath:@"dog.name"];
    NSLog(@"%@",stu.dog.name);
    
    //4.使用kvc对数组属性的操作
    NSArray *allBookPrice = [stu valueForKeyPath:@"allBooks.bookPrice"];
    NSLog(@"%@",allBookPrice);
    //所有书的总价
    NSLog(@"%@",[stu valueForKeyPath:@"allBooks.@sum.bookPrice"]);
    //学生一共有几本书
    NSLog(@"%@",[stu valueForKeyPath:@"allBooks.@count"]);
   
}



@end
