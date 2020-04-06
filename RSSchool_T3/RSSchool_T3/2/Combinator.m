#import "Combinator.h"

@implementation Combinator
- (NSNumber*)chechChooseFromArray:(NSArray <NSNumber*>*)array {
    // m - количество плакатов для дизайна
    // n - общее количество доступных цветов
  
    NSNumber * mPosters = [array objectAtIndex:0];
    NSNumber * nColors = [array objectAtIndex:1];
 
    if (mPosters == nColors) {
        return @1;
    }
    
    for (int i = 1; i <= [nColors intValue]; i++) {
    NSInteger * numberOfColorsForPoster = [self factorial: [nColors intValue]] / ([self factorial: i] * [self factorial:([nColors intValue] - i)]);
        
        if (numberOfColorsForPoster == [mPosters intValue]) {
            NSNumber *result = [NSNumber numberWithInt:i];
            return result;
        }
        
       NSLog(@"%d", numberOfColorsForPoster);
    }
    
  return nil;
}


- (NSInteger)factorial:(NSInteger)f {
    if (f == 0) {
        return 1;
    } else {
        return f * [self factorial:f - 1];
    }
}
@end
