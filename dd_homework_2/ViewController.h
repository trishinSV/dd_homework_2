//
//  ViewController.h
//  dd_homework_2
//
//  Created by Сергей Тришин on 13.10.2017.
//  Copyright © 2017 Сергей Тришин. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextView *textView;
@property(strong)NSDictionary* colors;

- (IBAction)redButton:(id)sender;
- (IBAction)blueButton:(id)sender;
- (IBAction)orangeButton:(id)sender;
- (IBAction)greenButton:(id)sender;
- (IBAction)clearButton:(id)sender;
- (void)selectColor:(id)color;

@end

