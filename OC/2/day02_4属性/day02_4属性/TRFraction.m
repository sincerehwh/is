//
//  TRFraction.m
//  day02_4属性
//
//  Created by tarena on 15/9/18.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import "TRFraction.h"

@implementation TRFraction
@synthesize n = _n;
//-(void)setN:(int)n
//{
//    _n = n;
//}
//-(int)n
//{
//    return  _n;
//}
@synthesize d = _d;
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
    NSLog(@"%d/%d", _n, _d);
}

@end
