//
//  vHomePalyVideoListDelegate&DataSource.m
//  视力+
//
//  Created by 小华 on 2017/12/6.
//  Copyright © 2017年 小华. All rights reserved.
//

#import "vHomePalyVideoListDelegate_DataSource.h"
#import "UITableViewCell+Extend.h"
#import "vHomeItemListCell.h"

@interface vHomePalyVideoListDelegate_DataSource ()
@end

@implementation vHomePalyVideoListDelegate_DataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
{
    return 3;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    vHomeItemListCell * cell =[vHomeItemListCell cellWithTableView:tableView];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 200;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (self.didSelectRowAtIndexPathBlock) {
        self.didSelectRowAtIndexPathBlock(indexPath);
    }
}


@end
