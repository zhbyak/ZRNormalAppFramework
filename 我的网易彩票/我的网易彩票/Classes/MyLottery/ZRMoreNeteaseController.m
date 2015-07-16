//
//  ZRMoreNeteaseController.m
//  我的网易彩票
//
//  Created by 张 锐 on 15/6/23.
//  Copyright (c) 2015年 张 锐. All rights reserved.
//

#import "ZRMoreNeteaseController.h"
#import "ZRProduct.h"
#import "ZRProductCell.h"

@interface ZRMoreNeteaseController ()

@property (strong,nonatomic) NSArray *products;

@end

@implementation ZRMoreNeteaseController

static NSString * const reuseIdentifier = @"Cell";

-(NSArray *)products{
   
    
    if (_products == nil) {
    //加载json文件
    NSString *addr = [[NSBundle mainBundle] pathForResource:@"products.json" ofType:nil];
    
    NSData *data = [NSData dataWithContentsOfFile:addr];
    
    NSArray *array = [NSJSONSerialization JSONObjectWithData:data options:0 error:NULL];
        
    //创建模型
        NSMutableArray *arrayM = [NSMutableArray array];
        for (NSDictionary *dict  in array) {
            ZRProduct *product = [ZRProduct productWithDict:dict];
            [arrayM addObject:product];
        }
        _products = arrayM.copy;
        
    }
    return _products;

}

-(instancetype)init{
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    flowLayout.itemSize = CGSizeMake(75, 75);
    flowLayout.minimumInteritemSpacing = 0;
    flowLayout.minimumLineSpacing = 15;
    flowLayout.sectionInset  = UIEdgeInsetsMake(15, 0, 0, 0);
    return [self initWithCollectionViewLayout:flowLayout];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.collectionView.backgroundColor = [UIColor whiteColor];
    [self.collectionView registerNib:[UINib nibWithNibName:@"ZRProductCell" bundle:nil]forCellWithReuseIdentifier:reuseIdentifier];
    
    
}




#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {

    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return self.products.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    ZRProductCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    // Configure the cell
    ZRProduct *product = self.products[indexPath.item];
    cell.product  = product;
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>


@end
