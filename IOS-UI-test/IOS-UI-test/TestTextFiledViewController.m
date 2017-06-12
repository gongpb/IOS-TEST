//
//  TestTextFiledViewController.m
//  IOS-UI-test
//
//  Created by gongpibao on 2017/4/28.
//  Copyright © 2017年 gongpibao. All rights reserved.
//

#import "TestTextFiledViewController.h"

@interface TestTextFiledViewController ()

{
    UITextField *textField1;
    UIButton *btn;
}

@end

@implementation TestTextFiledViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *bt = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    bt.frame = CGRectMake(10, 20, 300, 30);
    bt.backgroundColor = [UIColor greenColor];
    [bt setTitle:@"点我返回" forState:UIControlStateNormal];
    [bt setTitle:@"谢谢光临" forState:UIControlStateHighlighted];
    [bt addTarget:self action:@selector(btnClickMe) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:bt];
    
    
    UITextField *textField = [[UITextField alloc] init];
    textField.frame = CGRectMake(10, 60, 300, 50);
    textField.borderStyle = UITextBorderStyleRoundedRect;//圆角输入框，并且边框内部是白色
//    textField.borderStyle = UITextBorderStyleLine;//边框是黑线，内部仍然是透明
//    textField.borderStyle = UITextBorderStyleBezel;//边框是灰色线，内部仍然是透明
    textField.backgroundColor = [UIColor blueColor];
    textField.placeholder = @"请输入密码";
    textField.keyboardType = UIKeyboardTypeNumberPad; //数字键
//    textField.keyboardAppearance = UIKeyboardAppearanceAlert; //键盘是半透明
    textField.keyboardAppearance = UIKeyboardAppearanceDefault;
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"image-1.JPG"]];
    imageView.frame = CGRectMake(0, 100, 320, 100);
    //弹出视图，可以自定义键盘等
    textField.inputView = imageView;
    [self.view addSubview:textField];
    
    UIView *leftView = [[UIView alloc] init];
    leftView.frame = CGRectMake(15, 0, 50, 50);
    leftView.backgroundColor = [UIColor orangeColor];
    textField.leftView = leftView;
    textField.leftViewMode = UITextFieldViewModeWhileEditing;
    //清除按钮模式，输入文字后，出现小X
    textField.clearButtonMode = UITextFieldViewModeAlways;
    
    textField1 = [[UITextField alloc] init];
    textField1.frame = CGRectMake(10, 120, 300, 100);
    textField1.borderStyle = UITextBorderStyleRoundedRect;//圆角输入框，并且边框内部是白色
    //再次编辑时是否清空之前内容
    textField1.clearsOnBeginEditing=YES;
    //内容纵向对齐方式,top
    textField1.contentVerticalAlignment=UIControlContentVerticalAlignmentCenter;
    //内容横向对齐方式
    textField1.contentHorizontalAlignment = UIControlContentVerticalAlignmentCenter;
    //设置textField滚动
    textField1.adjustsFontSizeToFitWidth=NO;
    //设置最小文字，跟textfiled滚动相关
    textField1.minimumFontSize=50;
    //设置首字母是否大写
    //UITextAutocapitalizationTypeWords每个单词首字母大写
    textField1.autocapitalizationType = UITextAutocapitalizationTypeWords;
    textField1.delegate = self;
    
    [self.view addSubview:textField1];
    
    btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(10, 300, 300, 30);
    btn.backgroundColor = [UIColor greenColor];
    btn.layer.cornerRadius=6;
    [btn addTarget:self action:@selector(btnClickMeForLogin) forControlEvents:UIControlEventTouchUpInside];
    [btn setTitle:@"登录" forState:UIControlStateNormal];
    [self.view addSubview:btn];
    
    //键盘收起或弹出的通知
    //订阅键盘升起的通知
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardNotificationShow) name:UIKeyboardWillShowNotification object:nil];
    //订阅键盘收起的通知
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardNotificationHidden) name:UIKeyboardWillHideNotification object:nil];

    //控制器,control是透明的
    UIControl *control = [[UIControl alloc] init];
    control.frame=CGRectMake(0, 0, 320, 480);
    [control addTarget:self action:@selector(controlClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:control];
    //View有层的概念，后加入的位于最上层
    [self.view sendSubviewToBack:control];
    
    NSString *homePath = NSHomeDirectory();
    NSLog(homePath);
    NSString *appPath = [[NSBundle mainBundle] bundlePath];
    NSLog(appPath);
    
    self.view.backgroundColor = [UIColor redColor];
}

//是否可以进入编辑模式
-(bool) textFieldShouldBeginEditing:(UITextField *)textField{
    NSLog(@"--------");
    return YES;
}

//是否可以点击清除按钮
-(BOOL)textFieldShouldClear:(UITextField *)textField{
    
    return NO;
}
//点击return收键盘
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

-(void)controlClick{
    [textField1 resignFirstResponder];
    
}

-(void) btnClickMeForLogin{
    NSLog(@"testVIew测试");

}

-(void) btnClickMe{
    NSLog(@"testVIew测试");
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)keyboardNotificationShow{
    
    [UIView animateWithDuration:0.25 animations:^{
        btn.frame = CGRectMake(10, 220, 300, 30);
    }];
}

-(void)keyboardNotificationHidden{
    
    [UIView animateWithDuration:0.25 animations:^{
        btn.frame = CGRectMake(10, 300, 300, 30);
    }];
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
