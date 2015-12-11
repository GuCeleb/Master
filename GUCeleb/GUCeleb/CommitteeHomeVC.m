//
//  CommitteeHomeVC.m
//  GUCeleb
//
//  Created by Jumana A. H. on 11/20/15.
//  Copyright © 2015 Gannon.edu. All rights reserved.
//


#import "CommitteeHomeVC.h"

@interface CommitteeHomeVC ()

@end

@implementation CommitteeHomeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIBarButtonItem *btn = [[UIBarButtonItem alloc] initWithTitle:@"Logout"
                                     style:UIBarButtonItemStylePlain target:self action:@selector(logout:)];;
    btn.tintColor = [UIColor whiteColor];
    self.navigationItem.leftBarButtonItem = btn;

}

-(void) logout:(id) sender{
    [self dismissViewControllerAnimated:YES completion:nil];
//    self.navigationController pop
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
