//
//  Product.m
//  Demo4_搜索框
//
//  Created by tarena on 15/12/14.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "Product.h"

@implementation Product

+(NSArray *)demoData
{
    Product *p1 = [[Product alloc]init];
    p1.name = @"iPhone6S";
    p1.type = ProductTypeDevice;
    
    Product *p2 = [[Product alloc]init];
    p2.name = @"iPhone6S Plus";
    p2.type = ProductTypeDevice;
    
    Product *p3 = [[Product alloc]init];
    p3.name = @"OS X EI Captain";
    p3.type = ProductTypeSoftware;
    
    Product *p4 = [[Product alloc]init];
    p4.name = @"Airport Time Capsule";
    p4.type = ProductTypeOther;
    
    return @[p1,p2,p3,p4];
}

@end








