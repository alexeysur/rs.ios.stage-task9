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


@interface SettingsVC () <UITableViewDataSource, UITableViewDelegate, UITabBarControllerDelegate>
-(void)setupStyleTitle;
@end

@implementation SettingsVC
@synthesize tableView;
@synthesize currentColor;

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configureTableView];

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
    tableView.scrollEnabled = NO;
    tableView.dataSource = self;
    tableView.delegate = self;
    tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
  //  [tableView registerClass: [UITableViewCell class] forCellReuseIdentifier: cellIdentifier];
    [tableView registerClass: SettingsVCTableViewCell.class forCellReuseIdentifier: [SettingsVCTableViewCell new].identifier];
    [tableView reloadData];
    [self.view addSubview:tableView];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return  2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return  UIColor.paletteColors.count;
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[SettingsVCTableViewCell new].identifier forIndexPath:indexPath];
    if (indexPath.row == 0) {
        cell = [[SettingsVCTableViewCell new] configureRowWithSwitch];
    } else {
        cell = [[SettingsVCTableViewCell new] configureRowColor];
    }
    
    return cell;
}

@end
