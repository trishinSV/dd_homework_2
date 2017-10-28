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

@property (strong, nonatomic) id<ViewControllerDelegate> delegate;
@property (strong, nonatomic) IBOutlet UITableView *myTable;
@property (nonatomic, strong) NSMutableArray *stringsToShow;
@end
