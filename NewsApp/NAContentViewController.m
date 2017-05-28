//
//  ContentViewController.m
//  CoreUtitility
//
//  Created by Pradeep Ragav on 28/11/16.
//  Copyright © 2016 tego. All rights reserved.
//

#import "NAContentViewController.h"
#import "NewsPageViewController.h"
#import "NAPollingPageViewController.h"
#import "PLCarouselView.h"
#import <AFNetworking.h>
@interface NAContentViewController ()<PLCarouselViewDataSource,PLCarouselViewDelegate>

@property (nonatomic, strong) NSMutableArray *newsArray;
@property (nonatomic, strong) PLCarouselView *carousel;
@end

@implementation NAContentViewController

- (void)loadView
{
    [super loadView];
    
     self.carousel = [PLCarouselView init];
    
    [self.carousel setFrame:[UIScreen mainScreen].bounds];

    self.carousel.delegate = self;
    
    self.carousel.dataSource = self;
    
    self.carousel.vertical = YES;
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:self.carousel];
    
//    [self.carousel reloadData];
    [self fetchNews];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

#pragma mark - PLCarouselView delegates & datasources

-(UIView *)carouselView:(PLCarouselView *)carouselView viewForItemAtIndex:(NSUInteger)index reusingView:(UIView *)view
{
    if(view)
    {
        return view;
    }
    else
    {
        //Create news data
        NANews *news = [[NANews alloc] initWithDictionary:[self.newsArray objectAtIndex:index]];
        
        //Create news page
        NewsPageViewController *newsPage = [[NewsPageViewController alloc] init];
//        NAPollingPageViewController *newsPage = [[NAPollingPageViewController alloc] init];
        newsPage.news = news;
        [newsPage.view setFrame:carouselView.frame];
        
        return newsPage.view;
    }
}

-(NSUInteger)numberOfItemsInCarousel:(PLCarouselView *)carouselView
{
    return self.newsArray.count;
}

-(void)carouselView:(PLCarouselView *)carouselView didMoveToView:(UIView *)view
{
    
}

-(void)carouselCurrentItemIndexDidChange:(PLCarouselView *)carouselView currentIndex:(NSUInteger)currentIndex previousIndex:(NSUInteger)previousIndex
{
    
}

-(void)carouselView:(PLCarouselView *)carouselView didSelectItemAtIndex:(NSUInteger)index
{
    
}

-(void)carouselView:(PLCarouselView *)carouselView changedScrollDirection:(PLCarouselViewDirection)direction
{
    switch (direction) {
        case PLCarouselViewDirectionDown:
        {
            [self.navigationController setNavigationBarHidden:YES animated:YES];
        }
            break;
        case PLCarouselViewDirectionUp:
        {
            [self.navigationController setNavigationBarHidden:NO animated:YES];
        }
            break;
        case PLCarouselViewDirectionLeft:
        {
            [self.navigationController setNavigationBarHidden:NO animated:YES];
        }
            break;
        case PLCarouselViewDirectionRight:
        {
            [self.navigationController setNavigationBarHidden:NO animated:YES];
        }
            break;
        case PLCarouselViewDirectionStatic:
        {
            
        }
            break;
        default:
            break;
    }
}

-(void)carouselView:(PLCarouselView *)carouselView didScrollDiffrenceRate:(CGFloat)diffRate
{
    
}

-(void)fetchNews
{
    //TO DO: Error handling, fetching news in the background
    //Doubts:
    //How many news are fetched per request ?
    //When are the news updated(Fetched) ?
    NSURL *baseURL = [NSURL URLWithString:@"https://newsapp7.herokuapp.com/"];
    NSDictionary *parameters = @{@"format": @"json"};
    
    __weak NAContentViewController *cVC = self;
    AFHTTPSessionManager *manager = [[AFHTTPSessionManager alloc] initWithBaseURL:baseURL];
    manager.responseSerializer = [AFJSONResponseSerializer serializer];
    
    [manager GET:@"dashboard.json" parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        cVC.newsArray = responseObject;
        [cVC.carousel reloadData];
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error Retrieving Weather"
        //                                                            message:[error localizedDescription]
        //                                                           delegate:nil
        //                                                  cancelButtonTitle:@"Ok"
        //                                                  otherButtonTitles:nil];
        //        [alertView show];
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
