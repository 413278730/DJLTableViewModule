//
//  DJLTableViewHeader.h
//  DJLTableViewModule
//
//  Created by apple on 2021/12/9.
//

#ifndef DJLTableViewHeader_h
#define DJLTableViewHeader_h
#import <UIKit/UIKit.h>

@class DJLTableViewModule, DJLTableViewFactory, DJLTableViewDelegateModule, DJLTableViewDataSourceModule;

#pragma mark - tableView
/// 获取创建tableView的对象
typedef DJLTableViewFactory * _Nonnull (^Factory)(UITableViewStyle style);

typedef DJLTableViewFactory * _Nonnull (^SetFrame)(CGRect frame);

typedef DJLTableViewFactory * _Nonnull (^SetBackgroundColor)(UIColor * _Nonnull color);

typedef DJLTableViewFactory * _Nonnull (^SetDelegate)(id<UITableViewDelegate> _Nonnull delegate);

typedef DJLTableViewFactory * _Nonnull (^SetDataSource)(id<UITableViewDataSource> _Nonnull dataSource);

typedef DJLTableViewFactory * _Nonnull (^RegisterClass)(Class _Nonnull cls, NSString * _Nonnull identifier);

typedef DJLTableViewFactory * _Nonnull (^RegisterNib)(NSString * _Nonnull name, NSString * _Nonnull identifier);

typedef DJLTableViewFactory * _Nonnull (^SetRowHeight)(CGFloat height);
typedef DJLTableViewFactory * _Nonnull (^SetSectionHeaderHeight)(CGFloat headerHeight);
typedef DJLTableViewFactory * _Nonnull (^SetSectionFooterHeight)(CGFloat footerHeight);
typedef DJLTableViewFactory * _Nonnull (^SetEstimatedRowHeight)(CGFloat estimatedHeight);
typedef DJLTableViewFactory * _Nonnull (^SetEstimatedSectionHeaderHeight)(CGFloat estimatedHeaderHeight);
typedef DJLTableViewFactory * _Nonnull (^SetEstimatedSectionFooterHeight)(CGFloat estimatedFooterHeight);

typedef DJLTableViewFactory * _Nonnull (^SetSeparatorInset)(UIEdgeInsets separatorInset);
typedef DJLTableViewFactory * _Nonnull (^SetSeparatorStyle)(UITableViewCellSeparatorStyle separatorStyle);
typedef DJLTableViewFactory * _Nonnull (^SetSeparatorseparatorColor)(UIColor * _Nonnull separatorColor);

typedef DJLTableViewFactory * _Nonnull (^SetContentInset)(UIEdgeInsets contentInset);
typedef DJLTableViewFactory * _Nonnull (^SetScrollIndicatorInsets)(UIEdgeInsets scrollIndicatorInsets);
typedef DJLTableViewFactory * _Nonnull (^SetContentOffset)(CGPoint contentOffset);

typedef DJLTableViewFactory * _Nonnull (^SetEditing)(BOOL editing);
typedef DJLTableViewFactory * _Nonnull (^SetPagingEnabled)(BOOL pagingEnabled);

typedef DJLTableViewFactory * _Nonnull (^SetTableHeaderView)(UIView * _Nonnull tableHeaderView);
typedef DJLTableViewFactory * _Nonnull (^SetTableFooterView)(UIView * _Nonnull tableFooterView);

/// 返回tableView
typedef UITableView * _Nonnull (^Finsh)(void);

#pragma mark - dataSource
typedef DJLTableViewDataSourceModule * _Nonnull (^DataSource)(void);

/// section
typedef NSInteger (^ Sections)(UITableView * _Nonnull tableView);
typedef DJLTableViewDataSourceModule * _Nonnull (^ NumberOfSections)(Sections _Nonnull sections);

/// row
typedef NSInteger (^ Rows)(UITableView * _Nonnull tableView, NSInteger section);
typedef DJLTableViewDataSourceModule * _Nonnull (^ NumberOfRowsInSection)(Rows _Nonnull rows);

