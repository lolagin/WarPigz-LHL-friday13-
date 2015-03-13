//
//  NSString+Latinizer.m
//  DirtyPig
//
//  Created by Jeffrey C Rosenthal on 3/13/15.
//  Copyright (c) 2015 Jeffreycorp. All rights reserved.
//

#import "NSString+Latinizer.h"

@implementation NSString (Latinizer)
-(NSString *)stringByPigLatinization{
//whatever = [string stringbypiglatin]
    NSMutableArray *bagOfHolding = [[NSMutableArray alloc]init];
    NSArray *chunkd = [self componentsSeparatedByString:@" "];
    [chunkd enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        NSMutableString *lul = [(NSString*)obj mutableCopy];
        
        NSString *vowelCatcher = [[NSString alloc]init];
        NSScanner *vowelsplitter = [NSScanner scannerWithString:(NSString *)obj];
        NSCharacterSet *vowelPile = [NSCharacterSet characterSetWithCharactersInString:@"aeiouy"];
        [vowelsplitter scanUpToCharactersFromSet:vowelPile intoString:&vowelCatcher];
        
        NSString *isVowelStart = [[NSString alloc] init];
        NSString *vowelCheck = [lul substringToIndex:1];
        NSScanner *vowelSearch = [NSScanner scannerWithString:vowelCheck];
        [vowelSearch scanCharactersFromSet:vowelPile intoString:&isVowelStart];
        if (!([isVowelStart isEqualTo:@""])){
//            NSLog(@"vowel: %@", isVowelStart);
            [lul appendString:@"ay"];
            [bagOfHolding addObject:lul];
        }

        else {
            NSString *firstHalf = vowelCatcher;
            NSString *secondHalf = [[vowelsplitter string] substringFromIndex:[vowelsplitter scanLocation]];
            NSString *switcheroo = [secondHalf stringByAppendingString:firstHalf];
            NSMutableString *returnalul = [(NSString *)switcheroo mutableCopy];
            [returnalul appendString:@"ay"];
            [bagOfHolding addObject:returnalul];
        }
    }];
    NSString *stringz = [bagOfHolding componentsJoinedByString:@" "];
        return stringz;
}
@end
