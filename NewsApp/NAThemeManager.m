//
//  NAThemeManager.m
//  NewsApp
//
//  Created by Pradeep Ragav on 18/12/16.
//  Copyright © 2016 Tego. All rights reserved.
//

#import "NAThemeManager.h"
#import <UIKit/UIKit.h> 

@interface NSObject()

@end

@implementation NAThemeManager

+(NAThemeManager *)getThemeManager
{
    static NAThemeManager *themeManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        themeManager = [[NAThemeManager alloc] init];
    });
    return themeManager;
}

-(NSAttributedString *)heading:(NSString *)text
{
    NSMutableAttributedString *headingAttrString = [[NSMutableAttributedString alloc] initWithString:text];
    //Font
    UIFont *myFont = [UIFont fontWithName:@"HelveticaNeue-Bold" size:18];
    
    //Paragragh Style
    NSMutableParagraphStyle *paraStyle = [[NSMutableParagraphStyle alloc] init];
    [paraStyle setLineBreakMode:NSLineBreakByTruncatingTail];
    [paraStyle setAlignment:NSTextAlignmentLeft];
    
    NSDictionary *attrDictionary = [[NSDictionary alloc] initWithObjectsAndKeys:myFont,NSFontAttributeName,paraStyle,NSParagraphStyleAttributeName, nil];
    [headingAttrString setAttributes:attrDictionary range:NSMakeRange(0, text.length)];
    
    return headingAttrString;
}

-(NSAttributedString *)details:(NSString *)text
{
    NSMutableAttributedString *headingAttrString = [[NSMutableAttributedString alloc] initWithString:text];
    //Font
    UIFont *myFont = [UIFont fontWithName:@"HelveticaNeue" size:14];
    
    //Paragragh Style
    NSMutableParagraphStyle *paraStyle = [[NSMutableParagraphStyle alloc] init];
    [paraStyle setLineBreakMode:NSLineBreakByTruncatingTail];
    [paraStyle setAlignment:NSTextAlignmentJustified];
    
    //Font color
    UIColor *fontColor = [UIColor darkGrayColor];
    
    NSDictionary *attrDictionary = [[NSDictionary alloc] initWithObjectsAndKeys:myFont,NSFontAttributeName,paraStyle,NSParagraphStyleAttributeName,fontColor,NSForegroundColorAttributeName, nil];
    [headingAttrString setAttributes:attrDictionary range:NSMakeRange(0, text.length)];
    
    return headingAttrString;
}

-(NSAttributedString *)centerOneLineDescription:(NSString *)text
{
    NSMutableAttributedString *headingAttrString = [[NSMutableAttributedString alloc] initWithString:text];
    //Font
    UIFont *myFont = [UIFont fontWithName:@"Georgia-Italic" size:12];
    
    //Paragragh Style
    NSMutableParagraphStyle *paraStyle = [[NSMutableParagraphStyle alloc] init];
    [paraStyle setLineBreakMode:NSLineBreakByTruncatingTail];
    [paraStyle setAlignment:NSTextAlignmentCenter];
    
    NSDictionary *attrDictionary = [[NSDictionary alloc] initWithObjectsAndKeys:myFont,NSFontAttributeName,paraStyle,NSParagraphStyleAttributeName, nil];
    [headingAttrString setAttributes:attrDictionary range:NSMakeRange(0, text.length)];
    
    return headingAttrString;
}

-(NSAttributedString *)footer:(NSString *)text
{
    NSMutableAttributedString *attrString = [[NSMutableAttributedString alloc] initWithString:text];
    //Font
    UIFont *myFont = [UIFont fontWithName:@"HelveticaNeue" size:14];
    
    //Paragragh Style
    NSMutableParagraphStyle *paraStyle = [[NSMutableParagraphStyle alloc] init];
    [paraStyle setLineBreakMode:NSLineBreakByTruncatingTail];
    [paraStyle setAlignment:NSTextAlignmentLeft];
    
    //Font color
    UIColor *fontColor = [UIColor grayColor];
    
    NSDictionary *attrDictionary = [[NSDictionary alloc] initWithObjectsAndKeys:myFont,NSFontAttributeName,paraStyle,NSParagraphStyleAttributeName,fontColor,NSForegroundColorAttributeName, nil];
    [attrString setAttributes:attrDictionary range:NSMakeRange(0, text.length)];
    
    return attrString;
}

@end
