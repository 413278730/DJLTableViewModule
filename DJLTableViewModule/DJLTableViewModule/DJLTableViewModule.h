//
//  DJLTableViewModule.h
//  DJLTableViewModule
//
//  Created by apple on 2021/12/9.
//

#import <Foundation/Foundation.h>
#import "DJLTableViewHeader.h"
#import "DJLTableViewDataSourceModule.h"
#import "DJLTableViewDelegateModule.h"
#import "DJLTableViewFactory.h"

NS_ASSUME_NONNULL_BEGIN

@interface DJLTableViewModule : NSObject
/// tableViewDataSource
@property (nonatomic, copy, readonly) DataSource dataSource;

/// tableViewDelegate
@property (nonatomic, copy, readonly) Delegate delegate;

/// create tableView
@property (nonatomic, copy, readonly) Factory factory;

@end

NS_ASSUME_NONNULL_END
