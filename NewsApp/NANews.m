//
//  CUNews.m
//  CoreUtitility
//
//  Created by Pradeep Ragav on 10/12/16.
//  Copyright © 2016 tego. All rights reserved.
//

#import "NANews.h"

@implementation NANews

-(id)initWithDictionary:(NSDictionary *)otherDictionary{
    self = [super init];
    if(self)
    {
        self.identifier = [otherDictionary objectForKey:@"id"];
        self.imageURL = [otherDictionary objectForKey:@"image_url"];
        self.newsParagraph = [otherDictionary objectForKey:@"text"];
        self.headLines = [otherDictionary objectForKey:@"title"];
    }
    return self;
}

@end
