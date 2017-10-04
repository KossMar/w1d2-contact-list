

#import "InputCollector.h"

@implementation InputCollector

-(NSString *)inputForPrompt:(NSString *)promptString
{
    
    NSLog(@"%@", promptString);
    
    char inputChar[256];
    fgets(inputChar, 256, stdin);
    NSString *result = [NSString stringWithCString:inputChar
                                          encoding:NSUTF8StringEncoding];
    
    NSString *parsedResult = [result stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];

    return parsedResult;
}

@end
