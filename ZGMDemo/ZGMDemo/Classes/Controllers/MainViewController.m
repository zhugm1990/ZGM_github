//
//  MainViewController.m
//  ZZTestSDImageViewDemo
//
//  Created by zhuguoming on 2017/6/14.
//  Copyright © 2017年 zhuguoming. All rights reserved.
//

#import "MainViewController.h"
#import "ZMyImageController.h"

@interface MainViewController ()<UITableViewDelegate,UITableViewDataSource>
//
@property (nonatomic , strong) UITableView *mainTableView;

@property (nonatomic , strong) NSMutableArray *titleArray;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.mainTableView];
    self.customTitle = @"首页";
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.titleArray.count;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 35;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ZIdentifiers(UITableViewCell)];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ZIdentifiers(UITableViewCell)];
    }
    cell.textLabel.text = self.titleArray[indexPath.row];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    ZMyImageController *myImageVC = [[ZMyImageController alloc] init];
    [self.navigationController pushViewController:myImageVC animated:YES];
}
- (UITableView *)mainTableView{

    if (!_mainTableView) {
        _mainTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, NavHeigth, ZScreenWidth, ZScreenHeigth - NavHeigth) style:UITableViewStylePlain];
        _mainTableView.delegate = self;
        _mainTableView.dataSource = self;
        _mainTableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    }
    return _mainTableView;
}
- (NSMutableArray *)titleArray{
    if (!_titleArray) {
        _titleArray = [NSMutableArray arrayWithObjects:@"功能一 图片缓存",@"功能二",@"功能三", nil];
        
    }
    return _titleArray;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
