//
//  GBMSquareCell.m
//  GBMoran_iOS
//
//  Created by 柴勇峰 on 8/11/15.
//  Copyright (c) 2015 Brave. All rights reserved.
//

#import "GBMSquareCell.h"
//#import "GBMCheckPictureViewController.h"
#import "GBMSquareCollectionCell.h"
//#import "UIImageView+WebCache.h"

@implementation GBMSquareCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
    }
    return self;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.dataArr.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    GBMSquareCollectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"collectionCell" forIndexPath:indexPath];
    NSString *pic = self.dataArr[indexPath.row][@"pic_link"];
    pic = [pic stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSURL *pic_url = [NSURL URLWithString:pic];
//    [cell.pictureImageView sd_setImageWithURL:pic_url];
    cell.titleLabel.text = self.dataArr[indexPath.row][@"title"];
    return cell;
}


- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"%zd", indexPath.row);
    self.pic_url = self.dataArr[indexPath.row][@"pic_link"];
    self.pic_id = self.dataArr[indexPath.row][@"pic_id"];
    self.squareVC.pic_url = self.pic_url;
    self.squareVC.pic_id = self.pic_id;
    [self.squareVC toCheckPicture];
}


@end
