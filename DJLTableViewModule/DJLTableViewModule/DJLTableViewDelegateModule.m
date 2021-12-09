//
//  DJLTableViewDelegateModule.m
//  DJLTableViewModule
//
//  Created by apple on 2021/12/9.
//

#import "DJLTableViewDelegateModule.h"

@interface DJLTableViewDelegateModule()

@property (nonatomic, copy) RowHeight rowHeight;

@property (nonatomic, copy) SectionHeaderHeight headerHeight;

@property (nonatomic, copy) SectionHeaderView headerView;

@property (nonatomic, copy) SectionFooterHeight footerHeight;

@property (nonatomic, copy) SectionFooterView footerView;

@property (nonatomic, copy) Select select;

@property (nonatomic, copy) Deselect deselect;

@property (nonatomic, copy) ShouldHighlight shouldHighlight;

@property (nonatomic, copy) DidHighlight didHighlight;

@property (nonatomic, copy) DidUnhighlight didUnhighlight;

@property (nonatomic, copy) EditingStyle editingStyle;

@property (nonatomic, copy) EditActions actions;

@property (nonatomic, copy) ActionsConfiguration leadingConfiguration API_AVAILABLE(ios(11.0));

@property (nonatomic, copy) ActionsConfiguration trailingConfiguration API_AVAILABLE(ios(11.0));

@property (nonatomic, copy) DidEndDragging didEndDragging;

@property (nonatomic, copy) BeginDecelerating beginDecelerating;

@property (nonatomic, copy) EndDecelerating endDecelerating;

@property (nonatomic, copy) EndAnimation endAnimation;

@property (nonatomic, copy) DidScroll didScroll;

@property (nonatomic, copy) WillBeginDragging willBeginDragging;

@property (nonatomic, copy) WillEndDragging willEndDragging;

@end

@implementation DJLTableViewDelegateModule

/// - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
- (HeightForRow)heightForRow {
    return ^(RowHeight rowHeight) {
        self.rowHeight = rowHeight;
        return self;
    };
}

/// - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
- (HeightForHeader)heightForHeader {
    return ^(SectionHeaderHeight headerHeight) {
        self.headerHeight = headerHeight;
        return self;
    };
}

/// - (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
- (ViewForHeader)viewForHeader {
    return ^(SectionHeaderView headerView) {
        self.headerView = headerView;
        return self;
    };
}

/// - (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
- (HeightForFooter)heightForFooter {
    return ^(SectionFooterHeight footerHeight) {
        self.footerHeight = footerHeight;
        return self;
    };
}

/// - (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
- (ViewForFooter)viewForFooter {
    return ^(SectionFooterView footerView) {
        self.footerView = footerView;
        return self;
    };
}

/// - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
- (DidSelectRow)didSelectRow {
    return ^(Select select) {
        self.select = select;
        return self;
    };
}

/// - (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
- (DidDeselectRow)didDeselectRow {
    return ^(Deselect deselect) {
        self.deselect = deselect;
        return self;
    };
}

/// - (BOOL)tableView:(UITableView *)tableView shouldHighlightRowAtIndexPath:(NSIndexPath *)indexPath
- (ShouldHighlightRow)shouldHighlightRow {
    return ^(ShouldHighlight _Nonnull shouldHighlight) {
        self.shouldHighlight = shouldHighlight;
        return self;
    };
}

/// - (void)tableView:(UITableView *)tableView didHighlightRowAtIndexPath:(NSIndexPath *)indexPath
- (DidHighlightRow)didHighlightRow {
    return ^(DidHighlight _Nonnull didHighlight) {
        self.didHighlight = didHighlight;
        return self;
    };
}

/// - (void)tableView:(UITableView *)tableView didUnhighlightRowAtIndexPath:(NSIndexPath *)indexPath
- (DidUnhighlightRow)didUnhighlightRow {
    return ^(DidUnhighlight _Nonnull didUnhighlight) {
        self.didUnhighlight = didUnhighlight;
        return self;
    };
}

/// - (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
- (EditingStyleForRow)editingStyleForRow {
    return ^(EditingStyle editingStyle) {
        self.editingStyle = editingStyle;
        return self;
    };
}

/// - (NSArray<UITableViewRowAction *> *)tableView:(UITableView *)tableView editActionsForRowAtIndexPath:(NSIndexPath *)indexPath
- (EditActionsForRow)editActionsForRow {
    return ^(EditActions actions) {
        self.actions = actions;
        return self;
    };
}

/// - (nullable UISwipeActionsConfiguration *)tableView:(UITableView *)tableView leadingSwipeActionsConfigurationForRowAtIndexPath:(NSIndexPath *)indexPath
- (LeadingSwipeActionsConfigurationForRow)leadingSwipeActionsConfigurationForRow  API_AVAILABLE(ios(11.0)){
    return ^(ActionsConfiguration configuration) {
        self.leadingConfiguration = configuration;
        return self;
    };
}

