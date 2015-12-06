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
