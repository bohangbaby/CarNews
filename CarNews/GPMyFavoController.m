//
//  GPMyFavoController.m
//  CarNews
//
//  Created by chengxun on 15/5/25.
//  Copyright (c) 2015年 chengxun. All rights reserved.
//

#import "GPMyFavoController.h"
#import "MBProgressHUD+NJ.h"
@interface GPMyFavoController ()

@end

@implementation GPMyFavoController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIBarButtonItem * edit = [[UIBarButtonItem alloc]initWithTitle:@"编辑" style:UIBarButtonItemStylePlain target:self action:@selector(edit)];
    self.navigationItem.rightBarButtonItem = edit;
    // Do any additional setup after loading the view from its nib.
}

- (void)edit
{
    [MBProgressHUD showMessage:@"没有收藏资讯信息!"];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
         [MBProgressHUD hideHUD];
    });
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
