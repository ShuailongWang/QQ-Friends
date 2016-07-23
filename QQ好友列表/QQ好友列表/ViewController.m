//
//  ViewController.m
//  QQ好友列表
//
//  Created by czbk on 16/5/24.
//  Copyright © 2016年 王帅龙. All rights reserved.
//

#import "ViewController.h"
#import "CZGroupModel.h"
#import "CZFriendsModel.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@property(strong,nonatomic) NSArray *QQgroupList;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -数据源方法
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.QQgroupList.count;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
//    CZGroupModel *model = self.QQgroupList[section];
//    return model.friends.count;
    return 1;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if(cell == nil){
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
    }
//    //两个model
//    CZGroupModel *model = self.QQgroupList[indexPath.section];
//    CZFriendsModel *friendModel = model.friends[indexPath.row];
//    
//    //设置内容
//    cell.textLabel.text = friendModel.name;
//    cell.imageView.image = [UIImage imageNamed:friendModel.icon];
//    cell.detailTextLabel.text = friendModel.intro;
//    //判断是否为会员
//    if(friendModel.isvip){
//        cell.textLabel.textColor = [UIColor redColor];
//    }else{
//        cell.textLabel.textColor = [UIColor blackColor];
//    }
    
    
    return cell;
}

#pragma mark -懒加载
-(NSArray *)QQgroupList{
    if(nil == _QQgroupList){
        NSString *path = [[NSBundle mainBundle]pathForResource:@"friends.plist" ofType:nil];
        NSArray *array = [NSArray arrayWithContentsOfFile:path];
        
        NSMutableArray *arrayM = [NSMutableArray array];
        for (NSDictionary *dict in array) {
            CZGroupModel *model = [CZGroupModel GrounpModel:dict];
            
            [arrayM addObject:model];
        }
        _QQgroupList = arrayM.copy;
    }
    return _QQgroupList;
}
@end
