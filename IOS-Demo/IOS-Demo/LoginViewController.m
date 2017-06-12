//
//  ViewController.m
//  IOS-Demo-2
//
//  Created by adsdk on 2017/3/12.
//  Copyright © 2017年 adsdk. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)userLogin:(id)sender{
    
    NSString *userNameText = _userName.text;
    NSString *pwdText = _pwd.text;
    NSString *msg = @"密码错误，请重新输入";
//    if(userNameText.length == 0 || pwdText.length ==0){
//        UIActionSheet *sheet = [[UIActionSheet alloc]initWithTitle:@"请输入帐号和密码" delegate:nil cancelButtonTitle:@"取消" destructiveButtonTitle:@"明白" otherButtonTitles:@"other", nil];
//        [sheet showInView:self.view];
//        return;
//    }
    
    if([@"admin" isEqualToString:userNameText] && [@"admin" isEqualToString:pwdText]){
        msg = @"登录成功";
        
        //获取storyboard: 通过bundle根据storyboard的名字来获取我们的storyboard,
        UIStoryboard *story = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
        //由storyboard根据myView的storyBoardID来获取我们要切换的视图
        UIViewController *myView = [story instantiateViewControllerWithIdentifier:@"moduleViewController"];
        
        //由navigationController推向我们要推向的view
        [self.navigationController pushViewController:myView animated:YES];

        return;
    }
//    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:msg delegate:nil cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
    
    [alert show];
    

}

-(IBAction)backgroundTap:(id)sender{
    [_userName resignFirstResponder];
    [_pwd resignFirstResponder];
}

@end
