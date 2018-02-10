//
//  YWAniSwichViewButton.m
//  daimo
//
//  Created by 玉炜 on 2018/2/9.
//  Copyright © 2018年 玉炜. All rights reserved.
//

#import "YWAniSwichViewButton.h"

@implementation YWAniSwichViewButton

#pragma mark - public
#pragma mark instance
- (instancetype)initWithDefaultShowView:(UIView *)defaultShowView
                         switchShowView:(UIView *)switchShowView {
    
    self = [YWAniSwichViewButton buttonWithType:UIButtonTypeCustom];
    if (self) {
        self.defaultShowView = defaultShowView;
        self.switchShowView = switchShowView;
    }
    return self;
}

#pragma mark instance
- (instancetype)init {
    
    if (self = [super init]) {
        [self initSetting];
    }
    return self;
}

#pragma mark instance
+ (instancetype)buttonWithType:(UIButtonType)buttonType {
    
    YWAniSwichViewButton *button = [super buttonWithType:buttonType];
    [button initSetting];
    return button;
}

#pragma mark - private
#pragma mark initial setting
- (void)initSetting {
    
    [self addTarget:self
             action:@selector(changeAct:)
   forControlEvents:UIControlEventTouchUpInside];
}

#pragma mark check if fatherView, defaultShowView, switchShowView are legal
- (void)checkAllViewIsLegal {
    
    if (!self.switchShowView || !self.defaultShowView) {
        NSString *errorDescStr = @"pls make sure the defaultShowView and the fatherView are all NOT nil";
        NSLog(@"%@",errorDescStr);
        @throw errorDescStr;
    }
}

#pragma mark button click act
- (void)changeAct:(UIButton *)button {
    
    [self checkAllViewIsLegal];
    button.selected = !button.selected;
    if (_delegate &&
        [_delegate respondsToSelector:@selector(YWAniSwitchViewButtonWillSwitchView:)]) {
        [_delegate YWAniSwitchViewButtonWillSwitchView:self];
    }
    if (!self.useCustomSwitchAni) {
        [UIView transitionWithView:[UIApplication sharedApplication].keyWindow duration:0.5 options:UIViewAnimationOptionTransitionFlipFromLeft animations:^{
        } completion:^(BOOL finished) {
        }];
    }
    
    if (button.selected) {
        self.defaultShowView.hidden = YES;
        self.switchShowView.hidden = NO;
    } else {
        self.defaultShowView.hidden = NO;
        self.switchShowView.hidden = YES;
    }
}
@end
