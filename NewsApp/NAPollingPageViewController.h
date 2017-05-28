//
//  NAPollingPageViewController.h
//  NewsApp
//
//  Created by Pradeep Ragav on 18/12/16.
//  Copyright © 2016 Tego. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NANews.h"

@interface NAPollingPageViewController : UIViewController


@property (weak, nonatomic) IBOutlet UIImageView *image;

@property (weak, nonatomic) IBOutlet UIView *questionView;
@property (weak, nonatomic) IBOutlet UILabel *question;

@property (weak, nonatomic) IBOutlet UIView *optionsView;
@property (weak, nonatomic) IBOutlet UILabel *details;
@property (weak, nonatomic) IBOutlet UILabel *pollDescription;
@property (weak, nonatomic) IBOutlet UIButton *buttonOne;
@property (weak, nonatomic) IBOutlet UIButton *buttonTwo;


@property (weak, nonatomic) IBOutlet UIView *footerView;
@property (weak, nonatomic) IBOutlet UILabel *footer;
@property (weak, nonatomic) IBOutlet UIImageView *facebookButton;
@property (weak, nonatomic) IBOutlet UIImageView *twitterButton;

@property (strong, nonatomic) NANews *news;

@end
