//
//  ZZOneViewController.m
//  ZZDemo
//
//  Created by Lingfeng on 16/1/3.
//  Copyright © 2016年 Personal. All rights reserved.
//

#import "ZZOneViewController.h"

@interface ZZOneViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *data;

@end

static NSString *const kFunctionPageConfPlist = @"ZZFunctionPageConf";

@implementation ZZOneViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Function Page";
    
    self.data = [NSArray arrayFromPList:kFunctionPageConfPlist];
    
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
    static NSString *identifier = @"FuncationPageCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    NSDictionary *dataConf = self.data[indexPath.row];
    cell.textLabel.text = dataConf[@"title"];
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.data.count;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

#pragma mark - UITableView Delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    NSDictionary *dataConf = self.data[indexPath.row];
    UIViewController *viewController = [NSClassFromString(dataConf[@"content"]) new];
    
    [self.navigationController pushViewController:viewController animated:YES];
}

@end
