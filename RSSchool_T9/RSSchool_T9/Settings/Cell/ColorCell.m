//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Alexey
// On: 03.08.2021
// 
// Copyright © 2021 RSSchool. All rights reserved.

#import "ColorCell.h"

@implementation ColorCell
- (void)layoutSubviews {
    [super layoutSubviews];
    if (self.numb == 0)
    {
        UIBezierPath *path0 = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners: UIRectCornerTopRight | UIRectCornerTopLeft cornerRadii:CGSizeMake(16, 16)];
        CAShapeLayer *layer0 = [CAShapeLayer new];
        layer0.path = path0.CGPath;
        self.layer.mask = layer0;
    }
    if (self.numb == 12)
    {
        UIBezierPath *path0 = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:UIRectCornerBottomLeft | UIRectCornerBottomRight cornerRadii:CGSizeMake(16, 16)];
        CAShapeLayer *layer0 = [CAShapeLayer new];
        layer0.path = path0.CGPath;
        self.layer.mask = layer0;
    }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    if (selected)
    {
        self.selectedCell = self.numb;
        self.accessoryType = UITableViewCellAccessoryCheckmark;
        self.tintColor = UIColor.redColor;
    }
    else
    {
        self.accessoryType = UITableViewCellAccessoryNone;
    }
}

@end
