//
//  VideoViewController.m
//  IOS-Demo
//
//  Created by gongpibao on 2017/3/25.
//  Copyright © 2017年 adsdk. All rights reserved.
//

#import "VideoViewController.h"
#import "VideoBaseViewController.h"
#import "VideoPlayControllerViewController.h"
#import "ViewPlayViewControllerViewController.h"
#import "AVPlayerViewController.h"
#import "AVPlayerMoreViewController.h"

@interface VideoViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray <NSString *> *playStyleArray;
@property (nonatomic, strong) NSArray <UIViewController *> *playVCarray;

@end

@implementation VideoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"选择视频播放器";
    [self.view addSubview:self.tableView];
    
    //测试视频
    /*
     @"http://120.25.226.186:32812/resources/videos/minion_01.mp4",
     @"http://120.25.226.186:32812/resources/videos/minion_02.mp4",
     @"http://120.25.226.186:32812/resources/videos/minion_03.mp4",
     @"http://120.25.226.186:32812/resources/videos/minion_04.mp4",
     @"http://120.25.226.186:32812/resources/videos/minion_05.mp4",
     @"http://120.25.226.186:32812/resources/videos/minion_06.mp4",
     @"http://120.25.226.186:32812/resources/videos/minion_07.mp4",
     */
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
 
    return self.playStyleArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellId = @"cellID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    cell.textLabel.text = self.playStyleArray[indexPath.row];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
   
    if(indexPath.row ==3){
        AVPlayerMoreViewController *vc = [[AVPlayerMoreViewController alloc]init];
        [self presentViewController:vc animated:YES completion:nil];

    }else if (indexPath.row==2){
        AVPlayerViewController *vc = [[AVPlayerViewController alloc]init];
        vc.videoPath = @"http://120.25.226.186:32812/resources/videos/minion_01.mp4";
        [self presentViewController:vc animated:YES completion:nil];
    }else{
        VideoBaseViewController *baseVC = (VideoBaseViewController *)self.playVCarray[indexPath.row];
         baseVC.videoPath = @"http://120.25.226.186:32812/resources/videos/minion_01.mp4";
        [self.navigationController pushViewController:baseVC animated:YES];
    }
    
}



-(UITableView *)tableView{
    if(_tableView == nil){
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
    }
    return _tableView;
}

- (NSArray <NSString *> *) playStyleArray{
    
    return @[@"MPPlayerController播放器",@"MPPlayerViewController播放器",@"AVPlayer播放视频单个视频",@"AVPlayer播放视频多个视频"];
}

- (NSArray<UIViewController *> *)playVCarray
{
//    [VideoPlayControllerViewController al]
    return @[[[VideoPlayControllerViewController alloc] init],[[ViewPlayViewControllerViewController alloc] init],[[VideoPlayControllerViewController alloc] init],[[VideoPlayControllerViewController alloc] init]];
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
