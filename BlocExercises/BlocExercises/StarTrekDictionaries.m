//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    
    return  characterDictionary[@"favorite drink"];
}


- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    
    return [charactersArray valueForKey:@"favorite drink"];
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    NSMutableDictionary *dict = [characterDictionary mutableCopy];
    NSString *insertQuote = @"Hello from Dictionaries";
    [dict setValue:insertQuote forKey:@"quote"];
    return dict;
}


@end
