//
//  MyClass.m
//  IOS-UI-test
//
//  Created by gongpibao on 2017/4/27.
//  Copyright © 2017年 gongpibao. All rights reserved.
//

#import "MyClass.h"

@implementation MyClass

-(instancetype)init{
    NSLog(@"init MyClass");
    return [super init];
}

-(void)reportToMe{
    NSLog(@"report执行");
}

@end
