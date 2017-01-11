//
//  SSocketRocketManager.h
//  SSocketManager
//
//  Created by tongxuan on 17/1/11.
//  Copyright © 2017年 tongxuan. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum : NSUInteger {
    disConnectByUser ,
    disConnectByServer,
} DisConnectType;

@interface SSocketRocketManager : NSObject

+ (instancetype)share;

- (void)connect;

- (void)disConnect;

- (void)sendMsg:(NSString *)msg;

- (void)ping;

@end
