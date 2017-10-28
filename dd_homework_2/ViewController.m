//
//  ViewController.m
//  dd_homework_2
//
//  Created by Сергей Тришин on 13.10.2017.
//  Copyright © 2017 Сергей Тришин. All rights reserved.
//

#import "ViewController.h"
#import "TableViewController.h"
#import "StringWithRange.h"
@interface ViewController ()
@end


@implementation ViewController

-(void)viewDidLoad{
    [super viewDidLoad];
 
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{

    NSMutableArray* textWithColor = [[NSMutableArray alloc] init];
    
    [self.textView.textStorage enumerateAttribute:NSForegroundColorAttributeName inRange:NSMakeRange(0, self.textView.text.length) options:0 usingBlock:^(id value, NSRange range, BOOL *stop) {
        if (value) {
            NSAttributedString *text = (NSAttributedString *)[self.textView.textStorage attributedSubstringFromRange:range];
            StringWithRange *swr = [[StringWithRange alloc] initWithText:text range:range];
            [textWithColor addObject:swr];

        }
    }];
    
    if ([segue.identifier isEqualToString:@"arrayTable"]) {
        TableViewController *destViewController = segue.destinationViewController;
        ViewController *firstController = (ViewController *)segue.sourceViewController;
        destViewController.delegate = firstController;
        destViewController.stringsToShow = textWithColor;
        
    }
}


- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.textView resignFirstResponder];
}


- (IBAction)anyButtonClick:(UIButton *)sender {
    [self.textView.textStorage
     addAttribute:NSForegroundColorAttributeName
     value:sender.currentTitleColor
     range:[self.textView selectedRange]];
}
    
- (IBAction)clearButton:(id)sender {
    [self.textView.textStorage
     removeAttribute:NSForegroundColorAttributeName
     range:[self.textView selectedRange]];

}

- (void)removeForegroundColorAttributeWithRange:(NSRange)range {
    [self.textView.textStorage removeAttribute:NSForegroundColorAttributeName range:range];
}
@end
