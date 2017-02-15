//
//  XBYPopupMenuView.h
//
//  Created by xby on 17/1/24.
//  Copyright © 2017年 xby. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XBYIndicatorView.h"

@protocol XBYPopupMenuViewDelegate <NSObject>

-(void)didSelectIdex:(NSInteger)idex;
-(void)dimiss_popUp;
@end

@interface XBYPopupMenuView : UIView
@property(nonatomic,weak)id<XBYPopupMenuViewDelegate>delegate;
@property(nonatomic,assign)NSInteger selectIndex;
@property(nonatomic ,strong)NSArray *titles;
@property(nonatomic,readonly)BOOL isShow;
//选中菜单时的文字颜色
@property(nonatomic,strong)UIColor *selectedColor;
//未选中菜单的文字颜色
@property(nonatomic,strong)UIColor *noSlectedColor;

-(id)initWithTitles;
-(void)show:(UIView*)contentView Poprect:(CGRect)rect;
-(void)dismiss;
@end
