//
//  VideoBaseViewController.m
//  IOS-Demo
//
//  Created by gongpibao on 2017/3/25.
//  Copyright © 2017年 adsdk. All rights reserved.
//

#import "VideoBaseViewController.h"

@interface VideoBaseViewController ()

@property (nonatomic, strong) UIButton *playButton;

@end

@implementation VideoBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.playButton.center = self.view.center;
    self.playButton.bounds = CGRectMake(0, 0, 100, 44);
    
}

-(void)playerButtonClick:(UIButton *)playButton{
    
}


-(UIButton *) playButton{
    if(_playButton == nil){
        _playButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_playButton setTitle:@"播放" forState:UIControlStateNormal];
        [_playButton setTitle:@"停止" forState:UIControlStateSelected];
        [_playButton addTarget:self action:@selector(playerButtonClick:) forControlEvents:UIControlEventTouchUpInside];
        
        [self.view addSubview:_playButton];
        _playButton.backgroundColor = [UIColor blackColor];
        [_playButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    }
    return _playButton;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
