//
//  AppDelegate.m
//  打地鼠
//
//  Created by 元帅 on 14-7-22.
//  Copyright (c) 2014年 唐元帅. All rights reserved.
//

#import "AppDelegate.h"
#import "GameControl.h"
@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    UIImageView *startView = [[UIImageView alloc]initWithFrame:self.window.bounds];
    startView.image = [UIImage imageNamed:@"Default.png"];
    [self.window addSubview:startView];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 240, 120, 40);
    button.backgroundColor = [UIColor colorWithRed:0.4 green:0.4 blue:0.4 alpha:0.5];
    [button setTitle:@"开始游戏" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    button.titleLabel.font = [UIFont boldSystemFontOfSize:20];
    
    [button addTarget:self action:@selector(startGame) forControlEvents:UIControlEventTouchUpInside];
    [self.window addSubview:button];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)startGame{
    GameControl *gc = [[GameControl alloc] initWithFrame:self.window.bounds];
    [self.window addSubview:gc];
}
@end
