//
//  TaskListTableViewController.m
//  IOS-Demo-2
//
//  Created by adsdk on 2017/3/14.
//  Copyright © 2017年 adsdk. All rights reserved.
//

#import "TaskListController.h"

@interface TaskListController ()

@end

@implementation TaskListController

@synthesize tableview;
@synthesize array;
@synthesize tasks;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;

    self.tasks = [NSArray arrayWithObjects:@"URGENT:提交测试",@"阿里巴巴",@"阿里大文娱",@"优酷",@"土豆", nil];
    
//    tableview = [[UITableView alloc]initWithFrame:CGRectMake(0, 0,self.view.bounds.size.width,self.view.bounds.size.height)style:UITableViewStylePlain];
//    
//    //    UITableViewStylePlain,
//    //    UITableViewStyleGrouped
//    
//    tableview.delegate =self;//不要忘写了这两句话哟调用delegate*/
//    tableview.dataSource=self;
//    [self.view addSubview:tableview];
//    
//    NSMutableArray *arrayValue = [[NSMutableArray alloc]init];
//    
//    for (int i = 0; i< 10; i++)
//    {
//        NSString *value = [NSString stringWithFormat:@"%d",i];
//        [arrayValue addObject:value];
//    }
//    
//    array = arrayValue;
    
    
    // Do any additional setup after loading the view, typically from a nib.
//    self.tasks = [NSArray arrayWithObjects:@"王小虎",@"郭二牛",@"宋小六",@"耿老三",@"曹大将军", nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return [tasks count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    NSString * identifier = nil;
//    NSString * task = [self.tasks objectAtIndex:indexPath.row];
//    NSRange urgentRange = [task rangeOfString:@"URGENT"];
//    if(urgentRange.location == NSNotFound){
//        identifier = @"plainCell";
//    }else{
//        identifier = @"attenntionCell";
//    }
//    
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
//    UILabel *cellLabel = (UILabel *)[cell viewWithTag:1];
//    cellLabel.text= task;

    
//    //定义个静态字符串为了防止与其他类的tableivew重复
//    static NSString *CellIdentifier = @"Cell";
//    //定义cell的复用性当处理大量数据时减少内存开销
//    UITableViewCell *cell = [tableview dequeueReusableCellWithIdentifier:CellIdentifier];
//    
//    if (cell ==nil)
//    {
//    }
//    
//    cell.textLabel.text = [array objectAtIndex:[indexPath row]];  //通过 [indexPath row] 遍历数组
//
  
    
    
    static NSString *indentifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:indentifier];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:indentifier];
    }
    
    cell.textLabel.text = [self.tasks objectAtIndex:indexPath.row];
    
    return cell;
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
