//
//  TRSquare.m
//  day06_6⽐较类信息
//
//  Created by tarena on 15/9/23.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import "TRSquare.h"

@implementation TRSquare
-(void)setSide:(int)s
{
    self.width = s;
    self.height = s;
}
-(int)side
{
    return self.width;
}
@end
