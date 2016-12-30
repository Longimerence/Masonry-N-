//
//  UITableViewCell+CLmasorny.m
//  StaryApp
//
//  Created by 陈龙 on 16/12/30.
//  Copyright © 2016年 LDWL. All rights reserved.
//

#import "UITableViewCell+CLmasorny.h"

@implementation UITableViewCell (CLmasorny)

-(void)CLLastButton:(UIButton *)lastButton andCLButton:(UIButton *)button andCLMargin:(NSInteger)intes andCLNum:(NSInteger)num andCLI:(NSInteger)i{
    
     
    [button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(80);
        
        if (lastButton) {
            make.width.equalTo(lastButton);
        } else {
            
            if (i % num != 0) {
                make.width.mas_equalTo((button.superview.frame.size.width - (num + 1)* intes)/4);
            }
        }
        
        if (i % num == 0) {
            
            make.left.mas_equalTo(button.superview).offset(intes);
        } else {
            
            make.left.mas_equalTo(lastButton.mas_right).offset(intes);
        }
        
        if (i % num == (num - 1)) {
            make.right.mas_equalTo(button.superview).offset(-intes);
        }
        
        if (i / num == 0) {
            
            make.top.mas_equalTo(button.superview).offset(20);
        } else {
            make.top.mas_equalTo(intes + ( i / num )* (80 + intes));
        }
        
    }];

}

@end
