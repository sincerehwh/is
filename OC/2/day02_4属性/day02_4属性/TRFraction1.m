//
//  TRFraction.m
//  day02_4属性
//
//  Created by tarena on 15/9/18.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import "TRFraction1.h"

@implementation TRFraction1
@synthesize n;
//-(void)setN:(int)n
//{
//    _n = n;
//}
//-(int)n
//{
//    return  _n;
//}
@synthesize d;
//-(void)setD:(int)d
//{
//    _d = d;
//}
//-(int)d
//{
//    return _d;
//}
-(void)show
{
    NSLog(@"%d/%d", self.n, self.d);
}

@end
