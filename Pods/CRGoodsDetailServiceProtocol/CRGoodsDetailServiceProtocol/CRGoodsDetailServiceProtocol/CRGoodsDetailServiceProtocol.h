//
//  CRGoodsDetailServiceProtocol.h
//  CRGoodsDetailServiceProtocol
//
//  Created by 牛投邦 on 2017/1/10.
//  Copyright © 2017年 牛投邦. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol CRGoodsDetailServiceProtocol <NSObject>

@required;
- (UIViewController *)goodsDetailViewControllerWithGoodsId:(NSString*)goodsId goodsName:(NSString *)goodsName;

@end
