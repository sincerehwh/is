//
//  AdViewController.m
//  广告轮播
//
//  Created by tarena on 15/12/9.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#define AD_WIDTH 320
#define AD_HEIGHT 150
#define IMAGEVIEW_COUNT 3

#import "AdViewController.h"

@interface AdViewController ()<UIScrollViewDelegate>
{
    UIScrollView *_scrollView;
    UIImageView *_leftImageView;
    UIImageView *_centerImageView;
    UIImageView *_rightImageView;
    UIPageControl *_pageControl;
    NSInteger _currentImageIndex;//当前图片索引
    NSInteger _imageCount;//图片的总数
}

@property(nonatomic,strong)NSArray *allAdImages;

@end

@implementation AdViewController

- (NSArray *)allAdImages
{
    if (!_allAdImages) {
        _allAdImages = @[@"cm2_daily_banner1",@"cm2_daily_banner2",@"cm2_daily_banner3",@"cm2_daily_banner4",@"cm2_daily_banner5",@"cm2_daily_banner6",@"cm2_daily_banner7"];
    }
    return _allAdImages;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _imageCount = self.allAdImages.count;
    //加载滚动视图
    [self addScrollView];
    //加载图片控件
    [self addImageViews];
    //添加pageControl
    [self addPageControl];
    //加载默认的第一屏的三张图片
    [self setDefaultImage];
}

-(void)addScrollView
{
    _scrollView = [[UIScrollView alloc]initWithFrame:self.view.bounds];
    [self.view addSubview:_scrollView];
    //设置代理
    _scrollView.delegate = self;
    //设置contentSize
    _scrollView.contentSize = CGSizeMake(AD_WIDTH*3, AD_HEIGHT);
    //设置当前显示的位置在中间图片
    _scrollView.contentOffset = CGPointMake(AD_WIDTH, 0);
    //设置分页
    _scrollView.pagingEnabled = YES;
    //去掉水平滚动
    _scrollView.showsHorizontalScrollIndicator = NO;
    //边缘不弹跳
    _scrollView.bounces = NO;
}

-(void)addImageViews
{
    _leftImageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, AD_WIDTH, AD_HEIGHT)];
    _leftImageView.contentMode = UIViewContentModeScaleAspectFit;
    [_scrollView addSubview:_leftImageView];
    
    _centerImageView = [[UIImageView alloc]initWithFrame:CGRectMake(AD_WIDTH, 0, AD_WIDTH, AD_HEIGHT)];
    _centerImageView.contentMode = UIViewContentModeScaleAspectFit;
    [_scrollView addSubview:_centerImageView];
    
    _rightImageView = [[UIImageView alloc]initWithFrame:CGRectMake(2*AD_WIDTH, 0, AD_WIDTH, AD_HEIGHT)];
    _rightImageView.contentMode = UIViewContentModeScaleAspectFit;
    [_scrollView addSubview:_rightImageView];
}

-(void)addPageControl
{
    _pageControl = [[UIPageControl alloc]init];
    //此方法可以根据小圆点页数返回最适合UIPageControl的大小
    CGSize size = [_pageControl sizeForNumberOfPages:_imageCount];
    //为了定位可使用bounds+center
    //定视图的位置时，为了居中，可以通过设置视图的中心点
    _pageControl.bounds = CGRectMake(0, 0, size.width, size.height);
    _pageControl.center = CGPointMake(AD_WIDTH*0.5, AD_HEIGHT-20);
    
    //设置颜色
    _pageControl.pageIndicatorTintColor = [UIColor colorWithRed:193/255.0 green:219/255.0 blue:249/255.0 alpha:1];
    _pageControl.currentPageIndicatorTintColor = [UIColor redColor];
    //设置总页数
    _pageControl.numberOfPages = _imageCount;
    [self.view addSubview:_pageControl];
}

-(void)setDefaultImage
{
    _leftImageView.image = [UIImage imageNamed:self.allAdImages[_imageCount-1]];
    _centerImageView.image = [UIImage imageNamed:self.allAdImages[0]];
    _rightImageView.image = [UIImage imageNamed:self.allAdImages[1]];
    // 记录当前页
    _currentImageIndex = 0;
    _pageControl.currentPage = _currentImageIndex;
}

#pragma mark - UIScrollViewDelegate

//滚动停止事件
-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    //重新加载图片
    [self reloadImage];
    //移动回中间
    _scrollView.contentOffset = CGPointMake(AD_WIDTH, 0);
    //修改分页控件上的小圆点
    _pageControl.currentPage = _currentImageIndex;
}

//重新加载图片
-(void)reloadImage
{
    NSInteger leftImageIndex,rightImageIndex;
    
    CGPoint offset = _scrollView.contentOffset;
    
    if (offset.x > AD_WIDTH) {//向右滑动
        _currentImageIndex = (_currentImageIndex+1)%_imageCount;
    }else if(offset.x < AD_WIDTH){//向左滑动
        _currentImageIndex = (_currentImageIndex+_imageCount-1)%_imageCount;
    }
    _centerImageView.image = [UIImage imageNamed:self.allAdImages[_currentImageIndex]];
    leftImageIndex = (_currentImageIndex+_imageCount-1)%_imageCount;
    rightImageIndex = (_currentImageIndex+1)%_imageCount;
    _leftImageView.image = [UIImage imageNamed:self.allAdImages[leftImageIndex]];
    _rightImageView.image = [UIImage imageNamed:self.allAdImages[rightImageIndex]];
}




@end
