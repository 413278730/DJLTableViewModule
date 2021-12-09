//
//  DJLTableViewFactory.h
//  DJLTableViewModule
//
//  Created by apple on 2021/12/9.
//

#import <Foundation/Foundation.h>
#import "DJLTableViewHeader.h"

NS_ASSUME_NONNULL_BEGIN

@interface DJLTableViewFactory : NSObject

- (instancetype)initWithStyle:(UITableViewStyle)style;

@property (nonatomic, copy, readonly) SetFrame frame;
@property (nonatomic, copy, readonly) SetBackgroundColor backgroundColor;

@property (nonatomic, copy, readonly) SetDelegate delegate;
@property (nonatomic, copy, readonly) SetDataSource dataSource;

@property (nonatomic, copy, readonly) RegisterClass registerClass;
@property (nonatomic, copy, readonly) RegisterNib registerNib;

@property (nonatomic, copy, readonly) SetRowHeight rowHeight;
@property (nonatomic, copy, readonly) SetSectionHeaderHeight sectionHeaderHeight;
@property (nonatomic, copy, readonly) SetSectionFooterHeight sectionFooterHeight;

@property (nonatomic, copy, readonly) SetEstimatedRowHeight estimatedRowHeight;
@property (nonatomic, copy, readonly) SetEstimatedSectionHeaderHeight estimatedSectionHeaderHeight;
@property (nonatomic, copy, readonly) SetEstimatedSectionFooterHeight estimatedSectionFooterHeight;

@property (nonatomic, copy, readonly) SetSeparatorInset separatorInset;
@property (nonatomic, copy, readonly) SetSeparatorStyle separatorStyle;
@property (nonatomic, copy, readonly) SetSeparatorseparatorColor separatorColor;

@property (nonatomic, copy, readonly) SetContentInset contentInset;
@property (nonatomic, copy, readonly) SetScrollIndicatorInsets scrollIndicatorInsets;
@property (nonatomic, copy, readonly) SetContentOffset contentOffset;

@property (nonatomic, copy, readonly) SetEditing editing;
@property (nonatomic, copy, readonly) SetPagingEnabled pagingEnabled;

@property (nonatomic, copy, readonly) SetTableHeaderView tableHeaderView;
@property (nonatomic, copy, readonly) SetTableFooterView tableFooterView;

@property (nonatomic, copy, readonly) Finsh finsh;

@end

NS_ASSUME_NONNULL_END
