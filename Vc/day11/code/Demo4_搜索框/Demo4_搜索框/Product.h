//
//  Product.h
//  Demo4_搜索框
//
//  Created by tarena on 15/12/14.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

//枚举类型：商品类别
typedef NS_ENUM(NSInteger,ProductType)
{
    ProductTypeDevice,
    ProductTypeSoftware,
    ProductTypeOther
};

@interface Product : NSObject

@property(nonatomic,strong)NSString *name;
@property(nonatomic)ProductType type;

+(NSArray *)demoData;

@end









