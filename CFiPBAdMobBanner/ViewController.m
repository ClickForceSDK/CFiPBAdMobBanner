//
//  ViewController.m
//  CFiPBAdMobBanner
//
//  Created by 郭堯彰 on 2018/3/29.
//  Copyright © 2018年 cf. All rights reserved.
//

#import "ViewController.h"
#import <iMFAD/iMFAD.h>

@interface ViewController ()<MFBannerDelegate>
{
    MFBannerView *banner;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CGRect r = self.view.frame;
    banner = [[MFBannerView alloc] initWithAdSize:MFAdSize320X50 origin:CGPointMake((r.size.width-320)/2, r.size.height-50)];
    [banner setAdAutoRefresh:YES];
    banner.bannerId = @"7291" ;
    banner.rootViewController = self;
    banner.delegate = self;
    [self.view addSubview:banner];
    [banner requestAd];
}

-(void)requestAdSuccess
{
    //顯示banner廣告
    [banner show];
}

- (void)requestAdFail
{
    NSLog(@"廣告請求失敗");
}

- (void)onClickAd
{
    NSLog(@"Click Ad");
}

- (void)onPbAd:(UIView *)pbAdView
{
    [self.view addSubview:pbAdView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
