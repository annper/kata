//
//  Tests.m
//  Tests
//
//  Created by Annie Persson on 06/05/2019.
//  Copyright © 2019 Annie Persson. All rights reserved.
//

@import XCTest;
#import "MiddleChar.h"

@interface Tests : XCTestCase

@end

@implementation Tests

-(void) testEvenNumberOfCharacters {
  NSString *result = [MiddleChar middleChar:@"test"];
  NSString *expected = @"es";
  XCTAssertTrue([result isEqualToString:expected]);
}

-(void) testOddNumberOfCharacters {
  NSString *result = [MiddleChar middleChar:@"testing"];
  NSString *expected = @"t";
  XCTAssertTrue([result isEqualToString:expected]);
}

-(void) testOneCharacter {
  NSString *result = [MiddleChar middleChar:@"t"];
  NSString *expected = @"t";
  XCTAssertTrue([result isEqualToString:expected]);
}

@end
