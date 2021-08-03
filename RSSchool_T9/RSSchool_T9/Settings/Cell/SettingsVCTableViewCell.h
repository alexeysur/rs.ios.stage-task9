//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Alexey
// On: 04.08.2021
// 
// Copyright © 2021 RSSchool. All rights reserved.

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SettingsVCTableViewCell : UITableViewCell
@property (strong, readonly) NSString *identifier;
@property (strong, nonatomic) UISwitch *switchView;

-(UITableViewCell *)configureRowWithSwitch;
-(UITableViewCell *)configureRowColor;
-(UITableViewCell *) configureRowWithName: (NSString *)nameColor color: (UIColor *)color;
@end

NS_ASSUME_NONNULL_END
