//
//  CZGroupModel.h
//  QQ好友列表
//
//  Created by czbk on 16/5/24.
//  Copyright © 2016年 王帅龙. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CZGroupModel : NSObject

@property(strong,nonatomic) NSArray *friends;
@property(copy,nonatomic) NSString *name;
@property(assign,nonatomic) NSInteger *online;

-(instancetype)initWithGrounpModel:(NSDictionary*)dict;
+(instancetype)GrounpModel:(NSDictionary*)dict;

@end
