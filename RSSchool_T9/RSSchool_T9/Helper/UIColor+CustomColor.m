//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Alexey
// On: 31.07.2021
// 
// Copyright © 2021 RSSchool. All rights reserved.

#import "UIColor+CustomColor.h"
#import "UIColor+HexColor.h"

@implementation UIColor (CustomColors)
+ (NSArray *)paletteColors {
    return @[[UIColor colorFromHexString:@"#E21B2C"],
             [UIColor colorFromHexString:@"#3E17CC"],
             [UIColor colorFromHexString:@"#007C37"],
             [UIColor colorFromHexString:@"#808080"],
             [UIColor colorFromHexString:@"#9D5EEA"],
             [UIColor colorFromHexString:@"#FF7A68"],
             [UIColor colorFromHexString:@"#FFAD54"],
             [UIColor colorFromHexString:@"#00AEED"],
             [UIColor colorFromHexString:@"#FF77A2"],
             [UIColor colorFromHexString:@"#002E3C"],
             [UIColor colorFromHexString:@"#0E3718"],
             [UIColor colorFromHexString:@"#610F10"]
    ];
}

@end
