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
