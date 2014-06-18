//
//  IFBViewController.m
//  IFBShimmering
//
//  Created by zhouyi on 14-6-18.
//  Copyright (c) 2014年 yimaster. All rights reserved.
//

#import "IFBViewController.h"
#import "IFBShimmeringViewExtend.h"
@interface IFBViewController ()

@end

@implementation IFBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [IFBShimmeringViewExtend showInView:self.view];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [IFBShimmeringViewExtend dismiss];
    });
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

    
}

@end
