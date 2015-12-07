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
// Convert all values of the class to encapsulate in NSUserDefaults
- (void) encodeWithCoder: (NSCoder *)coder
{
    [coder encodeObject: self.Name forKey:@"Name"];
    [coder encodeObject: self.UserID forKey:@"UserID"];
    [coder encodeObject: self.Password forKey:@"Password"];
    
}
@end