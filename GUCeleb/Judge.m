#import "Judge.h"

@implementation Judge

// Make an object from NSUserDefaults and init its values
- (id) initWithCoder: (NSCoder *)coder
{
    if (self = [super init])
    {
        self.Name = [coder decodeObjectForKey:@"Name"];
        self.UserID = [coder decodeObjectForKey:@"UserID"];
        self.Password = [coder decodeObjectForKey:@"Password"];
        
    }
    
    return self;
    
    
}
@end