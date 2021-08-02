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

static NSString *cellIdentifier = @"Cell";
static 


@interface SettingsVC () <UITableViewDataSource, UITableViewDelegate>
-(void)setupStyle;
@end

@implementation SettingsVC
@synthesize tableView;
@synthesize currentColor;

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupStyle];
    [self configureTableView];
}

-(void) setupStyle {
    self.navigationController.title = @"Settings";
}

-(void) configureTableView {
    tableView = [[UITableView alloc] initWithFrame: CGRectMake(10, 30, 320, 640) style: UITableViewStylePlain];
    //tableView = [[UITableView alloc]init];
    //tableView.frame = CGRectMake(10, 30, 320, 240);
    tableView.dataSource = self;
    tableView.delegate = self;
    tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    [tableView registerClass: [UITableViewCell class] forCellReuseIdentifier: cellIdentifier];
    [tableView reloadData];
    [self.view addSubview:tableView];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return  1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return  UIColor.paletteColors.count;
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: cellIdentifier];
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier: cellIdentifier];
        
    }
    cell.textLabel.text =  [UIColor.paletteColors objectAtIndex:indexPath.row];
    return cell;
}


@end
