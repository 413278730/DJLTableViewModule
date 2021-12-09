//
//  DJLTableViewDelegateModule.h
//  DJLTableViewModule
//
//  Created by apple on 2021/12/9.
//

#import <Foundation/Foundation.h>
#import "DJLTableViewHeader.h"

NS_ASSUME_NONNULL_BEGIN

@interface DJLTableViewDelegateModule : NSObject<UITableViewDelegate>

/// - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
@property (nonatomic, copy, readonly) HeightForRow heightForRow;

/// - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
@property (nonatomic, copy, readonly) HeightForHeader heightForHeader;

/// - (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
@property (nonatomic, copy, readonly) ViewForHeader viewForHeader;

/// - (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
@property (nonatomic, copy, readonly) HeightForFooter heightForFooter;

/// - (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
@property (nonatomic, copy, readonly) ViewForFooter viewForFooter;

/// - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
@property (nonatomic, copy, readonly) DidSelectRow didSelectRow;

/// - (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
@property (nonatomic, copy, readonly) DidDeselectRow didDeselectRow;

/// - (BOOL)tableView:(UITableView *)tableView shouldHighlightRowAtIndexPath:(NSIndexPath *)indexPath
@property (nonatomic, copy, readonly) ShouldHighlightRow shouldHighlightRow;

/// - (void)tableView:(UITableView *)tableView didHighlightRowAtIndexPath:(NSIndexPath *)indexPath
@property (nonatomic, copy, readonly) DidHighlightRow didHighlightRow;

/// - (void)tableView:(UITableView *)tableView didUnhighlightRowAtIndexPath:(NSIndexPath *)indexPath
@property (nonatomic, copy, readonly) DidUnhighlightRow didUnhighlightRow;

/// - (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
@property (nonatomic, copy, readonly) EditingStyleForRow editingStyleForRow;

/// - (NSArray<UITableViewRowAction *> *)tableView:(UITableView *)tableView editActionsForRowAtIndexPath:(NSIndexPath *)indexPath
@property (nonatomic, copy, readonly) EditActionsForRow editActionsForRow;

/// - (nullable UISwipeActionsConfiguration *)tableView:(UITableView *)tableView leadingSwipeActionsConfigurationForRowAtIndexPath:(NSIndexPath *)indexPath
@property (nonatomic, copy, readonly) LeadingSwipeActionsConfigurationForRow leadingSwipeActionsConfigurationForRow API_AVAILABLE(ios(11.0));

/// - (nullable UISwipeActionsConfiguration *)tableView:(UITableView *)tableView trailingSwipeActionsConfigurationForRowAtIndexPath:(NSIndexPath *)indexPath
@property (nonatomic, copy, readonly) TrailingSwipeActionsConfigurationForRow trailingSwipeActionsConfigurationForRow API_AVAILABLE(ios(11.0));

#pragma mark - ScrollView
/// - (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate
@property (nonatomic, copy, readonly) ScrollViewDidEndDragging scrollViewDidEndDragging;

/// - (void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView
@property (nonatomic, copy, readonly) ScrollViewWillBeginDecelerating scrollViewWillBeginDecelerating;

/// - (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
@property (nonatomic, copy, readonly) ScrollViewDidEndDecelerating scrollViewDidEndDecelerating;

/// - (void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView
@property (nonatomic, copy, readonly) ScrollViewDidEndScrollingAnimation scrollViewDidEndScrollingAnimation;

/// - (void)scrollViewDidScroll:(UIScrollView *)scrollView
@property (nonatomic, copy, readonly) ScrollViewDidScroll scrollViewDidScroll;

/// - (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
@property (nonatomic, copy, readonly) ScrollViewWillBeginDragging scrollViewWillBeginDragging;

/// - (void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset
@property (nonatomic, copy, readonly) ScrollViewWillEndDragging scrollViewWillEndDragging;


@end

NS_ASSUME_NONNULL_END
