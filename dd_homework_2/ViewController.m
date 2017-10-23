//
//  ViewController.m
//  dd_homework_2
//
//  Created by Сергей Тришин on 13.10.2017.
//  Copyright © 2017 Сергей Тришин. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(strong) NSMutableArray * arrayOfTextToPass;
@end


@implementation ViewController

-(void)viewDidLoad{
    _arrayOfTextToPass = [NSMutableArray array];
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{

    if ([segue.identifier isEqualToString:@"arrayTable"]) {
        TableViewController *destViewController = segue.destinationViewController;
        [destViewController.stringsToShow removeAllObjects];
        destViewController.stringsToShow = self.arrayOfTextToPass;
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
    
    NSString * tempString = [_textView textInRange:_textView.selectedTextRange];
    NSMutableAttributedString *attributedObjects=[[NSMutableAttributedString alloc] initWithString:tempString];
    
    if (![_arrayOfTextToPass containsObject: attributedObjects]) {
        [attributedObjects addAttribute:NSForegroundColorAttributeName
                         value:sender.currentTitleColor
                         range:[tempString rangeOfString:tempString]];
        [_arrayOfTextToPass addObject:attributedObjects];
    }

}
- (IBAction)clearButton:(id)sender {
    
    NSMutableAttributedString *attributedObjects=[[NSMutableAttributedString alloc]
                                                  initWithString:[_textView textInRange:_textView.selectedTextRange]];
    
    [self.textView.textStorage
     removeAttribute:NSForegroundColorAttributeName
     range:[self.textView selectedRange]];
    
    if ([_arrayOfTextToPass containsObject:attributedObjects]) {
        [_arrayOfTextToPass removeObjectAtIndex:[_arrayOfTextToPass indexOfObject:attributedObjects]];
    }
}


@end
