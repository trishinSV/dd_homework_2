//
//  TableViewController.m
//  dd_homework_2
//
//  Created by Сергей Тришин on 22.10.2017.
//  Copyright © 2017 Сергей Тришин. All rights reserved.
//

#import "TableViewController.h"
#import "StringWithRange.h"
#import "ViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.stringsToShow count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    StringWithRange *textWithRange = [self.stringsToShow objectAtIndex:indexPath.row];
    cell.textLabel.attributedText = textWithRange.text;
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    
    StringWithRange *textWithRange = [self.stringsToShow objectAtIndex:indexPath.row];
    
    [self.delegate removeForegroundColorAttributeWithRange: textWithRange.range];
    [self.stringsToShow removeObjectAtIndex:indexPath.row];
    [tableView reloadData];
    
}
-(void) dealloc{
    [_myTable release];
    _myTable = nil;
    [_delegate release];
    _delegate = nil;
    [_stringsToShow release];
    _stringsToShow = nil;
    [super dealloc];
}

@end
