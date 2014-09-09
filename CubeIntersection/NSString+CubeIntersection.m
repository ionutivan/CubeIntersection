//
//  NSString+CubeIntersection.m
//  CubeIntersection
//
//  Created by Ionut Ivan on 09/09/14.
//  Copyright (c) 2014 Ionut Ivan. All rights reserved.
//

#import "NSString+CubeIntersection.h"

@implementation NSString (CubeIntersection)

- (BOOL)isAllDigits {
  
  NSCharacterSet* nonNumbers = [[NSCharacterSet decimalDigitCharacterSet] invertedSet];
  NSRange r = [self rangeOfCharacterFromSet:nonNumbers];
  return r.location == NSNotFound;
}

@end
