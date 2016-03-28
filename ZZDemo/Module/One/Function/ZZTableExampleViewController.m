//
//  ZZTableExampleViewController.m
//  ZZDemo
//
//  Created by Lingfeng on 16/3/28.
//  Copyright © 2016年 Personal. All rights reserved.
//

#import "ZZTableExampleViewController.h"

@interface ZZTableExampleViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation ZZTableExampleViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"One";
    
    [self.view addSubview:self.tableView];
}


- (UITableView *)tableView
{
    if (!_tableView){
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
        _tableView.delegate = self;
        _tableView.dataSource = self;
        
    }
    return _tableView;
}



#pragma mark - UITableView DataSource

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"OneCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"section = %ld, row = %ld", (long)indexPath.section, (long)indexPath.row];
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

@end