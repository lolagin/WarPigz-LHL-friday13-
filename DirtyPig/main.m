//
//  main.m
//  DirtyPig
//
//  Created by Jeffrey C Rosenthal on 3/13/15.
//  Copyright (c) 2015 Jeffreycorp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+Latinizer.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
     
        
        NSString *lul = @"This is the words i wrote";
        NSString *newlul = [lul stringByPigLatinization];
        
        NSLog(lul);
//        NSLog(@"hello swine! enter some words and i will translate them into an unbreakable code like in that film about  bingledip Brindlesnatch");
        NSLog(@"%@", newlul);
        
        
    }
    return 0;
}
