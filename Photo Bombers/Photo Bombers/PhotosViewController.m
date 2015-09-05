//
//  PhotosViewController.m
//  Photo Bombers
//
//  Created by Dean Laurea on 9/2/15.
//  Copyright (c) 2015 Dean Laurea. All rights reserved.
//

#import "PhotosViewController.h"
#import "PhotoCell.h"
#import <SimpleAuth.h>

@interface PhotosViewController ()

@end

@implementation PhotosViewController

- (instancetype)init {
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.itemSize = CGSizeMake(124.0, 124.0);
    layout.minimumInteritemSpacing = 1.0;
    layout.minimumLineSpacing = 1.0;
    
    return (self =[super initWithCollectionViewLayout:layout]);
    //Note that this is the same as (self =[super initWithCollectionViewLayout:layout]);
    //then
    //return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Photo Bombers";
    
    [self.collectionView registerClass:[PhotoCell class] forCellWithReuseIdentifier:@"photo"];
    self.collectionView.backgroundColor = [UIColor whiteColor];
    
    [SimpleAuth authorize:@"instagram" completion:^(id responseObject, NSError *error) {
        NSLog(@"response: %@", responseObject);
    }];
   
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 10;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"photo" forIndexPath:indexPath];
    cell.backgroundColor = [UIColor lightGrayColor];
    return cell;
}

@end