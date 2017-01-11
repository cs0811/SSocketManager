//
//  ViewController.m
//  SSocketManager
//
//  Created by tongxuan on 17/1/11.
//  Copyright © 2017年 tongxuan. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"
#import "SSocketManager.h"
#import "SCocoaAsyncSocketManager.h"

@interface ViewController ()
@property (nonatomic, strong) UITextField * tf;
@property (nonatomic, strong) UIButton * sendBtn;
@property (nonatomic, strong) UIButton * connectBtn;
@property (nonatomic, strong) UIButton * disConnectBtn;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.view addSubview:self.tf];
    [self.view addSubview:self.sendBtn];
    [self.view addSubview:self.connectBtn];
    [self.view addSubview:self.disConnectBtn];
    
    [self.tf mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.top.equalTo(self.view).offset(80);
        make.size.mas_equalTo(CGSizeMake(180, 30));
    }];
    [self.sendBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.tf.mas_bottom).offset(40);
        make.centerX.equalTo(self.view);
        make.size.mas_equalTo(CGSizeMake(80, 30));
    }];
    [self.connectBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.sendBtn.mas_bottom).offset(40);
        make.centerX.equalTo(self.view);
        make.size.mas_equalTo(CGSizeMake(80, 30));
    }];
    [self.disConnectBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.connectBtn.mas_bottom).offset(40);
        make.centerX.equalTo(self.view);
        make.size.mas_equalTo(CGSizeMake(80, 30));
    }];
}

#pragma mark - Action
- (void)sendMsg {
//    [[SSocketManager share] sendMsg:_tf.text?:@"test"];
    [[SCocoaAsyncSocketManager share] sendMsg:_tf.text];
}

- (void)connectClick {
//    [[SSocketManager share] connect];
    [[SCocoaAsyncSocketManager share] connect];
}

- (void)disConnectClick {
//    [[SSocketManager share] disConnect];
    [[SCocoaAsyncSocketManager share] disConnect];
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesBegan:touches withEvent:event];
    
    [self.tf resignFirstResponder];
}

#pragma mark - Getter
- (UITextField *)tf {
    if (!_tf) {
        _tf = [UITextField new];
        _tf.layer.borderColor = [UIColor lightGrayColor].CGColor;
        _tf.layer.borderWidth = 1;
    }
    return _tf;
}
- (UIButton *)sendBtn {
    if (!_sendBtn) {
        UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
        btn.backgroundColor = [UIColor orangeColor];
        [btn setTitle:@"发送" forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(sendMsg) forControlEvents:UIControlEventTouchUpInside];
        _sendBtn = btn;
    }
    return _sendBtn;
}
- (UIButton *)connectBtn {
    if (!_connectBtn) {
        UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
        btn.backgroundColor = [UIColor greenColor];
        [btn setTitle:@"连接" forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(connectClick) forControlEvents:UIControlEventTouchUpInside];
        _connectBtn = btn;
    }
    return _connectBtn;
}
- (UIButton *)disConnectBtn {
    if (!_disConnectBtn) {
        UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
        btn.backgroundColor = [UIColor redColor];
        [btn setTitle:@"断开" forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(disConnectClick) forControlEvents:UIControlEventTouchUpInside];
        _disConnectBtn = btn;
    }
    return _disConnectBtn;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
