//
//  NewsPageViewController.m
//  CoreUtitility
//
//  Created by Pradeep Ragav on 28/11/16.
//  Copyright © 2016 tego. All rights reserved.
//

#import "NewsPageViewController.h"
#import "UIImageView+AFNetworking.h"
#import <QuartzCore/QuartzCore.h>
#import "NAThemeManager.h"

@interface NewsPageViewController ()

@end

@implementation NewsPageViewController

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:@"NANewsPage" bundle:nibBundleOrNil];
    if(self)
    {
        
    }
    return self;
}

-(void)awakeFromNib
{
    [super awakeFromNib];
    
    
}

-(void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    [[self.tagOne layer] setBorderWidth:2.0f];
    [[self.tagOne layer] setBorderColor:(__bridge CGColorRef _Nullable)([UIColor blackColor])];
    [[self.tagOne layer] setCornerRadius:8.0f];
    [self.tagOne.titleLabel setText:@"Wildlife"];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self.image setContentMode:UIViewContentModeScaleAspectFill];
    [self setNewsScreenProperties:self.news];
    
    
}

-(void)setNewsScreenProperties:(NANews *)news
{
    //Set Image
//    [self.image setImage:[UIImage imageNamed:@"newsImage"]];
    [self fetchSetImage];
    
    //Set Headline
    [self.heading setNumberOfLines:0];
    [self.heading setAttributedText:[[NAThemeManager getThemeManager] heading:news.headLines]];
    
    //Set News paragraph
    [self.details setNumberOfLines:0];
    [self.details setAttributedText:[[NAThemeManager getThemeManager] details:news.newsParagraph]];
    
    //Set News footer
    [self.footer setText:@"2 days ago"];
    [self.footer setAttributedText:[[NAThemeManager getThemeManager] footer:@"2 days ago"]];
    
    //Others
    [self.furtherLinkLabel setText:@"Punjab Assembly elections 2017"];
    [self.subFurtherLinkLabel setText:@"Opinion poll"];

}

-(void)fetchSetImage
{
    NSURL *url = [NSURL URLWithString:self.news.imageURL];
    [self.image setImageWithURL:url placeholderImage:[UIImage imageNamed:@"Placeholder"]];
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
