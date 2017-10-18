//
//  ViewController.m
//  dd_homework_2
//
//  Created by Сергей Тришин on 13.10.2017.
//  Copyright © 2017 Сергей Тришин. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   [_textView setEditable:NO];
    _colors = @{ @"red": [UIColor redColor],
                              @"blue":[UIColor blueColor],
                              @"green":[UIColor greenColor],
                              @"orange": [UIColor orangeColor]
                              };
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)selectColor:(id)color{
    NSRange selectedRange = _textView.selectedRange;
    
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc]
                                                   initWithAttributedString:_textView.attributedText];
    
    [attributedString addAttribute:NSForegroundColorAttributeName
                             value:color
                             range:selectedRange];
    
    _textView.attributedText = attributedString;
   
    
}

- (IBAction)redButton:(id)sender {
    
    [self selectColor:[_colors valueForKey:@"red"]];
}

- (IBAction)blueButton:(id)sender {
    [self selectColor:[_colors valueForKey:@"blue"]];
}

- (IBAction)orangeButton:(id)sender {
   [self selectColor:[_colors valueForKey:@"orange"]];
}

- (IBAction)greenButton:(id)sender {
   [self selectColor:[_colors valueForKey:@"green"]];
}

- (IBAction)clearButton:(id)sender {


    NSMutableAttributedString  *attributedString = [[NSMutableAttributedString alloc]
                                                    initWithAttributedString:_textView.attributedText];
    
    NSRange originalRange = NSMakeRange(0, attributedString.length);
    
    [attributedString setAttributes:@{}
                              range:originalRange];
    _textView.attributedText = attributedString;
}

@end
