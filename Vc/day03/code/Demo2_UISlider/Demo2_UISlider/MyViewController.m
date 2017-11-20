//
//  MyViewController.m
//  Demo2_UISlider
//
//  Created by tarena on 15/12/2.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property (weak, nonatomic) IBOutlet UISlider *greenSlider;

@property (weak, nonatomic) IBOutlet UISlider *blueSlider;

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //self.resultLabel.text = [NSString stringWithFormat:@"%f",self.slider.value];
    self.resultLabel.backgroundColor = [UIColor colorWithRed:self.slider.value green:self.greenSlider.value blue:self.blueSlider.value alpha:1];
}


- (IBAction)showValue:(UISlider *)sender
{
    //self.resultLabel.text = [NSString stringWithFormat:@"%f",self.slider.value];
    self.resultLabel.backgroundColor = [UIColor colorWithRed:self.slider.value green:self.greenSlider.value blue:self.blueSlider.value alpha:1];
}





@end
