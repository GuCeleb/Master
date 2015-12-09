//
//  HomePageVC.m
//  GUCeleb
//
//  Created by Jumana A. H. on 11/12/15.
//  Copyright © 2015 Gannon.edu. All rights reserved.
//


#import "HomePageVC.h"

@interface HomePageVC ()

@end

@implementation HomePageVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setNeedsStatusBarAppearanceUpdate];
    _btnCommittee.layer.cornerRadius = 10;
    _btnJudge.layer.cornerRadius = 10;
    _btnStudents.layer.cornerRadius = 10;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

#pragma mark - Navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if([segue.identifier isEqualToString:@"JudgeSeague"]){
        UIViewController *vc = segue.destinationViewController;
        vc.title = @"Judge Login";
    }
}

@end

