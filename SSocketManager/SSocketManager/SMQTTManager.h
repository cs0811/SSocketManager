//
//  SMQTTManager.h
//  SSocketManager
//
//  Created by tongxuan on 17/1/12.
//  Copyright © 2017年 tongxuan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SMQTTManager : NSObject

+ (instancetype)share;

- (void)connect;

- (void)disConnect;

- (void)sendMsg:(NSString *)msg;

@end
