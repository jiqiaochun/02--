//
//  CZQRView.h
//  03-二维码扫描简单界面
//
//  Created by teacher on 15/9/4.
//  Copyright (c) 2015年 itcast. All rights reserved.
//

#import <UIKit/UIKit.h>


@class CZQRView;

@protocol CZQRViewDelegate <NSObject>

- (void) qrView:(CZQRView *) view didCompletedWithQRValue:(NSString *) qrValue;


@end


@interface CZQRView : UIView

@property (nonatomic, weak) id<CZQRViewDelegate> delegate;

@end
