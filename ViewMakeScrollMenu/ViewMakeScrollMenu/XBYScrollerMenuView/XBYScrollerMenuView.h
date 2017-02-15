//
//  XBYScrollerMenuView.h
//
//  Created by xby on 17/1/22.
//  Copyright © 2017年 xby. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XBYPopupMenuView.h"

@protocol XBYScrollerMenuDelegate <NSObject>

@optional

- (void)itemDidSelectedWithIndex:(NSInteger)index;



@end


@interface XBYScrollerMenuView : UIView
@property (nonatomic, weak) id  <XBYScrollerMenuDelegate>delegate;
//菜单名称数组
@property(nonatomic,copy)NSArray *myTitleArray;
//选中菜单时的文字颜色
@property(nonatomic,strong)UIColor *selectedColor;
//未选中菜单的文字颜色
@property(nonatomic,strong)UIColor *noSlectedColor;
//文字的字体
@property(nonatomic,strong)UIFont *titleFont;
//下划线的颜色
@property(nonatomic,strong)UIColor *LineColor;
//当前选中的索引值
@property (nonatomic, assign) NSInteger currentIndex;


- (instancetype)initWithFrame:(CGRect)frame showArrayButton:(BOOL)yesOrNo;

@end
