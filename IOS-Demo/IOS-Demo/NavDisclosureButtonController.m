//
//  NavDisclosureButtonController.m
//  IOS-Demo
//
//  Created by adsdk on 2017/3/16.
//  Copyright © 2017年 adsdk. All rights reserved.
//

#import "NavDisclosureButtonController.h"
#import "NavDisclosureDetailController.h"

@interface NavDisclosureButtonController ()

@property (strong, nonatomic)NavDisclosureDetailController *childController;

@end

@implementation NavDisclosureButtonController

@synthesize list;
@synthesize childController;

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *array = [[NSArray alloc] initWithObjects:@"阿里巴巴集团",@"支付宝",@"阿里大文娱",@"阿里妈妈",@"菜鸟网路",@"阿里小贷",@"阿里云",@"阿里文学", nil];
    self.list = array;
}

//- (void)viewDidUnload{
//    self.list = nil;
//    self.childController = nil;
//    [super viewDidUnload];
//}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}


- (NSInteger ) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return [self.list count];
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *DisclosureButtonCellIdentifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:DisclosureButtonCellIdentifier];
    
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:DisclosureButtonCellIdentifier];
    }
    
    NSUInteger row = [indexPath row];
    NSString *rowString = [list objectAtIndex:row];
    cell.textLabel.text = rowString;
    cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
    return cell;
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Hey, do you see the disclosure button?" message:@"If you down,touch" delegate:nil cancelButtonTitle:@"won't happen again" otherButtonTitles:nil, nil];
    [alert show];
}

- (void) tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath{
    if(childController == nil){
        UIStoryboard *story = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
        childController = [story instantiateViewControllerWithIdentifier:@"NavDisclosureDetailView"];
    }
    childController.title = @"Disclosure Button Pressed";
    NSUInteger row = [indexPath row];
    NSString *selectedMoive = [list objectAtIndex:row];
    NSString *detailMessage = [[NSString alloc] initWithFormat:@"%@的详情", selectedMoive];
    childController.message = detailMessage;
    childController.title = selectedMoive;
    
    [self.navigationController pushViewController:childController animated:YES];
    
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
