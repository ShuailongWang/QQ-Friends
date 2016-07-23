//
//  CZFriendsModel.m
//  QQ好友列表
//
//  Created by czbk on 16/5/24.
//  Copyright © 2016年 王帅龙. All rights reserved.
//

#import "CZFriendsModel.h"

@implementation CZFriendsModel

-(instancetype)initWithFriendModel:(NSDictionary*)dict{
    if(self = [super init]){
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}
+(instancetype)FriendsModel:(NSDictionary*)dict{
    return [[self alloc]initWithFriendModel:dict];
}

@end
