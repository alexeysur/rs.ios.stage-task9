//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Alexey
// On: 04.08.2021
// 
// Copyright © 2021 RSSchool. All rights reserved.

#ifndef ColorDelegate_h
#define ColorDelegate_h

@protocol ColorDelegate <NSObject>
- (void)passColor:(UIColor *)theValue andTheName:(NSString *)name;
@optional
- (void)passSelectedNumber:(NSNumber *)numb;
@end

#endif /* ColorDelegate_h */
