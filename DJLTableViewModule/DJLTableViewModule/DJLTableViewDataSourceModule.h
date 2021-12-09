//
//  DJLTableViewDataSourceModule.h
//  DJLTableViewModule
//
//  Created by apple on 2021/12/9.
//

#import <Foundation/Foundation.h>
#import "DJLTableViewHeader.h"

NS_ASSUME_NONNULL_BEGIN

@interface DJLTableViewDataSourceModule : NSObject <UITableViewDataSource>

/// - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
@property (nonatomic, copy, readonly) NumberOfSections numberOfSections;

/// - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
@property (nonatomic, copy, readonly) NumberOfRowsInSection numberOfRowsInSection;

/// - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
@property (nonatomic, copy, readonly) CellForRow cellForRow;

/// - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
@property (nonatomic, copy, readonly) CanEditRow canEditRow;

/// - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
@property (nonatomic, copy, readonly) CommitEditing commitEditing;

/// - (nullable NSArray<NSString *> *)sectionIndexTitlesForTableView:(UITableView *)tableView
@property (nonatomic, copy, readonly) SectionIndexTitles sectionIndexTitles;

/// - (NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index
@property (nonatomic, copy, readonly) SectionForSectionIndexTitle sectionForSectionIndexTitle;

/// - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
@property (nonatomic, copy, readonly) CanMoveRow canMoveRow;

/// - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath
@property (nonatomic, copy, readonly) MoveRowAtIndexPathToIndexPath moveRowAtIndexPathToIndexPath;

@end

NS_ASSUME_NONNULL_END
