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
  
  NSMutableArray *characters = [[NSMutableArray alloc] initWithCapacity:controlString.length];
  for (int i = 0; i < controlString.length; i++) {
    NSString *iChar = [NSString stringWithFormat:@"%c", [controlString characterAtIndex:i]];
    [characters addObject:iChar];
  }
  
  NSPredicate *predicate = [NSPredicate predicateWithBlock:^BOOL(id  _Nullable evaluatedObject, NSDictionary<NSString *,id> * _Nullable bindings) {
    return ![goodChars doesContain:evaluatedObject];
  }];
  
  NSUInteger badCount = [characters filteredArrayUsingPredicate:predicate].count;
  
  return [NSString stringWithFormat:@"%li/%li", badCount, controlString.length];
  
}

@end
