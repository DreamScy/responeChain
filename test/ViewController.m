//
//  ViewController.m
//  test
//
//  Created by HS_SCY on 2020/5/13.
//  Copyright © 2020 HS_SCY. All rights reserved.
//

#import "ViewController.h"
#import "testVC.h"
#import "TestView.h"
#import "UIResponder+router.h"
typedef NSString *(^MyBlock)(NSDictionary * dic);
@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    
    TestView * leftView = [[TestView alloc]init];
    [self.view addSubview:leftView];
    leftView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 500);
    leftView.backgroundColor = [UIColor yellowColor];

}

-(void)routerEventWithName:(NSString *)eventName userInfo:(NSDictionary *)userInfo
{
    NSLog(@"eventName = %@   userInfo = %@",eventName,userInfo);

}
@end
