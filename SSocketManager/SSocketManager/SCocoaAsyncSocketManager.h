//
//  SCocoaAsyncSocketManager.h
//  SSocketManager
//
//  Created by tongxuan on 17/1/11.
//  Copyright © 2017年 tongxuan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SCocoaAsyncSocketManager : NSObject

+ (instancetype)share;

- (BOOL)connect;

- (void)disConnect;

- (void)sendMsg:(NSString *)msg;

- (void)pullTheMsg;

@end
