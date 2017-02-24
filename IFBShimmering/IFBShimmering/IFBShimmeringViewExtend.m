//
//  FBShimmeringViewExtend.m
//  testshim
//
//  Created by zhouyi on 14-6-18.
//  Copyright (c) 2014年 yimaster. All rights reserved.
//

#import "IFBShimmeringViewExtend.h"
#import "FBShimmeringView.h"
@implementation IFBShimmeringViewExtend
{
    UIImageView *_imgView;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void)layoutSubviews{
    FBShimmeringView *shimmeringView = [[FBShimmeringView alloc] initWithFrame:[super frame]];
    [shimmeringView setCenter:CGPointMake(self.center.x, self.center.y)];
    shimmeringView.shimmering = YES;
    shimmeringView.shimmeringBeginFadeDuration = 0.3;
    shimmeringView.shimmeringOpacity = 0.3;
    [self addSubview:shimmeringView];

    UILabel *logoLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 240, 40)];
    logoLabel.text = @"努力加载中。。。";
    if (self.title) {
        logoLabel.text = self.title;
    }

    logoLabel.font = [UIFont fontWithName:@"HelveticaNeue-UltraLight" size:16.0];
    logoLabel.textColor = [UIColor colorWithRed:0.115 green:0.118 blue:0.101 alpha:1.000];
    logoLabel.textAlignment = NSTextAlignmentCenter;
    logoLabel.backgroundColor = [UIColor clearColor];
    shimmeringView.contentView = logoLabel;
    
    _imgView= [[UIImageView alloc]initWithFrame:CGRectMake([super frame].size.width/2-48, [super frame].size.height/2-72-10, 72, 72)];
    [_imgView setImage:[UIImage imageNamed:@"yimain.bundle/img/loading_master"]];
    [self addSubview:_imgView];
}

+ (IFBShimmeringViewExtend*)sharedView {
    static dispatch_once_t once;
    static IFBShimmeringViewExtend *sharedView;
    dispatch_once(&once, ^ { sharedView = [[IFBShimmeringViewExtend alloc] initWithFrame:[[UIScreen mainScreen] bounds]]; });
    return sharedView;
}

+(IFBShimmeringViewExtend*)showInView:(UIView*)superView{
    IFBShimmeringViewExtend *fbs = [self sharedView];
    [superView addSubview:fbs];
    return fbs;
}

+(void)dismiss{
    IFBShimmeringViewExtend *fbs = [self sharedView];
    [fbs removeFromSuperview];
}

-(void)setContentImg:(UIImage *)img{
    [_imgView setImage:img];
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
