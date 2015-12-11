//
//  PosterScoring.h
//  GUCeleb
//
//  Created by Yousef Masluf on 12/10/15.
//  Copyright © 2015 Gannon.edu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PosterScoring : NSObject

@property (nonatomic, retain) NSMutableArray *items;

-(int) getTotal;
-(int) getScore;
@end
