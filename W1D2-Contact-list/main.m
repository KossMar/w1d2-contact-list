

#import <Foundation/Foundation.h>
#import "Contact.h"
#import "ContactList.h"
#import "InputCollector.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        BOOL programRun = YES;
        
        While (programRun =YES);
        {
        
            
            InputCollector *usernameInput = [[InputCollector alloc] init];
            
            NSString *usernameInput =  [InputCollector inputForPrompt];
        
        }
    return 0;
}
