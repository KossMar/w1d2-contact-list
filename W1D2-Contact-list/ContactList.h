
#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

@property (nonatomic) NSMutableArray *contactArray;

-(void)addContact:(Contact *)newContact;

-(NSMutableArray*)printContacts;


@end
