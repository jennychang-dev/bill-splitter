//
//  ViewController.m
//  BillSplitter
//
//  Created by Jenny Chang on 19/01/2019.
//  Copyright © 2019 Jenny Chang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *splitAmount;
@property (weak, nonatomic) IBOutlet UILabel *numberOfGuests;
@property (weak, nonatomic) IBOutlet UITextField *billAmount;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)sliderValue:(UISlider *)sender {
//    int sliderValue;
//    sliderValue = lroundf(mySlider.value);
//    [mySlider setValue:sliderValue animated:YES];
    
    int sliderValue = lroundf(sender.value);
    
    self.numberOfGuests.text = [NSString stringWithFormat:@"%d", sliderValue];
}

- (IBAction)calculateTip:(UIButton *)sender {
}



@end
