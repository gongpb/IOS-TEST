//
//  TestViewController.m
//  IOS-UI-test
//
//  Created by gongpibao on 2017/4/27.
//  Copyright © 2017年 gongpibao. All rights reserved.
//

#import "TestViewController.h"


@interface TestViewController ()
{
    UIView *_oriangeView;
}
@end

@implementation TestViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
   
    UIButton *bt = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    bt.frame = CGRectMake(10, 30, 300, 30);
    bt.backgroundColor = [UIColor redColor];
    [bt setTitle:@"点我返回" forState:UIControlStateNormal];
    [bt setTitle:@"谢谢光临" forState:UIControlStateHighlighted];
    [bt addTarget:self action:@selector(btnClickMe) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:bt];
    
    UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(10, 60, 300, 100)];
    view1.backgroundColor = [UIColor greenColor];
    [self.view addSubview:view1];
    
    UIView *view2 = [[UIView alloc] initWithFrame:CGRectMake(10, 10, 50, 50)];
    view2.backgroundColor = [UIColor blackColor];
    [view1 addSubview:view2];
    
    UIView *view3 = [[UIView alloc] initWithFrame:CGRectMake(10, 180, self.view.frame.size.width-20, 100)];
    view3.backgroundColor = [UIColor grayColor];
    view3.clipsToBounds=YES;
    [self.view addSubview:view3];
    
    UIView *view4 = [[UIView alloc] initWithFrame:CGRectMake(5, 5, 100, 200)];
    view4.backgroundColor = [UIColor blackColor];
    view4.alpha=0.2;
    [view3 addSubview:view4];
    
    
    _oriangeView = [[UIView alloc] initWithFrame:CGRectMake(10, 300, 100, 100)];
    _oriangeView.backgroundColor = [UIColor orangeColor];
    _oriangeView.autoresizesSubviews=YES; //允许子类自动布局
    [self.view addSubview:_oriangeView];
    
    UIView *view6 = [[UIView alloc] initWithFrame:CGRectMake(5, 5, 50, 50)];
//    view6.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;//宽度跟随父类改变（相对父坐标点不变）
    view6.autoresizingMask = UIViewAutoresizingFlexibleBottomMargin|UIViewAutoresizingFlexibleTopMargin;//宽度跟随父类改变（相对父的左边跟随改变）
    view6.backgroundColor = [UIColor blackColor];
    
    [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(timeTick) userInfo:nil repeats:YES];
    
    [_oriangeView addSubview:view6];
    
    
    self.view.backgroundColor = [UIColor whiteColor];
}

-(void)timeTick{
    CGRect orFrame=_oriangeView.frame;
    if(orFrame.size.height>=self.view.frame.size.height-100 || orFrame.size.width>=self.view.frame.size.width-100){
        return;
    }
    _oriangeView.frame = CGRectMake(orFrame.origin.x, orFrame.origin.y, orFrame.size.width+5, orFrame.size.height+5);
}


-(void) btnClickMe{
    NSLog(@"testVIew测试");
    [self dismissViewControllerAnimated:YES completion:nil];
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
