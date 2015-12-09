//
//  PlatformScoring.m
//  GUCeleb
//
//  Created by Yousef Masluf on 12/8/15.
//  Copyright © 2015 Gannon.edu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ScoringObject.h"

@interface PlatformScoring : NSObject
@property(nonatomic, retain) NSMutableArray *items;


-(int) getTotal;
-(int) getScore;
@end