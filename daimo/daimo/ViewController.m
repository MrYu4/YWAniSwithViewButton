//
//  ViewController.m
//  daimo
//
//  Created by 玉炜 on 2018/2/8.
//  Copyright © 2018年 玉炜. All rights reserved.
//

#import "ViewController.h"

//view
#import "YWAniSwichViewButton.h"

@interface ViewController ()

@property (nonatomic, strong)UIImageView *iv;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIView *redView = [UIView new];
    redView.backgroundColor = [UIColor redColor];
    redView.frame = CGRectMake(10, 10, 100, 100);
    [self.view addSubview:redView];
    
    UIView *yellowView = [UIView new];
    yellowView.backgroundColor = [UIColor yellowColor];
    yellowView.frame = CGRectMake(10, 10, 100, 100);
    [self.view addSubview:yellowView];
    yellowView.hidden = YES;
    
    YWAniSwichViewButton *btn = [[YWAniSwichViewButton alloc]initWithDefaultShowView:redView
                                                                      switchShowView:yellowView];
    btn.frame = CGRectMake(200, 200, 100, 100);
    [btn setBackgroundColor:[UIColor grayColor]];
    [self.view addSubview:btn];
}

#pragma mark iv
- (UIImageView *)iv {
    
    if (!_iv) {
        _iv = [UIImageView new];
        _iv.contentMode = UIViewContentModeScaleAspectFill;
        _iv.clipsToBounds = YES;
    }
    return _iv;
}
@end
