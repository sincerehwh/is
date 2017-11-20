//
//  TRExample.h
//  day02_3访问权限
//
//  Created by tarena on 15/9/18.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRExample : NSObject
{
    int i0;//访问权限为保护的:类内使用
@public
    int i1;//公有的:类内类外都能使用
@package
    int i2;//包内的:类内类外都能使用
@protected
    int i3;//保护的:默认方式
@private
    int i4;//私有的:类内使用
}

@end
