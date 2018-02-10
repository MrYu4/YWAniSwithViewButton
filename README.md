# YWAniSwitchViewButton
A button that can make changing two views' hidden status to the opposite at
the same time.
![Alt text](https://github.com/MrYu4/YWAniSwithViewButton/tree/master/READMEImg/effect_picture.gif)
## Function Introduction
This button inheriting UIButton has contained methods that can control two
views' hidden status While you pressing the button.
## Getting Started
You should make sure that the two variables are not nil.
```
/**
 default show view:the view NOT hidden by default,
 but it will be hidden when button is selected
 */
@property (nonatomic, strong)UIView *defaultShowView;

/**
 the view hidden by default, but it will be NOT hidden when button is selected
 */
@property (nonatomic, strong)UIView *switchShowView;
```
## Tips
* When you set that two variables,```useCustomSwitchAni``` will be set NOT hidden.
```switchShowView``` is opposite.
* If you don't like default switching animation, you can set the variable ```useCustomSwitchAni``` YES.
And code your own animation at the protocol method ```-(void)YWAniSwitchViewButtonWillSwitchView:```,
for example:
```
- (void)YWAniSwitchViewButtonWillSwitchView:(YWAniSwichViewButton *)button {

    button.useCustomSwitchAni = YES;
    [UIView transitionWithView:[UIApplication sharedApplication].keyWindow duration:0.5 options:UIViewAnimationOptionTransitionFlipFromRight animations:^{

    } completion:^(BOOL finished) {
    }];
}
```