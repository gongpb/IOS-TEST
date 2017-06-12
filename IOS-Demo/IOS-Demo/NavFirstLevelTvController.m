//
//  NavFirstLevelTableViewController.m
//  IOS-Demo
//
//  Created by adsdk on 2017/3/16.
//  Copyright © 2017年 adsdk. All rights reserved.
//

#import "NavFirstLevelTvController.h"
#import "NavSecondLevelTvController.h"

#import "TaskListController.h"
#import "NavDisclosureButtonController.h"
#import "NavCheckListController.h"
#import "NavRowControlsController.h"
#import "NavMoveMeController.h"

@interface NavFirstLevelTvController ()

@end

@implementation NavFirstLevelTvController

@synthesize controllers;

- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.title = @"测试Demo";
    NSMutableArray *mutableArray = [[NSMutableArray alloc] init];
    
//    //静态表格-显示时间
//    TaskStaticCellsController *taskStaticCellsController = [[TaskStaticCellsController alloc] initWithStyle:UITableViewStylePlain];
//    taskStaticCellsController.title = @"静态表格-时间";
//    //    disclosureButtonController.rowImage = [UIImage imageNamed:@"disclosureButtonControllerIcon.png"];
//    [mutableArray addObject:taskStaticCellsController];
    
    //导航
    NavDisclosureButtonController *disclosureButtonController = [[NavDisclosureButtonController alloc] initWithStyle:UITableViewStylePlain];
    disclosureButtonController.title = @"导航表视图";
//    disclosureButtonController.rowImage = [UIImage imageNamed:@"disclosureButtonControllerIcon.png"];
    [mutableArray addObject:disclosureButtonController];
    
    //checkList
    NavCheckListController *checkListController = [[NavCheckListController alloc] initWithStyle:UITableViewStylePlain];
    checkListController.title = @"单选测试";
    [mutableArray addObject:checkListController];
    
    //表行上的控件
    NavRowControlsController *rowControlsController = [[NavRowControlsController alloc] initWithStyle:UITableViewStylePlain];
    rowControlsController.title = @"表行控件";
    [mutableArray addObject:rowControlsController];

    
    //可移动的行
    NavMoveMeController *moveMeController = [[NavMoveMeController alloc] initWithStyle:UITableViewStylePlain];
    moveMeController.title = @"可移动的行";
    [mutableArray addObject:moveMeController];

    
    
    
    self.controllers = mutableArray;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return [self.controllers count];
}

- (void)viewDidUnload{
    [self viewDidUnload];
    self.controllers = nil;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    static NSString *firstLevelCell = @"FirstLevelCell";
    UITableViewCell  *cell = [tableView dequeueReusableCellWithIdentifier:firstLevelCell];
    // Configure the cell...
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:firstLevelCell];
    }
    
    //configure cell
    NSUInteger row = [indexPath row];
    NavSecondLevelTvController *controller = [controllers objectAtIndex:row];
    cell.textLabel.text = controller.title;
    cell.imageView.image = controller.rowImage;
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSUInteger row = [indexPath row];
    NavSecondLevelTvController *nextController = [self.controllers objectAtIndex:row];
    [self.navigationController pushViewController:nextController animated:YES];
    
}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
