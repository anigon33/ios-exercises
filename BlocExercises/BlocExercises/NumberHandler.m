//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    NSNumber *doubled = @([number intValue] + [number intValue]);
    return doubled;
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    NSMutableArray *returnNumbers = [[NSMutableArray alloc]init];
    NSInteger lowNumber;
    NSInteger highNumber;
    if (number < otherNumber){
        lowNumber = number;
        highNumber = otherNumber;
    }else {
        lowNumber = otherNumber;
        highNumber = number;
    }
    for (NSInteger i = lowNumber; i <= highNumber; i++) {
        NSNumber *newValue = [NSNumber numberWithInteger:i]; //@(i);
        [returnNumbers addObject:newValue];
    }
    return returnNumbers;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    NSInteger lowestNumber = [arrayOfNumbers[0] integerValue];
    for (NSInteger i = 1; i < [arrayOfNumbers count]; i++) {
        NSInteger newNumber = [arrayOfNumbers[i] integerValue];
        if (newNumber < lowestNumber) {
            lowestNumber = newNumber;
        }
        
    }
    return lowestNumber;
}

@end
