//
//  Persistance.h
//  GUCeleb
//
//  Created by Jumana A. H. on 11/10/15.
//  Copyright © 2015 Gannon.edu. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "Judge.h"
#import "Presenter.h"

@interface Persistance : NSObject

@property (nonatomic, retain) NSMutableArray *lstPresenters;
@property (nonatomic, retain) NSMutableArray *lstJudges;
@property (nonatomic, retain) NSMutableArray *lstStudents;
@property (nonatomic, retain) NSString *comLogin;
@property (nonatomic, retain) NSString *comPassword;

-(void) synchronize;
+(Persistance *) sharedInstance;

@end

