//
//  TRStudent.h
//  day01_9分割文件练习
//
//  Created by tarena on 15/9/17.
//  Copyright (c) 2015年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

//姓名/学号/家庭住址/C语言成绩

@interface TRStudent : NSObject
{
    NSString* _name;
    int _ID;
    NSString* _address;
    int _cScore;
}
-(void)setName:(NSString*)name;
-(NSString*)name;
-(void)setID:(int)ID;
-(int)ID;
-(void)setAddress:(NSString*)address;
-(NSString*)address;
-(void)setCScore:(int)cScore;
-(int)cScore;
-(void)show;
@end
