//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Alexey
// On: 31.07.2021
// 
// Copyright © 2021 RSSchool. All rights reserved.

#import <UIKit/UIKit.h>
#import "ColorTableVC.h"
#import "ColorDelegate.h"
#import "StoryDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface SettingsVC : UIViewController
   
@property (strong, nonatomic) UITableView *tableView;

@property (nonatomic, strong) NSString *colorName;
@property (nonatomic, strong) UIColor *color;
@property (nonatomic) NSInteger selectedSell;
@property (nonatomic, strong) ColorTableVC *vc;
@property (weak) id <StoryDelegate> delegateSwift;
@end

NS_ASSUME_NONNULL_END
