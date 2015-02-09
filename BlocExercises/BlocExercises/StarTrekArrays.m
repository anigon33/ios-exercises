//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    NSString *character = characterString;
    NSArray *arrayList = [character componentsSeparatedByString:@";"];
    
    return  arrayList;
}



- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    NSArray *mutableArray = characterArray;
    NSString *returnString = [mutableArray componentsJoinedByString:@";"];
    return returnString;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    NSSortDescriptor *alphabetical = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES];
    NSArray *ascendingOrder = [characterArray sortedArrayUsingDescriptors:@[alphabetical]];
    return ascendingOrder;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    for (NSString *characterString in characterArray) {
        NSRange worfRange = [[characterString lowercaseString] rangeOfString:@"worf"];
        if (worfRange.location != NSNotFound )
            return YES;
    }
    return NO;
}

@end
