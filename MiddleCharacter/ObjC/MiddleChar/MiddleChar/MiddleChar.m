//
//  MiddleChar.m
//  MiddleChar
//
//  Created by Annie Persson on 06/05/2019.
//  Copyright © 2019 Annie Persson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MiddleChar.h"

@implementation MiddleChar

+ (NSString *)middleChar:(NSString *)string {
  
  NSUInteger characterCount = string.length;
  BOOL isEven = characterCount % 2 == 0;
  
  NSUInteger startIndex = (characterCount / 2) - (isEven ? 1 : 0);
  NSUInteger length = isEven ? 2 : 1;
  
  NSRange range = NSMakeRange(startIndex, length);
  return [string substringWithRange:range];
}

@end
