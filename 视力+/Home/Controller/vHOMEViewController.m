//
//  vHOMEViewController.m
//  视力+
//
//  Created by 小华 on 2017/12/6.
//  Copyright © 2017年 小华. All rights reserved.
//

#import "vHOMEViewController.h"
#import "vHomePalyVideoListDelegate_DataSource.h"
#import "vHomeVideoPlayController.h"

@interface vHOMEViewController ()

@property (nonatomic, strong)UITableView *tableView;

@property (nonatomic, strong)vHomePalyVideoListDelegate_DataSource *homePlayVideodelegate_DataSource;

@end

@implementation vHOMEViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupView];
}

- (void)setupView
{
    self.view.backgroundColor=[UIColor whiteColor];
    self.title=@"视力+";
    UITableView *tableView=[UITableView new];
    tableView.frame=CGRectMake(0, 0, ScreenW, ScreenH);
    tableView.delegate=self.homePlayVideodelegate_DataSource;
    tableView.dataSource=self.homePlayVideodelegate_DataSource;
    self.tableView=tableView;
    [self.view addSubview:tableView];
    self.tableView.backgroundColor=k_B1;
    self.tableView.separatorStyle=UITableViewCellSeparatorStyleNone;

//    [tableView reloadData];
}

-(vHomePalyVideoListDelegate_DataSource *)homePlayVideodelegate_DataSource
{
    
    if (!_homePlayVideodelegate_DataSource) {
        __weak typeof(self) wself = self;
        _homePlayVideodelegate_DataSource=[vHomePalyVideoListDelegate_DataSource new];
        _homePlayVideodelegate_DataSource.didSelectRowAtIndexPathBlock = ^(NSIndexPath *indexPath) {
            vHomeVideoPlayController * videoPlay=[vHomeVideoPlayController new];
            [wself.navigationController pushViewController:videoPlay animated:YES];
        };
    }
    return _homePlayVideodelegate_DataSource;
}



@end
