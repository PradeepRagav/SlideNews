//
//  NAThemeManager.h
//  NewsApp
//
//  Created by Pradeep Ragav on 18/12/16.
//  Copyright © 2016 Tego. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NAThemeManager : NSObject

+(NAThemeManager *)getThemeManager;
-(NSAttributedString *)heading:(NSString *)text;
-(NSAttributedString *)details:(NSString *)text;
-(NSAttributedString *)centerOneLineDescription:(NSString *)text;
-(NSAttributedString *)footer:(NSString *)text;
@end
