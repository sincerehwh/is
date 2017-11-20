//
//  TRProtocol4.h
//  day05_1协议
//
//  Created by tarena on 15/9/22.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TRProtocol2.h"
#import "TRProtocol3.h"

@protocol TRProtocol4 <TRProtocol2, TRProtocol3>
-(void)method4;
@end
