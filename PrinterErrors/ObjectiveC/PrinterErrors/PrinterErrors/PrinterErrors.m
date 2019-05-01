//
//  PrinterErrors.m
//  PrinterErrors
//
//  Created by Annie Persson on 29/04/2019.
//  Copyright © 2019 Annie Persson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PrinterErrors.h"

@implementation PrinterErrors 

+ (NSString *)printerErrors: (NSString *) controlString {
  
  NSCharacterSet *goodChars = [NSCharacterSet characterSetWithCharactersInString:@"abcdefghijklm"];
  
  NSMutableArray *characters = [self controlStringAsCharacters:controlString];
  
  NSPredicate *predicate = [self predicatedForFilteringOutCharsInSet:goodChars from:characters];
  
  NSUInteger badCount = [characters filteredArrayUsingPredicate:predicate].count;
  
  return [self printerErrorStringFromErrorCount:badCount totalCount:controlString.length];  
}

+ (NSMutableArray *) controlStringAsCharacters: (NSString *) controlString {
  NSMutableArray *characters = [NSMutableArray arrayWithCapacity:controlString.length];
  
  for (int i = 0; i < controlString.length; i++) {
    
    NSString *charAtIndex = [NSString stringWithFormat:@"%c", [controlString characterAtIndex:i]];
    [characters addObject:charAtIndex];
  }
  
  return characters;
}

+ (NSPredicate *) predicatedForFilteringOutCharsInSet: (NSCharacterSet *) set from: (NSMutableArray *) array {
  
  return [NSPredicate predicateWithBlock:^BOOL(id  _Nullable evaluatedObject, NSDictionary<NSString *,id> * _Nullable bindings) {
    
    unichar character = [[NSString stringWithFormat:@"%@", evaluatedObject] characterAtIndex:0];
    return ![set characterIsMember:character];
  }];
  
}

+ (NSString *) printerErrorStringFromErrorCount: (NSUInteger) errorCount totalCount: (NSUInteger) totalCount {
  return [NSString stringWithFormat:@"%li/%li", errorCount, totalCount];
}


@end
