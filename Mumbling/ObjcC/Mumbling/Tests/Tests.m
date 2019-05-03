//
//  Tests.m
//  Tests
//
//  Created by Annie Persson on 03/05/2019.
//  Copyright © 2019 Annie Persson. All rights reserved.
//

@import XCTest;
#import "Mumbling.h"

@interface Tests : XCTestCase

@end

@implementation Tests

- (void) testWithAllLowercaseLetters {
  NSString *result = [Mumbling accum:@"abcd"];
  NSString *expected = @"A-Bb-Ccc-Dddd";
  XCTAssertTrue([result isEqualToString:expected]);
}

- (void) testWithAllUppercaseLetters {
  NSString *result = [Mumbling accum:@"ABCD"];
  NSString *expected = @"A-Bb-Ccc-Dddd";
  XCTAssertTrue([result isEqualToString:expected]);
}

- (void) testWithRepeatLetters {
  NSString *result = [Mumbling accum:@"qqstt"];
  NSString *expected = @"Q-Qq-Sss-Tttt-Ttttt";
  XCTAssertTrue([result isEqualToString:expected]);
}

- (void) testWithEmptyString {
  NSString *result = [Mumbling accum:@""];
  NSString *expected = @"";
  XCTAssertTrue([result isEqualToString:expected]);
}

@end
