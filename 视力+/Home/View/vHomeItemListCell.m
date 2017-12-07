//
//  vHomeItemListCell.m
//  视力+
//
//  Created by 小华 on 2017/12/6.
//  Copyright © 2017年 小华. All rights reserved.
//

#import "vHomeItemListCell.h"

@implementation vHomeItemListCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    self.layer.cornerRadius=3;
    self.clipsToBounds=YES;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)setFrame:(CGRect)frame
{
    frame.size.width-=20;
    frame.origin.x=10;
    frame.origin.y+=10;
    frame.size.height-=10;
    [super setFrame:frame];
}

@end
