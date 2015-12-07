#import "RattingsTabsVC.h"
#import "RattingCellVC.h"
#import "Persistance.h"
#import <IQKeyboardManager.h>

@implementation RattingsTabsVC{
    PlatformScoring *platform;
    PosterScoring *poster;
    NSMutableArray* options;
    BOOL isPlatform;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    isPlatform = YES;
    if(_isStudent == NO){
        platform = [PlatformScoring new];
        poster = [PosterScoring new];
    }else{
        Persistance *settings = [Persistance sharedInstance];
        Presenter *p = [settings.lstPresenters objectAtIndex:_currentPresenterIndex];
        NSArray *arr = [[p.rattings allValues] lastObject];
        platform = [arr objectAtIndex:0];
        poster = [arr objectAtIndex:1];
        
    }
    options = [[NSMutableArray alloc] init];
    
    // add some sample data
    [options addObject:@"1"];
    [options addObject:@"2"];
    [options addObject:@"3"];
    [options addObject:@"4"];
    [options addObject:@"5"];
    
    [[IQKeyboardManager sharedManager] setEnableAutoToolbar:NO];
    [[IQKeyboardManager sharedManager] setEnable:NO];
    
    
    UIBarButtonItem *btn = [[UIBarButtonItem alloc]
                            initWithBarButtonSystemItem:(UIBarButtonSystemItemStop)
                            target:self
                            action:@selector(closeMe:)];
    
    btn.tintColor = [UIColor whiteColor];
    self.navigationItem.leftBarButtonItem = btn;
    
    if(_isStudent == NO){
        UIBarButtonItem *btnSubmit = [[UIBarButtonItem alloc] initWithTitle:@"Submit"
                                                                      style:UIBarButtonItemStylePlain target:self action:@selector(submitRate:)];
        btnSubmit.tintColor = [UIColor whiteColor];
        self.navigationItem.rightBarButtonItem = btnSubmit;
    }
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}
// Submit rattings for the current presenter
@end