/// - (nullable UISwipeActionsConfiguration *)tableView:(UITableView *)tableView trailingSwipeActionsConfigurationForRowAtIndexPath:(NSIndexPath *)indexPath
- (TrailingSwipeActionsConfigurationForRow)trailingSwipeActionsConfigurationForRow API_AVAILABLE(ios(11.0)){
    return ^(ActionsConfiguration configuration) {
        self.trailingConfiguration = configuration;
        return self;
    };
}

/// - (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
- (ScrollViewDidEndDragging)scrollViewDidEndDragging {
    return ^(DidEndDragging didEndDragging) {
        self.didEndDragging = didEndDragging;
        return self;
    };
}

/// - (void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView
- (ScrollViewWillBeginDecelerating)scrollViewWillBeginDecelerating {
    return ^(BeginDecelerating beginDecelerating) {
        self.beginDecelerating = beginDecelerating;
        return self;
    };
}

/// - (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate
- (ScrollViewDidEndDecelerating)scrollViewDidEndDecelerating {
    return ^(EndDecelerating endDecelerating) {
        self.endDecelerating = endDecelerating;
        return self;
    };
}

/// - (void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView
- (ScrollViewDidEndScrollingAnimation)scrollViewDidEndScrollingAnimation {
    return ^(EndAnimation endAnimation) {
        self.endAnimation = endAnimation;
        return self;
    };
}

/// - (void)scrollViewDidScroll:(UIScrollView *)scrollView
- (ScrollViewDidScroll)scrollViewDidScroll {
    return ^(DidScroll didScroll) {
        self.didScroll = didScroll;
        return self;
    };
}

/// - (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
- (ScrollViewWillBeginDragging)scrollViewWillBeginDragging {
    return ^(WillBeginDragging willBeginDragging) {
        self.willBeginDragging = willBeginDragging;
        return self;
    };
}

/// - (void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset
- (ScrollViewWillEndDragging)scrollViewWillEndDragging {
    return ^(WillEndDragging willEndDragging) {
        self.willEndDragging = willEndDragging;
        return self;
    };
}

#pragma mark - tableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (self.rowHeight) {
        return self.rowHeight(tableView, indexPath);
    }
    return tableView.estimatedRowHeight;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    if (self.headerHeight) {
        return self.headerHeight(tableView,section);
    }
    return CGFLOAT_MIN;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    if (self.headerView) {
        return self.headerView(tableView,section);
    }
    return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    if (self.footerHeight) {
        return self.footerHeight(tableView,section);
    }
    return CGFLOAT_MIN;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    if (self.footerView) {
        return self.footerView(tableView,section);
    }
    return nil;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (self.select) {
        self.select(tableView, indexPath);
    }
}

- (BOOL)tableView:(UITableView *)tableView shouldHighlightRowAtIndexPath:(NSIndexPath *)indexPath {
    if (self.shouldHighlight) {
        return self.shouldHighlight(tableView, indexPath);
    }
    return YES;
}

- (void)tableView:(UITableView *)tableView didHighlightRowAtIndexPath:(NSIndexPath *)indexPath {
    if (self.didHighlight) {
        self.didHighlight(tableView, indexPath);
    }
}

- (void)tableView:(UITableView *)tableView didUnhighlightRowAtIndexPath:(NSIndexPath *)indexPath {
    if (self.didUnhighlight) {
        self.didUnhighlight(tableView, indexPath);
    }
}

- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (self.deselect) {
        self.deselect(tableView, indexPath);
    }
}

- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (self.editingStyle) {
        return self.editingStyle(tableView, indexPath);
    }
    return UITableViewCellEditingStyleNone;
}

- (NSArray<UITableViewRowAction *> *)tableView:(UITableView *)tableView editActionsForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (self.actions) {
        return self.actions(tableView,indexPath);
    }
    return nil;
}

- (nullable UISwipeActionsConfiguration *)tableView:(UITableView *)tableView leadingSwipeActionsConfigurationForRowAtIndexPath:(NSIndexPath *)indexPath  API_AVAILABLE(ios(11.0)){
    if (@available(iOS 11.0, *)) {
        if (self.leadingConfiguration) {
            return self.leadingConfiguration(tableView, indexPath);
        }
    }
    return nil;
}

- (nullable UISwipeActionsConfiguration *)tableView:(UITableView *)tableView trailingSwipeActionsConfigurationForRowAtIndexPath:(NSIndexPath *)indexPath API_AVAILABLE(ios(11.0)){
    if (@available(iOS 11.0, *)) {
        if (self.trailingConfiguration) {
            return self.trailingConfiguration(tableView, indexPath);
        }
    }
    return nil;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    if (self.didScroll) {
        self.didScroll(scrollView);
    }
}

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {
    if (self.willBeginDragging) {
        self.willBeginDragging(scrollView);
    }
}

- (void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset {
    if (self.willEndDragging) {
        self.willEndDragging(scrollView, velocity, targetContentOffset);
    }
}

- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate {
    if (self.didEndDragging) {
        self.didEndDragging(scrollView, decelerate);
    }
}

- (void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView {
    if (self.beginDecelerating) {
        self.beginDecelerating(scrollView);
    }
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    if (self.endDecelerating) {
        self.endDecelerating(scrollView);
    }
}

- (void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView {
    if (self.endAnimation) {
        self.endAnimation(scrollView);
    }
}

@end
