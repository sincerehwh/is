//
//  DatePickerViewController.m
//  Demo1_其它控件
//
//  Created by tarena on 15/12/18.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "DatePickerViewController.h"

@interface DatePickerViewController ()
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;

@end

@implementation DatePickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
}

- (IBAction)chooseDate:(UIDatePicker *)sender
{
    NSDate *date = sender.date;
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    formatter.dateFormat = @"yyyy-MM-dd HH:mm:ss";
    NSString *dateString = [formatter stringFromDate:date];
    self.dateLabel.text = dateString;
    
    
}






@end
