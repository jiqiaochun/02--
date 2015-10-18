//
//  ViewController.m
//  03-二维码扫描简单界面
//
//  Created by teacher on 15/9/4.
//  Copyright (c) 2015年 itcast. All rights reserved.
//

#import "ViewController.h"
#import "CZQRView.h"
@interface ViewController () <CZQRViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *valueLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    
    CZQRView *view = [[CZQRView alloc] init];
    
    view.frame = self.view.bounds;
    
    view.delegate = self;
    
    [self.view addSubview:view];
}

- (void)qrView:(CZQRView *)view didCompletedWithQRValue:(NSString *)qrValue
{
    self.valueLabel.text = qrValue;
    [view removeFromSuperview];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
