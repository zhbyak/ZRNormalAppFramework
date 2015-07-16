//
//  ZRMoreFeaturesController.m
//  我的网易彩票
//
//  Created by 张 锐 on 15/6/24.
//  Copyright (c) 2015年 张 锐. All rights reserved.
//

#import "ZRMoreFeaturesController.h"
#import "ZRMoreFeatureCell.h"
#import "UIView+EasyFrame.h"
#import "ZRAnimatedView.h"

@interface ZRMoreFeaturesController ()
@property (nonatomic,weak) ZRAnimatedView *animatedView;

@property (nonatomic,assign) CGFloat preX;

@end

@implementation ZRMoreFeaturesController

-(instancetype)init{
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    flowLayout.itemSize = [UIScreen mainScreen].bounds.size;
    flowLayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    flowLayout.minimumInteritemSpacing = 0;
    flowLayout.minimumLineSpacing = 0;
    
    return [super initWithCollectionViewLayout:flowLayout];

}

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    //注册nib
    UINib *nib = [UINib nibWithNibName:@"MoreFeature" bundle:nil];
    [self.collectionView registerNib:nib forCellWithReuseIdentifier:reuseIdentifier];
    //滚动设置
    self.collectionView.showsHorizontalScrollIndicator = NO;
    self.collectionView.bounces = NO;
    self.collectionView.pagingEnabled= YES;
    //设置黄线
    UIImageView *yellowLine = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"guideLine"]];
    [self.collectionView addSubview:yellowLine];
    yellowLine.x = -200;
    
    //把第一个白线放在图像中
    ZRAnimatedView *animatedView = [ZRAnimatedView animatedView];
    [animatedView setImagesWithIndex:0];
    [self.collectionView addSubview:animatedView];
    animatedView.frame = [UIScreen mainScreen].bounds;
    
    self.animatedView = animatedView;

    }

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 4;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    ZRMoreFeatureCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    NSString *backImgName = [NSString stringWithFormat:@"guide%zdBackground",indexPath.item + 1];
    cell.backImgName = backImgName;
    
    
    return cell;

}

-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    
    
    
    NSInteger baseWidth = [UIScreen mainScreen].bounds.size.width;
    
   NSInteger page =  self.collectionView.contentOffset.x / baseWidth;
    
    [self.animatedView setImagesWithIndex:page];
    
    if (self.collectionView.contentOffset.x < self.animatedView.x ) {
        baseWidth = - baseWidth;
    }
    
    self.animatedView.x = self.collectionView.contentOffset.x + baseWidth;
    
    [UIView animateWithDuration:0.2 animations:^{
        
        self.animatedView.x = self.collectionView.contentOffset.x;
        
    }];
    
    
}


@end
