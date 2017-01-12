//
//  SSocketRocketManager.h
//  SSocketManager
//
//  Created by tongxuan on 17/1/11.
//  Copyright © 2017年 tongxuan. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, DisConnectType) {
    DisConnectByUser = 1000,
    DisConnectByServer ,
};


@interface SSocketRocketManager : NSObject

+ (instancetype)share;

- (void)connect;

- (void)disConnect;

- (void)sendMsg:(NSString *)msg;

- (void)ping;

@end
