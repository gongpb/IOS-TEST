//
//  ViewController.m
//  IOS-UI-test
//
//  Created by gongpibao on 2017/4/27.
//  Copyright © 2017年 gongpibao. All rights reserved.
//

#import "ViewController.h"
#import "MyClass.h"
#import "TestViewController.h"
#import "TestLayerViewController.h"
#import "TestTextFiledViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *bt = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    bt.frame = CGRectMake(10, 30, 300, 30);
    bt.backgroundColor = [UIColor redColor];
    [bt setTitle:@"点我" forState:UIControlStateNormal];
    [bt setTitle:@"谢谢点我" forState:UIControlStateHighlighted];
    
//    bt.showsTouchWhenHighlighted=YES;//高亮发光点
    
    [bt addTarget:self action:@selector(btnClickMe) forControlEvents:UIControlEventTouchUpInside];
    
//    MyClass *myClass = [[MyClass alloc] init];
//    [myClass reportToMe];
//    [bt addTarget:myClass action:@selector(reportToMe) forControlEvents:UIControlEventTouchUpInside];

     [self.view addSubview:bt];
    
    UIImage *image = [UIImage imageNamed:@"image-1.JPG"];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    imageView.frame = CGRectMake(10, 80, 300, 100);
    imageView.contentMode = UIViewContentModeScaleAspectFit; //
    
    [self.view addSubview:imageView];
    
    
    NSMutableArray *imageArray = [[NSMutableArray alloc] init];
    int i;
    for(i = 1; i<5; i++){
        UIImage *image2 = [UIImage imageNamed:@"sampleImage.jpg"];
        [imageArray addObject:image2];
    }
    
    UIImageView *imageView2 = [[UIImageView alloc] init];
    imageView2.frame = CGRectMake(10, 200, 300, 100);
    //设置数组动画（设置要播放图片的数组）
    imageView2.animationImages = imageArray;
    imageView2.animationDuration = 1; //1秒
//    imageView2.animationRepeatCount=5; //重复5次,不设置为无限播放
    
    [self.view addSubview:imageView2];
    
//    [imageView2 startAnimating];
//    [imageView2 stopAnimating];
//    [imageView2 isAnimating];
    
    UIButton *bt1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    bt1.frame = CGRectMake(10, 260, 300, 30);
    bt1.backgroundColor = [UIColor redColor];
    [bt1 setTitle:@"点我UIView" forState:UIControlStateNormal];
    [self.view insertSubview:bt1 belowSubview:imageView2];
    [bt1 addTarget:self action:@selector(btnClickMe1) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *bt2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    bt2.frame = CGRectMake(10, 300, 300, 30);
    bt2.backgroundColor = [UIColor redColor];
    [bt2 setTitle:@"点我看Layer" forState:UIControlStateNormal];
    [self.view insertSubview:bt2 belowSubview:bt1];
    [bt2 addTarget:self action:@selector(btnClickMe2) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *btText = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btText.frame = CGRectMake(10, 340, 300, 30);
    btText.backgroundColor = [UIColor redColor];
    [btText setTitle:@"点我看UITextField" forState:UIControlStateNormal];
    [self.view insertSubview:btText belowSubview:bt2];
    [btText addTarget:self action:@selector(btnClickMeText) forControlEvents:UIControlEventTouchUpInside];
}

-(void) btnClickMeText{
    TestTextFiledViewController *tvc = [[TestTextFiledViewController alloc] init];
    NSLog(@"test测试");
    [self presentViewController:tvc animated:YES completion:nil];
}

-(void) btnClickMe1{
    TestViewController *tvc = [[TestViewController alloc] init];
    NSLog(@"test测试");
    [self presentViewController:tvc animated:YES completion:nil];
}

-(void) btnClickMe2{
    TestLayerViewController *tvc = [[TestLayerViewController alloc] init];
    NSLog(@"TestLayerViewController测试");
    [self presentViewController:tvc animated:YES completion:nil];
}

-(void) btnClickMe{
    NSLog(@"test测试");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
