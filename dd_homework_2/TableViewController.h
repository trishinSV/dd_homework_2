//
//  TableViewController.h
//  dd_homework_2
//
//  Created by Сергей Тришин on 22.10.2017.
//  Copyright © 2017 Сергей Тришин. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "StringWithRange.h"
@interface TableViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (retain, nonatomic) id<ViewControllerDelegate> delegate;
@property (retain, nonatomic) IBOutlet UITableView *myTable;
@property (retain, nonatomic) NSMutableArray *stringsToShow;
@end
