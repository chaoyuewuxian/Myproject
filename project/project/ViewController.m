//
//   ViewController.m
//   project
//   
//   Created  by lulingqin on 2020/2/12
//   Copyright © 2020 phjt. All rights reserved.
//  


#import "ViewController.h"
#import "FunctionModel.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSMutableArray <FunctionModel *>*dataArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellStr"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cellStr"];
    }
    cell.textLabel.text = self.dataArray[indexPath.row].functioName;
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    Class cls  = NSClassFromString(self.dataArray[indexPath.row].functioTargetClass);
    [self.navigationController pushViewController:[cls new] animated:YES];
}
- (NSMutableArray *)dataArray
{
    if (!_dataArray) {
        _dataArray = [NSMutableArray arrayWithCapacity:1000];
//        @"https://www.cnblogs.com/luoluosha/p/11696351.html"
        [_dataArray addObject:[FunctionModel makeFuncitonName:@"CollectionView学习" TargetClass:@"CollectionViewController"]];

    }
    return _dataArray;
}
@end
