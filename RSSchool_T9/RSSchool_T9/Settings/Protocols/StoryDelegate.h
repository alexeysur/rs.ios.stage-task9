//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Alexey
// On: 04.08.2021
// 
// Copyright © 2021 RSSchool. All rights reserved.

#ifndef StoryDelegate_h
#define StoryDelegate_h
@protocol StoryDelegate <NSObject>
- (void)passColor:(UIColor*)theValue;
@optional
- (void)passSwitcherState:(BOOL)state;
@end


#endif /* StoryDelegate_h */
