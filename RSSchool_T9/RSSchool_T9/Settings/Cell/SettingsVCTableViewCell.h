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
@property (nonatomic, strong) UIView *content;
@property (nonatomic) NSInteger numberElement;
@property (nonatomic, strong) UIView *line;
@property (nonatomic, strong) UILabel *drawLabel;
@property (nonatomic, strong) UILabel *strokeLabel;
@property (nonatomic, strong) UILabel *colorSubLabel;
@property (nonatomic, strong) UISwitch *switcher;
@property (nonatomic, strong) NSString *strColor;
@property (nonatomic, strong) UIColor *color;
@property (nonatomic) BOOL state;

@end

NS_ASSUME_NONNULL_END
