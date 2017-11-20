//
//  TRFraction+math.m
//  day05_4分类
//
//  Created by tarena on 15/9/22.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import "TRFraction+math.h"

@implementation TRFraction (math)
-(TRFraction *)add:(TRFraction *)f
{
    TRFraction *result = [[TRFraction alloc] init];
    result.n = self.n * f.d + f.n * self.d;
    result.d = self.d * f.d;
    return result;
}
-(TRFraction *)sub:(TRFraction *)f
{
    TRFraction *result = [[TRFraction alloc] init];
    result.n = self.n *f.d - f.n *self.d;
    result.d = self.d * f.d;
    
    return result;
}
-(TRFraction *)mul:(TRFraction *)f
{
    TRFraction* result = [[TRFraction alloc] init];
    result.n = self.n * f.n;
    result.d = self.d * f.d;
    return result;
}
-(TRFraction *)div:(TRFraction *)f
{
    TRFraction *result = [[TRFraction alloc]init];
    result.n = self.n * f.d;
    result.d = self.d * f.n;
    return result;
}
@end
