//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    NSMutableString *returnMessage = [[NSMutableString alloc]init];
    NSInteger lowNumber;
    NSInteger highNumber;
    if (number < otherNumber){
        lowNumber = number;
        highNumber = otherNumber;
    }else {
        lowNumber = otherNumber;
        highNumber = number;
    }for (NSInteger i = lowNumber; i <= highNumber; i++){
        [returnMessage appendFormat:@"%ld", i];
    }
    return returnMessage;
    
    

}

@end
