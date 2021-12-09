//
//  DJLTableViewDataSourceModule.m
//  DJLTableViewModule
//
//  Created by apple on 2021/12/9.
//

#import "DJLTableViewDataSourceModule.h"

@interface DJLTableViewDataSourceModule()

@property (nonatomic, copy) Sections sections;

@property (nonatomic, copy) Rows rows;

@property (nonatomic, copy) Cells cells;

@property (nonatomic, copy) ShowEdit show;

@property (nonatomic, copy) EditAction action;

@property (nonatomic, copy) SectionTitles sectionTitles;

@property (nonatomic, copy) ClickSectionTitle clickTitle;

@property (nonatomic, copy) CanMove canMove;

@property (nonatomic, copy) MoveChange moveChange;

@end

@implementation DJLTableViewDataSourceModule

/// - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
- (NumberOfSections)numberOfSections {
    return ^(Sections sections) {
        self.sections = sections;
        return self;
    };
}

/// - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
- (NumberOfRowsInSection)numberOfRowsInSection {
    return ^(Rows rows) {
        self.rows = rows;
        return self;
    };
}

/// - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
- (CellForRow)cellForRow {
    return ^(Cells cells) {
        self.cells = cells;
        return self;
    };
}

/// - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
- (CanEditRow)canEditRow {
    return ^(ShowEdit show) {
        self.show = show;
        return self;
    };
}

- (CommitEditing)commitEditing {
    return ^(EditAction action) {
        self.action = action;
        return self;
    };
}

/// - (nullable NSArray<NSString *> *)sectionIndexTitlesForTableView:(UITableView *)tableView
- (SectionIndexTitles)sectionIndexTitles {
    return ^(SectionTitles sectionTitles) {
        self.sectionTitles = sectionTitles;
        return self;
    };
}

/// - (NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index
- (SectionForSectionIndexTitle)sectionForSectionIndexTitle {
    return ^(ClickSectionTitle clickTitle) {
        self.clickTitle = clickTitle;
        return self;
    };
}

- (CanMoveRow)canMoveRow {
    return ^(CanMove canMove) {
        self.canMove = canMove;
        return self;
    };
}

- (MoveRowAtIndexPathToIndexPath)moveRowAtIndexPathToIndexPath {
    return ^(MoveChange moveChange) {
        self.moveChange = moveChange;
        return self;
    };
}

#pragma mark - tableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    if (self.sections) {
        return self.sections(tableView);
    }
    if (self.rows) {
        return 1;
    }
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (self.rows) {
        return self.rows(tableView, section);
    }
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (self.cells) {
        return self.cells(tableView,indexPath);
    }
    return [UITableViewCell new];
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    if (self.show) {
        return self.show(tableView, indexPath);
    }
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (self.action) {
        self.action(tableView, editingStyle, indexPath);
    }
}

- (nullable NSArray<NSString *> *)sectionIndexTitlesForTableView:(UITableView *)tableView {
    if (self.sectionTitles) {
        return self.sectionTitles(tableView);
    }
    return nil;
}

- (NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index {
    if (self.clickTitle) {
        return self.clickTitle(tableView, title, index);
    }
    return 0;
}

- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    if (self.canMove) {
        return self.canMove(tableView, indexPath);
    }
    return NO;
}

- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath {
    if (self.moveChange) {
        self.moveChange(tableView, sourceIndexPath, destinationIndexPath);
    }
}

@end
