//
//  GCDSlowWorkerViewController.m
//  IOS-Demo
//
//  Created by adsdk on 2017/3/17.
//  Copyright © 2017年 adsdk. All rights reserved.
//

#import "GCDSlowWorkerViewController.h"

@interface GCDSlowWorkerViewController ()

@end

@implementation GCDSlowWorkerViewController

@synthesize workText, workButton;

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (NSString *) fachSomethingFromServer{
    [NSThread sleepForTimeInterval:1];
    return @"Hi, three";
}

- (NSString *) processData:(NSString *)data{
    
    [NSThread sleepForTimeInterval:1];
    return [data uppercaseString];
}

- (NSString *) calculateFirstResult:(NSString *)data{
    [NSThread sleepForTimeInterval:1];
    return [NSString stringWithFormat:@"Number of chars %d", data.length];
}

- (NSString *) calculateSecondResult:(NSString *)data{
    [NSThread sleepForTimeInterval:1];
    return [data stringByReplacingOccurrencesOfString:@"E" withString:@"e"];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)startWorkButton:(id)sender {
    NSDate *stateTime = [NSDate date];
    NSString *fetchedData = [self fachSomethingFromServer];
    NSString *processData = [self processData:fetchedData];
    NSString *firstResult = [self calculateFirstResult:processData];
    NSString *secondResult = [self calculateSecondResult:processData];
    NSString *resultSummary = [NSString stringWithFormat:@"first: [%@]\nSecond: [%@]", firstResult, secondResult];
    NSMutableString *result = [NSMutableString string];
    NSString *oldResult = self.workText.text;
    if(oldResult!= nil){
        [result appendString:oldResult];
        [result appendString:@"\n"];
    }
    [result appendString:resultSummary];
    
    self.workText.text = result;
    NSDate *endTime = [NSDate date];
    NSLog(@"Complated in %f seconds", [endTime timeIntervalSinceDate:stateTime]);
    
    [self.workText resignFirstResponder];
    
}

- (void) viewDidUnload{
    [self viewDidUnload];
    self.workText = nil;
    self.workButton = nil;
}
@end
