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

@synthesize content;
@synthesize numberElement;
@synthesize line;
@synthesize drawLabel;
@synthesize strokeLabel;
@synthesize colorSubLabel;
@synthesize switcher;
@synthesize strColor;
@synthesize color;
@synthesize state;

- (void)layoutSubviews {
    self.content = [UIView new];
    self.content.backgroundColor = UIColor.whiteColor;
    self.content.layer.backgroundColor = UIColor.whiteColor.CGColor;
    self.content.layer.cornerRadius = 16;
    self.line = [UIView new];
    self.line.backgroundColor = self.superview.backgroundColor;
    [self addConstraintsToCells];
    [super layoutSubviews];
}

- (void)addConstraintsToCells {
    [self.contentView addSubview:self.content];
    self.content.translatesAutoresizingMaskIntoConstraints = false;
    
    switch (numberElement) {
        case 0: {
            content.translatesAutoresizingMaskIntoConstraints = false;
            [NSLayoutConstraint activateConstraints: @[
                [content.topAnchor constraintEqualToAnchor:self.topAnchor],
                [content.leadingAnchor constraintEqualToAnchor:self.leadingAnchor],
                [content.bottomAnchor constraintEqualToAnchor:self.bottomAnchor constant:-(self.frame.size.height / 4)],
                [content.trailingAnchor constraintEqualToAnchor:self.trailingAnchor]
            ]];
            
            UIView *rect = [UIView new];
            [self.contentView addSubview:rect];
            
            rect.translatesAutoresizingMaskIntoConstraints = false;
            rect.backgroundColor = UIColor.whiteColor;
            [NSLayoutConstraint activateConstraints: @[
                [rect.topAnchor constraintEqualToAnchor:self.content.bottomAnchor constant:-(self.frame.size.height / 2)],
                [rect.leadingAnchor constraintEqualToAnchor:self.leadingAnchor],
                [rect.bottomAnchor constraintEqualToAnchor:self.bottomAnchor],
                [rect.trailingAnchor constraintEqualToAnchor:self.trailingAnchor],
            ]];
            
            [self.contentView addSubview:self.line];
            line.translatesAutoresizingMaskIntoConstraints = false;
            [NSLayoutConstraint activateConstraints: @[
                [line.bottomAnchor constraintEqualToAnchor:self.bottomAnchor],
                [line.leadingAnchor constraintEqualToAnchor:self.leadingAnchor constant:self.separatorInset.left],
                [line.trailingAnchor constraintEqualToAnchor:self.trailingAnchor],
                [line.heightAnchor constraintEqualToConstant:2]
            ]];
            
            [self addDrawStoryLabel];
            [self addSwitcher];
            
            break;
        }
        case 1: {
            
            UIView *rect = [UIView new];
            [self.contentView addSubview:rect];
            rect.translatesAutoresizingMaskIntoConstraints = false;
            rect.backgroundColor = UIColor.whiteColor;
            
            [NSLayoutConstraint activateConstraints: @[
                [rect.topAnchor constraintEqualToAnchor:self.topAnchor],
                [rect.leadingAnchor constraintEqualToAnchor:self.leadingAnchor],
                [rect.bottomAnchor constraintEqualToAnchor:self.bottomAnchor constant:-(self.frame.size.height / 2)],
                [rect.trailingAnchor constraintEqualToAnchor:self.trailingAnchor],
                [content.topAnchor constraintEqualToAnchor:self.topAnchor constant:self.frame.size.height / 4],
                [content.leadingAnchor constraintEqualToAnchor:self.leadingAnchor],
                [content.bottomAnchor constraintEqualToAnchor:self.bottomAnchor],
                [content.trailingAnchor constraintEqualToAnchor:self.trailingAnchor]
            ]];
            
            [self addStrokeColorLabel];
            self.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            if (self.highlighted) {
                self.content.backgroundColor = UIColor.lightGrayColor;
                rect.backgroundColor = UIColor.lightGrayColor;
            }
            
            break;
        }
        default:
            break;
            
    }
}

