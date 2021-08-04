//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Alexey
// On: 03.08.2021
// 
// Copyright © 2021 RSSchool. All rights reserved.

#import "ColorTableVC.h"
#import "ColorCell.h"
#import "UIColor+CustomColor.h"

@interface ColorTableVC () <UITableViewDataSource, UITableViewDelegate>

@end

@implementation ColorTableVC
@synthesize tableView;

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupTableView];
}

-(void) setupTableView {
    self.tableView = [[UITableView alloc] initWithFrame: CGRectZero style:UITableViewStyleGrouped];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
    self.selectedColor = 6;
    
    tableView.translatesAutoresizingMaskIntoConstraints = false;
    [NSLayoutConstraint activateConstraints: @[
        [tableView.topAnchor constraintEqualToAnchor: self.view.topAnchor],
        [tableView.centerXAnchor constraintEqualToAnchor: self.view.centerXAnchor],
        [tableView.bottomAnchor constraintEqualToAnchor: self.view.bottomAnchor],
        [tableView.leadingAnchor constraintEqualToAnchor: self.view.leadingAnchor],
        [tableView.trailingAnchor constraintEqualToAnchor:  self.view.trailingAnchor]
    ]];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 13;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ColorCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"ColorCell"];
    if (cell == nil)
    {
        cell = [[ColorCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"ColorCell"];
    }
    cell.numb = indexPath.row;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.textLabel.font = [UIFont fontWithName:@"SFProDisplay-Regular" size:17];
    NSMutableParagraphStyle *paragraphStyle = [NSMutableParagraphStyle new];
    NSMutableAttributedString *string = [[NSMutableAttributedString alloc] initWithString:@"#f3af22" attributes: @{
        NSParagraphStyleAttributeName: paragraphStyle}];
    cell.textLabel.textColor = [UIColor putColor:@(indexPath.row)];
    string = [UIColor putName:@(indexPath.row)];
    cell.textLabel.text = string.copy;
    return  cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 52;
}

@end

