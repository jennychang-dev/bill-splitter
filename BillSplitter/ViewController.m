//
//  ViewController.m
//  BillSplitter
//
//  Created by Jenny Chang on 19/01/2019.
//  Copyright © 2019 Jenny Chang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UILabel *splitAmount;
@property (weak, nonatomic) IBOutlet UILabel *numberOfGuests;
@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;

@property (nonatomic, assign) NSInteger sliderValue;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.billAmountTextField.delegate = self;
}

-(void)setUpTextField {
    self.billAmountTextField.keyboardType = UIKeyboardTypeDecimalPad;
    self.billAmountTextField.clearButtonMode = UITextFieldViewModeUnlessEditing;
    
}

-(void)textFieldDidBeginEditing:(UITextField *)textField
{
    [self displayBillAmount:@""];
    self.billAmountTextField.text = @"";
}

-(void)displayBillAmount:(NSString *)text
{
    self.billAmountTextField.text = text;
}

- (IBAction)sliderValue:(UISlider *)sender {
    
    self.sliderValue = lroundf(sender.value);
    
    self.numberOfGuests.text = [NSString stringWithFormat:@"%lu", self.sliderValue];
}

- (IBAction)calculateTip:(UIButton *)sender {
    float totalAmount = [self.billAmountTextField.text floatValue];
    float splitAmount = totalAmount / self.sliderValue;
    self.splitAmount.text = [NSString stringWithFormat:@"Per guest: $%.2f",splitAmount];
    
}



@end
