//
//  GBMMyViewController.h
//  GBMoran_iOS
//
//  Created by 柴勇峰 on 9/21/15.
//  Copyright (c) 2015 Brave. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GBMHeadImageViewController.h"
#import "GBMNickNameViewController.h"

@interface GBMMyViewController : UITableViewController <GBMNickNameViewControllerDelegate, GBMHeadImageViewControllerDelegate>


@property (weak, nonatomic) IBOutlet UILabel *nickNameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *headImageView;

@end
