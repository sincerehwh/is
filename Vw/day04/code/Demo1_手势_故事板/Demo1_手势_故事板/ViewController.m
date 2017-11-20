//
//  ViewController.m
//  Demo1_手势_故事板
//
//  Created by tarena on 15/12/23.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
}

- (IBAction)pan:(UIPanGestureRecognizer *)sender {
    CGPoint center = self.imageView.center;
    CGPoint translation = [sender translationInView:self.view];
    center.x += translation.x;
    center.y += translation.y;
    self.imageView.center = center;
    
    [sender setTranslation:CGPointZero inView:self.view];
}






@end
