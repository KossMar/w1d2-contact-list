

#import <Foundation/Foundation.h>
#import "Contact.h"
#import "ContactList.h"
#import "InputCollector.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        BOOL programRun = YES;
        
        ContactList *firstContactList = [[ContactList alloc] init];
        
        while (programRun == YES) {
        
         InputCollector *inputColl = [[InputCollector alloc] init];
            
         NSString *menuPrompt = [inputColl inputForPrompt:@"What would you like to do next? \n - new \n - list all \n - quit" ];
        
            if ([menuPrompt isEqualToString:(@"quit")]) {
                NSLog(@"Later, Homeslice");
                programRun = NO;
                continue;
            }
            else if ([menuPrompt isEqualToString:(@"new")]) {
                Contact *contact1 = [[Contact alloc] init];
                    NSString *namePrompt = [inputColl inputForPrompt:@"enter full name"];
                    contact1.name = namePrompt;
                    NSLog(@"%@ has been added to contacts", contact1.name);
                    [firstContactList addContact:contact1];
                    NSString *emailPrompt = [inputColl inputForPrompt:@"enter email"];
                    contact1.email = emailPrompt;
                    NSLog(@"%@ has been added to contacts", contact1.email);
                }
            
            else if ([menuPrompt isEqualToString:(@"list all")]) {

                    NSLog(@"%@", [firstContactList printContacts]);
            }
        }
    }
    return 0;
}
