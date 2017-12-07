//
//  NSObject+UITableViewCell_Extend.m
//  视力+
//
//  Created by 小华 on 2017/12/6.
//  Copyright © 2017年 小华. All rights reserved.
//

#import "UITableViewCell+Extend.h"
#import "UIView+Extend.h"

@implementation UITableViewCell (Extend)

+(instancetype)cellWithTableView:(UITableView *)tableView{
    
    static NSString *rid = @"cellID";
    
    //从缓存池中取出cell
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:rid];
    
    //缓存池中无数据
    if(cell == nil){
        
        cell = [self viewFromXIB];
    }
    
    return cell;
}

@end
