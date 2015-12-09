//
//  PlatformScoring.m
//  GUCeleb
//
//  Created by Yousef Masluf on 12/8/15.
//  Copyright © 2015 Gannon.edu. All rights reserved.
//

#import "PlatformScoring.h"

@implementation PlatformScoring
@synthesize items;

- (id) initWithCoder: (NSCoder *)coder
{
    if (self = [super init])
    {
        self.items = [coder decodeObjectForKey:@"items"];
        
    }
    
    return self;
    
    
}

- (void) encodeWithCoder: (NSCoder *)coder
{
    [coder encodeObject: self.items forKey:@"items"];
    
}

