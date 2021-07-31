//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Alexey
// On: 31.07.2021
// 
// Copyright © 2021 RSSchool. All rights reserved.

#import "SettingsVC.h"

@interface SettingsVC () <UITableViewDataSource, UITableViewDelegate>
    
@end

@implementation SettingsVC
@synthesize tableView;
@synthesize colors;

- (void)viewDidLoad {
    [super viewDidLoad];
    tableView = [[UITableView alloc]init];
    tableView.frame = CGRectMake(10, 30, 320, 240);
    tableView.dataSource = self;
    tableView.delegate = self;
    tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    [tableView registerClass: [UITableViewCell class] forCellReuseIdentifier:@"Cell"];
    [tableView reloadData];
    [self.view addSubview:tableView];
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return  1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return  10;
}


@end
