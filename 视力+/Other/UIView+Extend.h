//
//  NSObject+UIView_Extend.h
//  视力+
//
//  Created by 小华 on 2017/12/6.
//  Copyright © 2017年 小华. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UIView (Extend)
@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat centerY;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGSize size;
@property (nonatomic, assign) CGPoint origin;
@property (nonatomic, assign) CGFloat bottom;

+(instancetype)viewFromXIB;

@end
