//
//  HomePageVC.h
//  GUCeleb
//
//  Created by Jumana A. H. on 11/13/15.
//  Copyright © 2015 Gannon.edu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CommitteeLoginVC : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *txtUsername;
@property (weak, nonatomic) IBOutlet UITextField *txtPassword;
@property (nonatomic, assign) BOOL isJudge;
@property (weak, nonatomic) IBOutlet UILabel *lblTitle;

@end
