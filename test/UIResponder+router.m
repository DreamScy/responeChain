//
//  UIResponder+router.m
//  test
//
//  Created by HS_SCY on 2020/6/19.
//  Copyright © 2020 HS_SCY. All rights reserved.
//

#import "UIResponder+router.h"



@implementation UIResponder (router)
- (void)routerEventWithName:(NSString *)eventName userInfo:(NSDictionary *)userInfo
{
    [[self nextResponder] routerEventWithName:eventName userInfo:userInfo];
}
@end
