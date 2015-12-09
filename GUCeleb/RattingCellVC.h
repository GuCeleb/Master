//
//  RattingCellVC.h
//  GUCeleb
//
//  Created by McCracken, Andrew S on 12/9/15.
//  Copyright © 2015 Gannon.edu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DownPicker.h"

@interface RattingCellVC : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UITextField *txtScore;
@property (strong, nonatomic) DownPicker *downPicker;


@end
