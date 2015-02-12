//
//  StuffRememberer.m
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import "StuffRememberer.h"

@implementation StuffRememberer

- (void) rememberThisArrayForLater:(NSMutableArray *)arrayToRemember {
    self.rememberedArray = arrayToRemember;
}

- (void) copyThisArrayForLater:(NSMutableArray *)arrayToCopy {
    NSMutableArray *arrayDuplicate = [[NSMutableArray alloc] init];
    [arrayDuplicate addObjectsFromArray:arrayToCopy];
    self.copiedArray = arrayDuplicate;
    }

- (void) rememberThisFloatForLater:(CGFloat)floatToRemember {
    self.remeberedFloat = floatToRemember;
}

- (NSMutableArray *) arrayYouShouldRemember {
    /* WORK HERE */
    return self.rememberedArray;
}

- (NSMutableArray *) arrayYouShouldCopy {
    /* WORK HERE */
    return self.copiedArray;
}

- (CGFloat) floatYouShouldRemember {
    /* WORK HERE */
    return self.remeberedFloat;
}

@end