/// cell
typedef UITableViewCell * _Nullable (^ Cells)(UITableView * _Nonnull tableView, NSIndexPath * _Nonnull indexPath);
typedef DJLTableViewDataSourceModule * _Nonnull (^ CellForRow)(Cells _Nonnull cells);

// edit iOS8-iOS13
typedef BOOL (^ShowEdit)(UITableView * _Nonnull tableView, NSIndexPath * _Nonnull indexPath);
typedef DJLTableViewDataSourceModule * _Nonnull (^ CanEditRow)(ShowEdit _Nonnull show);


typedef void (^ EditAction)(UITableView * _Nonnull tableView, UITableViewCellEditingStyle editingStyle, NSIndexPath * _Nonnull indexPath);
typedef DJLTableViewDataSourceModule * _Nonnull (^ CommitEditing)(EditAction _Nonnull action);

/// move cell
typedef BOOL (^CanMove)(UITableView * _Nonnull tableView, NSIndexPath * _Nonnull indexPath);
typedef DJLTableViewDataSourceModule * _Nonnull (^ CanMoveRow)(CanMove _Nonnull canMove);

typedef void (^MoveChange)(UITableView * _Nonnull tableView, NSIndexPath * _Nonnull sourceIndexPath, NSIndexPath * _Nonnull destinationIndexPath);
typedef DJLTableViewDataSourceModule * _Nonnull (^ MoveRowAtIndexPathToIndexPath)(MoveChange _Nonnull moveChange);

typedef NSArray <NSString *> * _Nonnull (^ SectionTitles)(UITableView * _Nonnull tableView);
typedef DJLTableViewDataSourceModule * _Nonnull (^ SectionIndexTitles)(SectionTitles _Nonnull sectionTitles);

typedef NSInteger (^ ClickSectionTitle)(UITableView * _Nonnull tableView, NSString * _Nonnull title, NSInteger index);
typedef DJLTableViewDataSourceModule * _Nonnull (^ SectionForSectionIndexTitle)(ClickSectionTitle _Nonnull clickTitle);

#pragma mark - delegate

typedef DJLTableViewDelegateModule * _Nonnull (^ Delegate)(void);

/// cell height
typedef CGFloat (^ RowHeight)(UITableView * _Nonnull tableView, NSIndexPath * _Nonnull indexPath);
typedef DJLTableViewDelegateModule * _Nonnull (^ HeightForRow)(RowHeight _Nonnull height);

/// header height
typedef CGFloat (^ SectionHeaderHeight)(UITableView * _Nonnull tableView, NSInteger section);
typedef DJLTableViewDelegateModule * _Nonnull (^ HeightForHeader)(SectionHeaderHeight _Nonnull height);

/// header view
typedef UIView * _Nullable (^ SectionHeaderView)(UITableView * _Nonnull tableView, NSInteger section);
typedef DJLTableViewDelegateModule * _Nonnull (^ ViewForHeader)(SectionHeaderView _Nonnull view);

/// footer height
typedef CGFloat (^ SectionFooterHeight)(UITableView * _Nonnull tableView, NSInteger section);
typedef DJLTableViewDelegateModule * _Nonnull (^ HeightForFooter)(SectionFooterHeight _Nonnull height);

/// footer view
typedef UIView * _Nullable (^SectionFooterView)(UITableView * _Nonnull tableView, NSInteger section);
typedef DJLTableViewDelegateModule * _Nonnull (^ ViewForFooter)(SectionFooterView _Nonnull view);

/// didSelectRow
typedef void (^Select)(UITableView * _Nonnull tableView, NSIndexPath * _Nonnull indexPath);
typedef DJLTableViewDelegateModule * _Nonnull (^ DidSelectRow)(Select _Nonnull select);

/// didDeselectRow
typedef void (^Deselect)(UITableView * _Nonnull tableView, NSIndexPath * _Nonnull indexPath);
typedef DJLTableViewDelegateModule * _Nonnull (^ DidDeselectRow)(Deselect _Nonnull deselect);

