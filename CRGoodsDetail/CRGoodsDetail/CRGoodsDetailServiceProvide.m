//
//  CRGoodsDetailServiceProvide.m
//  CRGoodsDetail
//
//  Created by 牛投邦 on 2017/1/10.
//  Copyright © 2017年 牛投邦. All rights reserved.
//

#import "CRGoodsDetailServiceProvide.h"
#import <CRGoodsDetailServiceProtocol/CRGoodsDetailServiceProtocol.h>
#import <CRProtocolManager/CRProtocolManager.h>

#import "CRGoodsDetailViewController.h"

@interface CRGoodsDetailServiceProvide () <CRGoodsDetailServiceProtocol>

@end

@implementation CRGoodsDetailServiceProvide

+ (void)load {
    [CRProtocolManager registServiceProvide:[[self alloc] init] forProtocol:@protocol(CRGoodsDetailServiceProtocol)];
}

#pragma mark - CRGoodsDetailServiceProtocol

- (UIViewController *)goodsDetailViewControllerWithGoodsId:(NSString*)goodsId goodsName:(NSString *)goodsName
{
    CRGoodsDetailViewController *goodsDetailVC = [[CRGoodsDetailViewController alloc] initWithGoodsId:goodsId goodsName:goodsName];
    return goodsDetailVC;
}

@end
