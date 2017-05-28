//
//  NewsPageViewController.h
//  CoreUtitility
//
//  Created by Pradeep Ragav on 28/11/16.
//  Copyright © 2016 tego. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NANews.h"

@interface NewsPageViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UILabel *heading;
@property (weak, nonatomic) IBOutlet UILabel *details;
@property (weak, nonatomic) IBOutlet UILabel *footer;
@property (weak, nonatomic) IBOutlet UILabel *furtherLinkLabel;
@property (weak, nonatomic) IBOutlet UILabel *subFurtherLinkLabel;
@property (weak, nonatomic) IBOutlet UIButton *facebookButton;
@property (weak, nonatomic) IBOutlet UIButton *twitterButton;
@property (weak, nonatomic) IBOutlet UIButton *tagOne;

@property (weak, nonatomic) IBOutlet UIView *headerView;
@property (weak, nonatomic) IBOutlet UIView *detailView;
@property (weak, nonatomic) IBOutlet UIView *footerView;


@property (nonatomic, strong) NANews *news;
@end
