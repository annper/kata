//
//  main.m
//  PrinterErrors
//
//  Created by Annie Persson on 29/04/2019.
//  Copyright © 2019 Annie Persson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PrinterErrors.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
      // insert code here...
      NSLog(@"Hello, World!");
    
    NSString *result = [PrinterErrors printerErrors:@"aabbcc"];
    NSLog(@"%@", result);
  }
  return 0;
}
