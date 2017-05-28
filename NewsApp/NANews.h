//
//  CUNews.h
//  CoreUtitility
//
//  Created by Pradeep Ragav on 10/12/16.
//  Copyright © 2016 tego. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NANews : NSObject
@property (nonatomic, strong) NSNumber *identifier;
@property (nonatomic, strong) NSString *newsParagraph;
@property (nonatomic, strong) NSString *headLines;
@property (nonatomic, strong) NSString *imageURL;

-(id)initWithDictionary:(NSDictionary *)otherDictionary;
@end