typedef BOOL (^ShouldHighlight)(UITableView * _Nonnull tableView, NSIndexPath * _Nonnull indexPath);
typedef DJLTableViewDelegateModule * _Nonnull (^ ShouldHighlightRow)(ShouldHighlight _Nonnull shouldHighlight);

typedef void (^DidHighlight)(UITableView * _Nonnull tableView, NSIndexPath * _Nonnull indexPath);
typedef DJLTableViewDelegateModule * _Nonnull (^ DidHighlightRow)(DidHighlight _Nonnull didHighlight);

typedef void (^DidUnhighlight)(UITableView * _Nonnull tableView, NSIndexPath * _Nonnull indexPath);
typedef DJLTableViewDelegateModule * _Nonnull (^ DidUnhighlightRow)(DidUnhighlight _Nonnull didUnhighlight);

typedef UITableViewCellEditingStyle (^EditingStyle)(UITableView * _Nonnull tableView, NSIndexPath * _Nonnull indexPath);
typedef DJLTableViewDelegateModule * _Nonnull (^ EditingStyleForRow)(EditingStyle _Nonnull editingStyle);

typedef NSArray<UITableViewRowAction *> * _Nonnull (^ EditActions)(UITableView * _Nonnull tableView, NSIndexPath * _Nonnull indexPath);
typedef DJLTableViewDelegateModule * _Nonnull (^ EditActionsForRow)(EditActions _Nonnull actions);

/// leading edit >iOS11
API_AVAILABLE(ios(11.0))
typedef UISwipeActionsConfiguration * _Nonnull (^ ActionsConfiguration)(UITableView * _Nonnull tableView, NSIndexPath * _Nonnull indexPath);
API_AVAILABLE(ios(11.0))
typedef DJLTableViewDelegateModule * _Nonnull (^ LeadingSwipeActionsConfigurationForRow)(ActionsConfiguration _Nonnull configuration);

/// trailing edit >iOS11
API_AVAILABLE(ios(11.0))
typedef DJLTableViewDelegateModule * _Nonnull (^ TrailingSwipeActionsConfigurationForRow)(ActionsConfiguration _Nonnull configuration);

#pragma mark - ScrollView
typedef void (^ DidEndDragging)(UIScrollView * _Nonnull scrollView, BOOL decelerate);
typedef DJLTableViewDelegateModule * _Nonnull (^ ScrollViewDidEndDragging)(DidEndDragging _Nonnull didEndDragging);

typedef void (^ BeginDecelerating)(UIScrollView * _Nonnull scrollView);
typedef DJLTableViewDelegateModule * _Nonnull (^ ScrollViewWillBeginDecelerating)(BeginDecelerating _Nonnull beginDecelerating);

typedef void (^ EndDecelerating)(UIScrollView * _Nonnull scrollView);
typedef DJLTableViewDelegateModule * _Nonnull (^ ScrollViewDidEndDecelerating)(EndDecelerating _Nonnull endDecelerating);

typedef void (^ EndAnimation)(UIScrollView * _Nonnull scrollView);
typedef DJLTableViewDelegateModule * _Nonnull (^ ScrollViewDidEndScrollingAnimation)(EndAnimation _Nonnull endAnimation);

typedef void (^ DidScroll)(UIScrollView * _Nonnull scrollView);
typedef DJLTableViewDelegateModule * _Nonnull (^ ScrollViewDidScroll)(DidScroll _Nonnull didScroll);

typedef void (^ WillBeginDragging)(UIScrollView * _Nonnull scrollView);
typedef DJLTableViewDelegateModule * _Nonnull (^ ScrollViewWillBeginDragging)(WillBeginDragging _Nonnull dillBeginDragging);

typedef void (^ WillEndDragging)(UIScrollView * _Nonnull scrollView, CGPoint velocity, CGPoint * _Nullable targetContentOffset);
typedef DJLTableViewDelegateModule * _Nonnull (^ ScrollViewWillEndDragging)(WillEndDragging _Nonnull willEndDragging);

#endif /* DJLTableViewHeader_h */
