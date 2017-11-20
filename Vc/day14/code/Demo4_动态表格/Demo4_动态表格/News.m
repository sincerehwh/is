//
//  News.m
//  Demo1_新闻客户端
//
//  Created by tarena on 15/12/11.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "News.h"

@implementation News

+ (NSArray *)demoData
{
    News *n1 = [[News alloc]init];
    n1.newsImageName = @"n1.png";
    n1.title = @"这是一段用于测试新闻长度的新闻字数要正合适";
    n1.commentNumber = 1179;
    
    News *n2 = [[News alloc]init];
    n2.newsImageName = @"n2.png";
    n2.title = @"这是一段用于测试新闻长度的新闻字数要正合适";
    n2.commentNumber = 445;
    
    News *n3 = [[News alloc]init];
    n3.newsImageName = @"n3.png";
    n3.title = @"这是一段用于测试新闻长度的新闻字数要正合适";
    n3.commentNumber = 679;
    
    News *n4 = [[News alloc]init];
    n4.newsImageName = @"n4.png";
    n4.title = @"这是一段用于测试新闻长度的新闻字数要正合适";
    n4.commentNumber = 6779;
    
    News *n5 = [[News alloc]init];
    n5.newsImageName = @"n5.png";
    n5.title = @"这是一段用于测试新闻长度的新闻字数要正合适";
    n5.commentNumber = 179;
    
    News *n6 = [[News alloc]init];
    n6.newsImageName = @"n6.png";
    n6.title = @"这是一段用于测试新闻长度的新闻字数要正合适";
    n6.commentNumber = 379;
    
    News *n7 = [[News alloc]init];
    n7.newsImageName = @"n7.png";
    n7.title = @"这是一段用于测试新闻长度的新闻字数要正合适";
    n7.commentNumber = 111;
    
    News *n8 = [[News alloc]init];
    n8.newsImageName = @"n8.png";
    n8.title = @"这是一段用于测试新闻长度的新闻字数要正合适";
    n8.commentNumber = 234;
    
    return @[n1,n2,n3,n4,n5,n6,n7,n8];
}




@end








