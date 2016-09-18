//
//  ThreeButtonCalciViewController.h
//  ButtonAutoLayouts
//
//  Created by chaitanya on 11/09/16.
//  Copyright © 2016 chaitanya. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface ThreeButtonCalciViewController : UIViewController {
    float result;
    int currentOperation;
    float currentNumber;
}
@property (strong, nonatomic) IBOutlet UIButton *button1;
@property (strong, nonatomic) IBOutlet UIButton *button2;
@property (strong, nonatomic) IBOutlet UIButton *button3;
@property (strong, nonatomic) IBOutlet UIButton *button4;
@property (strong, nonatomic) IBOutlet UIButton *button5;
@property (strong, nonatomic) IBOutlet UIButton *button6;

@property (strong, nonatomic) IBOutlet UIButton *button7;
@property (strong, nonatomic) IBOutlet UIButton *button8;
@property (strong, nonatomic) IBOutlet UIButton *button9;
@property (strong, nonatomic) IBOutlet UIButton *buttonPlus;
@property (strong, nonatomic) IBOutlet UIButton *buttonMul;
@property (strong, nonatomic) IBOutlet UIButton *buttonDiv;
@property (strong, nonatomic) IBOutlet UIButton *buttonEqu;

@property (strong, nonatomic) IBOutlet UILabel *display;
- (IBAction)ClearButton:(id)sender;
- (IBAction)OperationPressed:(id)sender;




@end
