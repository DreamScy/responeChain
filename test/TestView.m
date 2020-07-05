//
//  TestView.m
//  test
//
//  Created by HS_SCY on 2020/6/19.
//  Copyright © 2020 HS_SCY. All rights reserved.
//

#import "TestView.h"
#import "UIResponder+router.h"

@implementation TestView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self configUI];
    }return self;
}

- (void)configUI
{
    self.button = [UIButton buttonWithType:UIButtonTypeCustom];
    [self addSubview:self.button];
    self.label = [[UILabel alloc] init];
    [self addSubview:self.label];
    
    self.button.frame = CGRectMake(0, 200, 100, 200);
    [self.button addTarget:self action:@selector(tapNext:) forControlEvents:UIControlEventTouchUpInside];
    self.button.backgroundColor = [UIColor redColor];
    self.label.backgroundColor = [UIColor blueColor];
    self.label.frame = CGRectMake(200, 200, 100, 200);
    UITapGestureRecognizer * tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapNext:)];
    self.label.userInteractionEnabled = YES;
    [self.label addGestureRecognizer:tap];
    
    ///这是测试代码
    //
    ///测试d的
}
- (void)labelNext
{
    [self.label routerEventWithName:@"Label" userInfo:@{@"123":@""}];
}
- (void)tapNext:(UIButton *)btn
{
    [self.button routerEventWithName:@"button" userInfo:@{@"123":@"123"}];
}
-(void)routerEventWithName:(NSString *)eventName userInfo:(NSDictionary *)userInfo
{
    [self.nextResponder routerEventWithName:eventName userInfo:userInfo];
    NSLog(@"eventName = %@   userInfo = %@",eventName,userInfo);
}
@end
