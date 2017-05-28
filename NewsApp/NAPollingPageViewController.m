//
//  NAPollingPageViewController.m
//  NewsApp
//
//  Created by Pradeep Ragav on 18/12/16.
//  Copyright © 2016 Tego. All rights reserved.
//

#import "NAPollingPageViewController.h"
#import "NAThemeManager.h"
#import "UIImageView+AFNetworking.h"
#import <QuartzCore/QuartzCore.h>

@interface NAPollingPageViewController ()

@end

@implementation NAPollingPageViewController

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:@"NAPollingPage" bundle:nibBundleOrNil];
    if(self)
    {
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setTextAndImage];
    [self setButtonProperties];
    [self fetchSetImage];
}

-(void)setTextAndImage
{
    [self.question setNumberOfLines:0];
    [self.question setAttributedText:[[NAThemeManager getThemeManager] heading:self.news.headLines]];
    
    [self.details setNumberOfLines:0];
    [self.details setAttributedText:[[NAThemeManager getThemeManager] details:self.news.newsParagraph]];
    
    [self.pollDescription setNumberOfLines:0];
    [self.pollDescription setAttributedText:[[NAThemeManager getThemeManager] centerOneLineDescription:@"223 have already voted"]];
    
    self.footer.text = @"2days ago";
    [self.footer setNumberOfLines:0];
    [self.footer setAttributedText:[[NAThemeManager getThemeManager] footer:@"2 days ago"]];
}

-(void)setButtonProperties
{
    [[self.buttonOne layer] setBorderColor:[[UIColor greenColor] CGColor]];
    [[self.buttonOne layer] setBorderWidth:1.0f];
    [[self.buttonOne layer] setCornerRadius:12.0f];
    [self.buttonOne setTitle:@"Yes" forState:UIControlStateNormal];
    [self.buttonOne setTintColor:[UIColor blackColor]];
    
    [[self.buttonTwo layer] setBorderColor:[[UIColor redColor] CGColor]];
    [[self.buttonTwo layer] setBorderWidth:1.0f];
    [[self.buttonTwo layer] setCornerRadius:12.0f];
    [self.buttonTwo setTitle:@"No" forState:UIControlStateNormal];
    [self.buttonTwo setTintColor:[UIColor blackColor]];
}

-(void)fetchSetImage
{
    [self.image setContentMode:UIViewContentModeScaleAspectFill];
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
