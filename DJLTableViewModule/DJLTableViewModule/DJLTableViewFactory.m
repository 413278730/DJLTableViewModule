//
//  DJLTableViewFactory.m
//  DJLTableViewModule
//
//  Created by apple on 2021/12/9.
//

#import "DJLTableViewFactory.h"

@interface DJLTableViewFactory ()

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation DJLTableViewFactory

- (instancetype)initWithStyle:(UITableViewStyle)style {
    if (self = [super init]) {
        self.tableView = [[UITableView alloc] initWithFrame:CGRectZero style:style];
    }
    return self;
}

- (SetFrame)frame {
    return ^(CGRect frame) {
        self.tableView.frame = frame;
        return self;
    };
}

- (SetBackgroundColor)backgroundColor {
    return ^(UIColor *color) {
        self.tableView.backgroundColor = color;
        return self;
    };
}

- (SetDelegate)delegate {
    return ^(id<UITableViewDelegate> delegate) {
        self.tableView.delegate = delegate;
        return self;
    };
}

- (SetDataSource)dataSource {
    return ^(id<UITableViewDataSource> dataSource) {
        self.tableView.dataSource = dataSource;
        return self;
    };
}

- (RegisterClass)registerClass {
    return ^(Class _Nonnull cls, NSString * _Nonnull identifier) {
        [self.tableView registerClass:cls forCellReuseIdentifier:identifier];
        return self;
    };
}

- (RegisterNib)registerNib {
    return ^(NSString * _Nonnull name, NSString * _Nonnull identifier) {
        [self.tableView registerNib:[UINib nibWithNibName:name bundle:nil] forCellReuseIdentifier:identifier];
        return self;
    };
}

- (SetRowHeight)rowHeight {
    return ^(CGFloat height) {
        self.tableView.rowHeight = height;
        return self;
    };
}

- (SetSectionHeaderHeight)sectionHeaderHeight {
    return ^(CGFloat headerHeight) {
        self.tableView.sectionHeaderHeight = headerHeight;
        return self;
    };
}

- (SetSectionFooterHeight)sectionFooterHeight {
    return ^(CGFloat footerHeight) {
        self.tableView.sectionFooterHeight = footerHeight;
        return self;
    };
}

- (SetEstimatedRowHeight)estimatedRowHeight {
    return ^(CGFloat estimatedHeight) {
        self.tableView.estimatedRowHeight = estimatedHeight;
        return self;
    };
}

- (SetEstimatedSectionHeaderHeight)estimatedSectionHeaderHeight {
    return ^(CGFloat estimatedHeaderHeight) {
        self.tableView.estimatedSectionHeaderHeight = estimatedHeaderHeight;
        return self;
    };
}

- (SetEstimatedSectionFooterHeight)estimatedSectionFooterHeight {
    return ^(CGFloat estimatedFooterHeight) {
        self.tableView.estimatedSectionFooterHeight = estimatedFooterHeight;
        return self;
    };
}

- (SetSeparatorInset)separatorInset {
    return ^(UIEdgeInsets separatorInset) {
        self.tableView.separatorInset = separatorInset;
        return self;
    };
}

- (SetSeparatorStyle)separatorStyle {
    return ^(UITableViewCellSeparatorStyle separatorStyle) {
        self.tableView.separatorStyle = separatorStyle;
        return self;
    };
}

- (SetSeparatorseparatorColor)separatorColor {
    return ^(UIColor * _Nonnull separatorColor) {
        self.tableView.separatorColor = separatorColor;
        return self;
    };
}

- (SetContentInset)contentInset {
    return ^(UIEdgeInsets contentInset) {
        self.tableView.contentInset = contentInset;
        return self;
    };
}

- (SetScrollIndicatorInsets)scrollIndicatorInsets {
    return ^(UIEdgeInsets scrollIndicatorInsets) {
        self.tableView.scrollIndicatorInsets = scrollIndicatorInsets;
        return self;
    };
}

- (SetContentOffset)contentOffset {
    return ^(CGPoint contentOffset) {
        self.tableView.contentOffset = contentOffset;
        return self;
    };
}

- (SetEditing)editing {
    return ^(BOOL editing) {
        self.tableView.editing = editing;
        return self;
    };
}

- (SetPagingEnabled)pagingEnabled {
    return ^(BOOL pagingEnabled) {
        self.tableView.pagingEnabled = pagingEnabled;
        return self;
    };
}

- (SetTableHeaderView)tableHeaderView {
    return ^(UIView * _Nonnull tableHeaderView) {
        self.tableView.tableHeaderView = tableHeaderView;
        return self;
    };
}

- (SetTableFooterView)tableFooterView {
    return ^(UIView * _Nonnull tableFooterView) {
        self.tableView.tableFooterView = tableFooterView;
        return self;
    };
}

- (Finsh)finsh {
    return ^() {
        return self.tableView;
    };
}

@end
