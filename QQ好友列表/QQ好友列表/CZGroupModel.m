//
//  CZGroupModel.m
//  QQ好友列表
//
//  Created by czbk on 16/5/24.
//  Copyright © 2016年 王帅龙. All rights reserved.
//

#import "CZGroupModel.h"
#import "CZFriendsModel.h"

@implementation CZGroupModel

-(instancetype)initWithGrounpModel:(NSDictionary*)dict{
    if(self = [super init]){
        [self setValuesForKeysWithDictionary:dict];
//        
//        //嵌套model
//        NSMutableArray *arrayM = [NSMutableArray array];
//        for (NSDictionary *friendDict in _friends) {
//            CZFriendsModel *model = [CZFriendsModel FriendsModel:friendDict];
//            
//            [arrayM addObject:model];
//        }
//        _friends = arrayM.copy;
    }
    return self;
}
+(instancetype)GrounpModel:(NSDictionary*)dict{
    return [[self alloc]initWithGrounpModel:dict];
}

@end
