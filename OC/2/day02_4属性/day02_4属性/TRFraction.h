//
//  TRFraction.h
//  day02_4属性
//
//  Created by tarena on 15/9/18.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRFraction : NSObject
{
    int _n;
    int _d;
}
@property int n;
//-(void)setN:(int)n;
//-(int)n;
@property int d;
//-(void)setD:(int)d;
//-(int)d;
-(void)show;

@end
