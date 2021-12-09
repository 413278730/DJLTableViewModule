//
//  ViewController.m
//  DJLTableViewModule
//
//  Created by apple on 2021/12/9.
//

#import "ViewController.h"
#import "DJLTableViewModule.h"

@interface ViewController ()

@property (nonatomic, strong) UITableView *tableView;

@property (nonatomic, strong) DJLTableViewModule *tableViewModule;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableViewModule = [[DJLTableViewModule alloc] init];
    
//    __weak typeof(self) weakSelf = self;
    
    self.tableViewModule.dataSource().
    numberOfRowsInSection(^NSInteger(UITableView * _Nonnull tableView, NSInteger section) {
        return 10;
    }).cellForRow(^UITableViewCell *(UITableView * _Nonnull tableView, NSIndexPath * _Nonnull indexPath) {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
        cell.textLabel.text = [NSString stringWithFormat:@"%ld",indexPath.row];
        cell.detailTextLabel.text = [NSString stringWithFormat:@"%ld",indexPath.section];
        return cell;
    });

    self.tableViewModule.delegate().
    heightForRow(^CGFloat(UITableView * _Nonnull tableView, NSIndexPath * _Nonnull indexPath) {
        return 80;
    }).didSelectRow(^(UITableView * _Nonnull tableView, NSIndexPath * _Nonnull indexPath) {
        NSLog(@"%zd~~~%zd",indexPath.section,indexPath.row);
    });
    
    self.tableView = self.tableViewModule.
                    factory(UITableViewStylePlain).
                    frame(self.view.bounds).
                    registerClass([UITableViewCell class], @"cell").
                    finsh();
    [self.view addSubview:self.tableView];
    [self.tableView reloadData];
}


@end
