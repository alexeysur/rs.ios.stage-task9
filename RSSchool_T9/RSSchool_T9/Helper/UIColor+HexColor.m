//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Alexey
// On: 31.07.2021
// 
// Copyright © 2021 RSSchool. All rights reserved.

#import "UIColor+HexColor.h"

@implementation UIColor (HexColor)

+ (instancetype)colorFromHexString:(NSString *)hexString {
  NSString *cleanString = [hexString stringByReplacingOccurrencesOfString:@"#" withString:@""];
  if([cleanString length] == 3) {
      cleanString = [NSString stringWithFormat:@"%@%@%@%@%@%@",
                     [cleanString substringWithRange:NSMakeRange(0, 1)],[cleanString substringWithRange:NSMakeRange(0, 1)],
                     [cleanString substringWithRange:NSMakeRange(1, 1)],[cleanString substringWithRange:NSMakeRange(1, 1)],
                     [cleanString substringWithRange:NSMakeRange(2, 1)],[cleanString substringWithRange:NSMakeRange(2, 1)]];
  }
  if([cleanString length] == 6) {
      cleanString = [cleanString stringByAppendingString:@"ff"];
  }

  unsigned int baseValue;
  [[NSScanner scannerWithString:cleanString] scanHexInt:&baseValue];

  float red = ((baseValue >> 24) & 0xFF)/255.0f;
  float green = ((baseValue >> 16) & 0xFF)/255.0f;
  float blue = ((baseValue >> 8) & 0xFF)/255.0f;
  float alpha = ((baseValue >> 0) & 0xFF)/255.0f;

  return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
}

@end
