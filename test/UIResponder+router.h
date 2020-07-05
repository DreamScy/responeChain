//
//  UIResponder+router.h
//  test
//
//  Created by HS_SCY on 2020/6/19.
//  Copyright © 2020 HS_SCY. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIResponder (router)
#pragma mark - event response
- (void)routerEventWithName:(NSString *)eventName userInfo:(NSDictionary *)userInfo;
@end

NS_ASSUME_NONNULL_END
