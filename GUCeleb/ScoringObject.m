#import "ScoringObject.h"

@implementation ScoringObject


- (id) initWithCoder: (NSCoder *)coder
{
    if (self = [super init])
    {
        self.Criteria = [coder decodeObjectForKey:@"Criteria"];
        self.Sophisticated = [coder decodeObjectForKey:@"Sophisticated"];
        self.Competent = [coder decodeObjectForKey:@"Competent"];
        self.NotYetCompetent = [coder decodeObjectForKey:@"NotYetCompetent"];
        self.Weight = [coder decodeIntForKey:@"Weight"];
        self.Points = [coder decodeIntForKey:@"Points"];
        
    }
    
    return self;
}
// Convert all values of the class to encapsulate in NSUserDefaults
- (void) encodeWithCoder: (NSCoder *)coder
{
    [coder encodeObject: self.Criteria forKey:@"Criteria"];
    [coder encodeObject: self.Sophisticated forKey:@"Sophisticated"];
    [coder encodeObject: self.Competent forKey:@"Competent"];
    [coder encodeObject: self.NotYetCompetent forKey:@"NotYetCompetent"];
    [coder encodeInt: self.Weight forKey:@"Weight"];
    [coder encodeInt: self.Points forKey:@"Points"];
    
}
@end