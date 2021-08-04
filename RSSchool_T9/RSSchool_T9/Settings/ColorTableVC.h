//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Alexey
// On: 03.08.2021
// 
// Copyright © 2021 RSSchool. All rights reserved.

#import <UIKit/UIKit.h>
#import "ColorDelegate.h"


NS_ASSUME_NONNULL_BEGIN

@interface ColorTableVC : UIViewController
@property (strong, nonatomic) UITableView *tableView;
@property (nonatomic) NSInteger selectedColor;

@property (weak) id <ColorDelegate> delegate;
@end

NS_ASSUME_NONNULL_END
