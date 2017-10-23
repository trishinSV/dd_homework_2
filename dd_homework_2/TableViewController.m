//
//  TableViewController.m
//  dd_homework_2
//
//  Created by Сергей Тришин on 22.10.2017.
//  Copyright © 2017 Сергей Тришин. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.myTable reloadData];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_stringsToShow count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.textLabel.attributedText = [_stringsToShow objectAtIndex:indexPath.row];
    
    return cell;
}

@end
