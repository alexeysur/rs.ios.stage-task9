//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Alexey
// On: 04.08.2021
// 
// Copyright © 2021 RSSchool. All rights reserved.

#import "SettingsVCTableViewCell.h"

@implementation SettingsVCTableViewCell
- (NSString *)identifier {
    return @"SettingTableViewCell";
}

-(UITableViewCell *)configureRowWithSwitch {
        self.textLabel.text = @"Draw stories";
        self.switchView = [[UISwitch alloc] initWithFrame:CGRectMake(0, 0, 51, 30)];
        self.accessoryType = UITableViewCellAccessoryNone;
        self.accessoryView = self.switchView;
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        return self;
}

-(UITableViewCell *)configureRowColor {
        UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:self.identifier];
        cell.textLabel.text = @"Stroke color";
        cell.selectionStyle = UITableViewCellStyleSubtitle;
        cell.detailTextLabel.text = @"#12DFS";
        cell.detailTextLabel.numberOfLines = 0;
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        return cell;
}

-(UITableViewCell *) configureRowWithName: (NSString *)nameColor color: (UIColor *)color {
    
    self.textLabel.text = nameColor;
    self.textLabel.textColor = color;
    return self;
}
@end

