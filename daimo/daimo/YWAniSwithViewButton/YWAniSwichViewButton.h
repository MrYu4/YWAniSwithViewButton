//
//  YWAniSwichViewButton.h
//  daimo
//
//  Created by 玉炜 on 2018/2/9.
//  Copyright © 2018年 玉炜. All rights reserved.
//

#import <UIKit/UIKit.h>

@class YWAniSwichViewButton;
@protocol YWAniSwitchViewButtonDelegate<NSObject>

/**
 user defined changing action

 @param button self
 */
- (void)YWAniSwitchViewButtonWillSwitchView:(YWAniSwichViewButton *)button ;
@end

@interface YWAniSwichViewButton : UIButton

/**
 default show view:the view NOT hidden by default,
 but it will be hidden when button is selected
 */
@property (nonatomic, strong)UIView *defaultShowView;

/**
 the view hidden by default, but it will be NOT hidden when button is selected
 */
@property (nonatomic, strong)UIView *switchShowView;

@property (nonatomic, assign)BOOL useCustomSwitchAni;

@property (nonatomic, weak)id<YWAniSwitchViewButtonDelegate> delegate;

/**
 init button

 @param defaultShowView default Show View
 @param switchShowView switch Show View
 @return self
 */
- (instancetype)initWithDefaultShowView:(UIView *)defaultShowView
                         switchShowView:(UIView *)switchShowView;

@end
