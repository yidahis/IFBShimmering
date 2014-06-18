//
//  FBShimmeringViewExtend.h
//  testshim
//
//  Created by zhouyi on 14-6-18.
//  Copyright (c) 2014年 yimaster. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IFBShimmeringViewExtend : UIView

@property (nonatomic,strong) NSString *title;
@property (nonatomic,strong) UIImage *img;


+(IFBShimmeringViewExtend*)showInView:(UIView*)superView;
+(void)dismiss;


-(void)setContentImg:(UIImage *)img;
@end
