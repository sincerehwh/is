//
//  PickerViewController.m
//  Demo1_其它控件
//
//  Created by tarena on 15/12/18.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "PickerViewController.h"

@interface PickerViewController ()<UIPickerViewDataSource,UIPickerViewDelegate>

//联动效果的数据存储
@property(nonatomic,strong)NSDictionary *data;

@property(nonatomic,strong)NSArray *citys;
@property(nonatomic,strong)NSArray *subAreas;

@end

@implementation PickerViewController

- (NSDictionary *)data
{
    if (!_data) {
        _data = @{
                  @"北京":@[@"东城",@"西城",@"朝阳",@"海淀"],
                  @"上海":@[@"静安",@"徐汇",@"浦东"],
                  @"广州":@[@"白云",@"越秀",@"天河"]
                  };
    }
    return _data;
}

- (NSArray *)citys
{
    if (!_citys) {
        _citys = self.data.allKeys;
    }
    return _citys;
}
- (NSArray *)subAreas
{
    if (!_subAreas) {
        _subAreas = [self.data valueForKey:self.citys[0]];
    }
    return _subAreas;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 2;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if (component==0) {
        return self.citys.count;
    }else{
        return self.subAreas.count;
    }
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if (component == 0) {
        return self.citys[row];
    }else{
        return self.subAreas[row];
    }
}


-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    if (component == 0) {
        NSString *cityName = self.citys[row];
        self.subAreas = [self.data valueForKey:cityName];
        [pickerView reloadComponent:1];
        //重新设置第二列中第一行处于被选中的状态
        [pickerView selectRow:0 inComponent:1 animated:YES];
    }
}








@end
