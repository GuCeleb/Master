#import "Presenter.h"

@implementation Presenter

// Make an object from NSUserDefaults and init its values
- (id) initWithCoder: (NSCoder *)coder
{
    if (self = [super init])
    {
        self.Name = [coder decodeObjectForKey:@"Name"];
        self.Topic = [coder decodeObjectForKey:@"Topic"];
        self.Date = [coder decodeObjectForKey:@"Date"];
        self.Time = [coder decodeObjectForKey:@"Time"];
        self.Location = [coder decodeObjectForKey:@"Location"];
        self.image = [coder decodeObjectForKey:@"image"];
        self.rattings = [coder decodeObjectForKey:@"rattings"];
        self.isLiked = [coder decodeBoolForKey:@"isLiked"];
        
    }
    
    return self;
    
    
}
@end
