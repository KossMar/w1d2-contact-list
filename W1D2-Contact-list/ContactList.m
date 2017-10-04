

#import "ContactList.h"

@implementation ContactList

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.contactArray = [NSMutableArray new];
    }
    return self;
}

-(void)addContact:(Contact*)newContact {
    [_contactArray addObject:newContact];
}

-(NSMutableArray*)printContacts;
{
NSUInteger index = [_contactArray indexOfObject:@"name"];
NSMutableArray *names = [_contactArray valueForKey:@"name"];
    return names;
}
@end
