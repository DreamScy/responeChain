//
//  testVC.m
//  test
//
//  Created by HS_SCY on 2020/6/15.
//  Copyright © 2020 HS_SCY. All rights reserved.
//

#import "testVC.h"

@interface testVC ()

@end

@implementation testVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup aft  er loading the view.
    self.view.backgroundColor = [UIColor orangeColor];
    
    UIButton * test = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:test];
    test.frame = CGRectMake(0, 0, 100, 100);
    test.backgroundColor = [UIColor redColor];
    test.backgroundColor = [UIColor blueColor];
    [test addTarget:self action:@selector(pushView) forControlEvents:UIControlEventTouchUpInside];
}
- (void)pushView
{
    testVC * test = [[testVC alloc] init];
    [self.navigationController pushViewController:test animated:YES];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
