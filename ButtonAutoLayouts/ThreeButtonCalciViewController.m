//
//  ThreeButtonCalciViewController.m
//  ButtonAutoLayouts
//
//  Created by chaitanya on 11/09/16.
//  Copyright © 2016 chaitanya. All rights reserved.
//

#import "ThreeButtonCalciViewController.h"


@interface ThreeButtonCalciViewController ()

@end

@implementation ThreeButtonCalciViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _display.text = @"0";
//    _button7.layer.cornerRadius = 15;
//    _button7.clipsToBounds = YES;
//    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)ButtonPressed:(UIButton *)sender {
    currentNumber = currentNumber *10 + (float) [sender tag];
   NSLog(@"%ld",(long)sender.tag);
    _display.text = [NSMutableString stringWithFormat:@"%.1f", currentNumber];
    
    
}

- (IBAction)ClearButton:(id)sender {
    currentNumber = 0;
    _display.text = @"0";
    currentOperation = 0;
}

- (IBAction)OperationPressed:(id)sender {
    if (currentOperation == 0) result = currentNumber;
    else{
        switch (currentOperation) {
            case 100:
                result = result + currentNumber;
                break;
                case 200:
                result = result - currentNumber;
                break;
                case 300:
                result = result * currentNumber;
                break;
                case 400:
                result = result / currentNumber;
                break;
                case 500:
                _display.text = [NSMutableString stringWithFormat:@"%.1f", result];
                break;
                
                
            default:
                currentOperation = 0;

                break;
        }
    }
    
    currentNumber = 0;
    _display.text = [NSString stringWithFormat:@"%.1f", result];
    if ([sender tag] == 0) result = 0;
    currentOperation = [sender tag];
    
}
@end
