//
//  main.m
//  WordEffects
//
//  Created by Katrina de Guzman on 2017-05-29.
//  Copyright © 2017 Katrina de Guzman. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        char inputChars[255];
        printf("Input a string.\n");
        
        fgets(inputChars, 255, stdin);
        
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        
        NSLog(@"%@ %p",[inputString uppercaseString], &inputString); //uppercase
        
        NSLog(@"%@ %p",[inputString lowercaseString], &inputString); //lowercase

        NSLog(@"%lu %p",[inputString integerValue], &inputString);          //numberize
        
        NSLog(@"%@ %p",[inputString stringByAppendingString:@",eh?"], &inputString); //canadianize
        
        char lastChar = [inputString characterAtIndex:[inputString length]-2];//respond
        if(lastChar == '?') NSLog(@"I don't know");
        if(lastChar == '!') NSLog(@"Woah, calm down");
        
        NSLog(@"%@ %p",[inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"], &inputString);//de-space-it
    
    }
    return 0;
}
