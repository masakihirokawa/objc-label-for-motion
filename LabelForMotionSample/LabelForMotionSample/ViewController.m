//
//  ViewController.m
//  LabelForMotionSample
//
//  Created by Dolice on 2013/06/17.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //ラベル初期化
    UILabel *label = [[UILabel alloc] init];
    label.frame = self.view.bounds;
    label.autoresizingMask =
        UIViewAutoresizingFlexibleWidth |
        UIViewAutoresizingFlexibleHeight;
    label.textAlignment = NSTextAlignmentCenter;
    label.text = @"シェイクしてください";
    
    //ラベルを画面に追加
    [self.view addSubview:label];
    
    //レスポンダ登録
    [label becomeFirstResponder];
}

//モーション開始時のイベント
- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    NSLog(@"motionBegan");
}

//モーション終了時のイベント
- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    NSLog(@"motionEnded");
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil
                                                    message:@"シェイクされました"
                                                   delegate:nil
                                          cancelButtonTitle:nil
                                          otherButtonTitles:@"OK", nil];
    [alert show];
}

//モーションキャンセル時のイベント
- (void)motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    NSLog(@"motionCancelled");
}

- (BOOL)canBecomeFirstResponder
{
    return YES;
}

@end
