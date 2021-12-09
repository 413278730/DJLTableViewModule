//
//  DJLTableViewModule.m
//  DJLTableViewModule
//
//  Created by apple on 2021/12/9.
//

#import "DJLTableViewModule.h"

@interface DJLTableViewModule()

@property (nonatomic, strong) DJLTableViewDataSourceModule *tableViewDataSource;

@property (nonatomic, strong) DJLTableViewDelegateModule *tableViewDelegate;

@property (nonatomic, strong) DJLTableViewFactory *tableViewFactory;

@end

@implementation DJLTableViewModule

#pragma mark - getter

/// 真正执行datasource的对象
- (DJLTableViewDataSourceModule *)tableViewDataSource {
    if (!_tableViewDataSource) {
        _tableViewDataSource = [[DJLTableViewDataSourceModule alloc] init];
    }
    return _tableViewDataSource;
}

/// 真正执行delegate的对象
- (DJLTableViewDelegateModule *)tableViewDelegate {
    if (!_tableViewDelegate) {
        _tableViewDelegate = [[DJLTableViewDelegateModule alloc] init];
    }
    return _tableViewDelegate;
}


/// 获取执行dataSource代理对象
- (DataSource)dataSource {
    return ^() {
        return self.tableViewDataSource;
    };
}

/// 获取执行delegate代理对象
- (Delegate)delegate {
    return ^() {
        return self.tableViewDelegate;
    };
}

/// 创建tableView
- (Factory)factory {
    return ^(UITableViewStyle style) {
        if (!self.tableViewFactory) {
            self.tableViewFactory = [[DJLTableViewFactory alloc] initWithStyle:style];
            self.tableViewFactory.delegate(self.tableViewDelegate).dataSource(self.tableViewDataSource);
        }
        return self.tableViewFactory;
    };
}
@end
