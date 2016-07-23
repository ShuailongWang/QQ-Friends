//
//  CZFriendsModel.h
//  QQ好友列表
//
//  Created by czbk on 16/5/24.
//  Copyright © 2016年 王帅龙. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CZFriendsModel : NSObject

@property(copy,nonatomic) NSString *icon;
@property(copy,nonatomic) NSString *intro;
@property(copy,nonatomic) NSString *name;
@property(assign,nonatomic,getter=isvip) NSInteger vip;

-(instancetype)initWithFriendModel:(NSDictionary*)dict;
+(instancetype)FriendsModel:(NSDictionary*)dict;

@end