- (void)addDrawStoryLabel {
    drawLabel = [UILabel new];
    drawLabel.textColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:1];
    drawLabel.font = [UIFont fontWithName:@"SFProDisplay-Regular" size:17];
    
    NSMutableParagraphStyle *paragraphStyle = [NSMutableParagraphStyle new];
    self.drawLabel.textAlignment = NSTextAlignmentCenter;
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithString:@"Draw stories" attributes: @{ NSParagraphStyleAttributeName:paragraphStyle}];
    self.drawLabel.attributedText = string;
    [self.contentView addSubview:self.drawLabel];
    self.drawLabel.translatesAutoresizingMaskIntoConstraints = false;
    [NSLayoutConstraint activateConstraints: @[
        [drawLabel.bottomAnchor constraintEqualToAnchor:self.bottomAnchor],
        [drawLabel.leadingAnchor constraintEqualToAnchor:self.leadingAnchor constant:self.separatorInset.left],
        [drawLabel.trailingAnchor constraintEqualToAnchor:self.trailingAnchor],
        [drawLabel.heightAnchor constraintEqualToAnchor:self.heightAnchor]
    ]];
}

- (void)addStrokeColorLabel {
    strokeLabel = [UILabel new];
    strokeLabel.textColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:1];
    strokeLabel.font = [UIFont fontWithName:@"SFProDisplay-Regular" size:17];
    NSMutableParagraphStyle *paragraphStyle = [NSMutableParagraphStyle new];
    self.strokeLabel.textAlignment = NSTextAlignmentCenter;
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithString:@"Stroke color" attributes: @{ NSParagraphStyleAttributeName:paragraphStyle}];
    self.strokeLabel.attributedText = string;
    [self.contentView addSubview:self.strokeLabel];
    
    strokeLabel.translatesAutoresizingMaskIntoConstraints = false;
    [NSLayoutConstraint activateConstraints: @[
        [strokeLabel.topAnchor constraintEqualToAnchor:self.topAnchor],
        [strokeLabel.leadingAnchor constraintEqualToAnchor:self.leadingAnchor constant:self.separatorInset.left],
        [strokeLabel.trailingAnchor constraintEqualToAnchor:self.trailingAnchor],
        [strokeLabel.heightAnchor constraintEqualToConstant:self.frame.size.height / 1.5]
    ]];
        [self addStrokeColor];
}

- (void)addStrokeColor {
    self.colorSubLabel = [UILabel new];
    self.colorSubLabel.textColor = self.color;
    self.colorSubLabel.font = [UIFont fontWithName:@"SFProDisplay-Regular" size:12];
    NSMutableParagraphStyle *paragraphStyle = [NSMutableParagraphStyle new];
    self.colorSubLabel.textAlignment = NSTextAlignmentCenter;
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithString: self.strColor attributes: @{ NSParagraphStyleAttributeName:paragraphStyle}];
    self.colorSubLabel.attributedText = string;
    [self.strokeLabel addSubview:self.colorSubLabel];
    
    self.colorSubLabel.translatesAutoresizingMaskIntoConstraints = false;
    [NSLayoutConstraint activateConstraints: @[
        [colorSubLabel.bottomAnchor constraintEqualToAnchor:self.bottomAnchor constant: -5],
        [colorSubLabel.leadingAnchor constraintEqualToAnchor:self.strokeLabel.leadingAnchor],
        [colorSubLabel.trailingAnchor constraintEqualToAnchor:self.strokeLabel.trailingAnchor],
        [colorSubLabel.heightAnchor constraintEqualToConstant:self.frame.size.height / 2.5]
    ]];
    [colorSubLabel sizeToFit];
}

- (void)addSwitcher {
    self.switcher = [UISwitch new];
    [self.contentView addSubview:self.switcher];
    self.switcher.on = true;
    self.state = true;
    self.switcher.translatesAutoresizingMaskIntoConstraints = false;
    [NSLayoutConstraint activateConstraints: @[
        [self.switcher.trailingAnchor constraintEqualToAnchor:self.trailingAnchor constant:-self.separatorInset.left],
        [self.switcher.widthAnchor constraintEqualToConstant:self.frame.size.height],
        [self.switcher.centerYAnchor constraintEqualToAnchor:self.centerYAnchor]
    ]];
    [self.switcher addTarget:self action:@selector(pickOnSwitcher:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)pickOnSwitcher:(UISwitch *)sender {
    if (sender.isOn) {
        self.state = true;
        return;
    }
    self.state = false;
}

@end

