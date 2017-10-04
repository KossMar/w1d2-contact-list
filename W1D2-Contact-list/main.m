

#import <Foundation/Foundation.h>
#import "Contact.h"
#import "ContactList.h"
#import "InputCollector.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        BOOL programRun = YES;
        
        
        
        while (programRun == YES) {
        
         InputCollector *inputColl = [[InputCollector alloc] init];
            
         NSString *menuPrompt = [inputColl inputForPrompt:@"What would you like to do next? \n - new \n - create contact list \n - quit" ];
        
            if ([menuPrompt isEqualToString:(@"quit")]) {
                NSLog(@"Later, Homeslice");
                programRun = NO;
                continue;
            }
            else if ([menuPrompt isEqualToString:(@"new")]) {
                NSString *contactPrompt = [inputColl inputForPrompt:@"Name or e-mail?"];
                if ([contactPrompt isEqualToString:(@"name")]) {
                    
                }
            }
        }
    }
    return 0;
}
