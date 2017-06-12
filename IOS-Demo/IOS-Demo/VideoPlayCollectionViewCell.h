//
//  VideoPlayCollectionViewCell.h
//  IOS-Demo
//
//  Created by gongpibao on 2017/3/26.
//  Copyright © 2017年 adsdk. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^LZBVideoPlayCollectionViewCellCloseClickBlock)();
@interface VideoPlayCollectionViewCell : UICollectionViewCell
/** videoPath */
@property(nonatomic, strong)NSString *videoPath;
@property(nonatomic, strong)NSIndexPath *indexPath;

//点击关闭按钮
@property (nonatomic, copy) LZBVideoPlayCollectionViewCellCloseClickBlock closeClick;
-(void)setCloseClick:(LZBVideoPlayCollectionViewCellCloseClickBlock)closeClick;

//刷新时间的数据
- (void)reloadTimeLabelWithTime:(NSInteger)time;
@end

