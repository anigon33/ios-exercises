//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    NSString *favoriteCheese = [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
    return favoriteCheese;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    NSString *returnMessage;
    NSRange cheeseRange = [cheeseName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
    if (cheeseRange.location == NSNotFound){
        returnMessage = cheeseName;
    }
    else {
    
        returnMessage = [cheeseName stringByReplacingCharactersInRange:cheeseRange withString:@""];
    
    }
        return returnMessage;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    NSString *returnMessage;
    if (cheeseCount == 1) {
        returnMessage = [NSString stringWithFormat:@"%ld cheese", cheeseCount];
    } else {
        returnMessage = [NSString stringWithFormat:@"%ld cheeses", cheeseCount];
    }
    
    return returnMessage;
}

@end
