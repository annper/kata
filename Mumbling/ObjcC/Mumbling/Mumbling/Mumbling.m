//
//  Mumbling.m
//  Mumbling
//
//  Created by Annie Persson on 03/05/2019.
//  Copyright © 2019 Annie Persson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mumbling.h"

@implementation Mumbling

+ (NSString *)accum:(NSString *)string {
  
  NSArray *accumulatedStringsArray = [self accumulatedStringArrayFrom:string];
  
  return [accumulatedStringsArray componentsJoinedByString:@"-"];
}

+ (NSMutableArray *)accumulatedStringArrayFrom: (NSString *)string {
  
  NSMutableArray *accumulatedResultArray = @[].mutableCopy;
  
  for (int i = 0; i < string.length; i++) {
    [accumulatedResultArray addObject: [self
                                        repeatCharacterInString:string
                                        atIndex:i
                                        numberOfTimes:i+1]];
  }
  
  return accumulatedResultArray;
}

+ (NSString *)repeatCharacterInString: (NSString *) string atIndex: (int) i numberOfTimes: (NSUInteger) length {
  
  NSString *characterToRepeat = [string substringWithRange:NSMakeRange(i, 1)];
  
  return [@"" stringByPaddingToLength:length
                           withString:characterToRepeat
                      startingAtIndex:0].capitalizedString;
}

@end
