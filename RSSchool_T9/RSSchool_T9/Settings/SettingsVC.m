//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Alexey
// On: 31.07.2021
// 
// Copyright © 2021 RSSchool. All rights reserved.

#import "SettingsVC.h"
#import "UIColor+CustomColor.h"
#import "SettingsVCTableViewCell.h"
#import "ColorCell.h"

@interface SettingsVC () <UITableViewDataSource, UITableViewDelegate>
-(void)setupStyleTitle;
-(void)configureTableView;
@end

@implementation SettingsVC
@synthesize tableView;
@synthesize color;
@synthesize colorName;


- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupStyleTitle];
    [self configureTableView];
    self.vc = [[ColorTableVC alloc] init];
}

-(void) setupStyleTitle {
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectZero];
    title.backgroundColor = [UIColor clearColor];
    title.text = @"Settings";
    title.font = [UIFont fontWithName:@"SFProDisplay-Semibold" size:17];
    title.textAlignment = NSTextAlignmentCenter;
    title.textColor = [UIColor blackColor];
    self.navigationItem.titleView = title;
}

-(void) configureTableView {
    tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleInsetGrouped];
    tableView.scrollEnabled = false;
    tableView.dataSource = self;
    tableView.delegate = self;
    tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    [tableView registerClass: SettingsVCTableViewCell.class forCellReuseIdentifier: @"Cell"];
    [self.view addSubview:tableView];
    
    self.colorName =  @"#f3af22";
    self.selectedSell = 6;
    self.color = [UIColor colorWithRed:0.953 green:0.686 blue:0.133 alpha:1];
    
    tableView.translatesAutoresizingMaskIntoConstraints = false;
        [NSLayoutConstraint activateConstraints: @[
    [tableView.topAnchor constraintEqualToAnchor: self.view.topAnchor],
    [tableView.centerXAnchor constraintEqualToAnchor: self.view.centerXAnchor],
    [tableView.bottomAnchor constraintEqualToAnchor: self.view.bottomAnchor],
    [tableView.leadingAnchor constraintEqualToAnchor: self.view.leadingAnchor],
    [tableView.trailingAnchor constraintEqualToAnchor: self.view.trailingAnchor]
        ]];
   
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    SettingsVCTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"Cell"];

    cell.numberElement = indexPath.row;
    cell.strColor= self.colorName;
    cell.color = self.color;
    
    cell.selectedBackgroundView.backgroundColor = self.tableView.backgroundColor;
    cell.backgroundColor = self.tableView.backgroundColor;
    cell.inputView.backgroundColor = self.tableView.backgroundColor;
    cell.layer.backgroundColor = self.tableView.backgroundColor.CGColor;
    cell.inputView.layer.backgroundColor = self.tableView.backgroundColor.CGColor;
    cell.selectedBackgroundView.layer.backgroundColor = self.tableView.backgroundColor.CGColor;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 1)
    {
        self.vc.delegate = self;
        [self.navigationController pushViewController:self.vc animated: true];
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {

    return 52;
}

@end
