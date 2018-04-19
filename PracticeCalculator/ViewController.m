//
//  ViewController.m
//  PracticeCalculator
//
//  Created by Miles R. Basnillo on 19/04/2018.
//  Copyright © 2018 Miles R. Basnillo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    operatorPressed = FALSE;
    firstEntry = NULL;
    secondEntry = NULL;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)clearPressed:(id)sender {
    operatorPressed = FALSE;
    _labelOutput.text = NULL;
    firstEntry = NULL;
    secondEntry = NULL;
}

- (IBAction)addPressed:(id)sender {
    if (firstEntry != NULL) {
        op = 1;
        operatorPressed = TRUE;
    }
}

- (IBAction)subtractPressed:(id)sender {
    if (firstEntry != NULL) {
        op = 2;
        operatorPressed = TRUE;
    }
}

- (IBAction)multiplyPressed:(id)sender {
    if (firstEntry != NULL) {
        op = 3;
        operatorPressed = TRUE;
    }
}

- (IBAction)dividePressed:(id)sender {
    if (firstEntry != NULL) {
        op = 4;
        operatorPressed = TRUE;
    }
}

- (IBAction)equalPressed:(id)sender {
    int result;
    if (operatorPressed == TRUE && firstEntry != NULL && secondEntry != NULL) {
        switch (op) {
            case 1:
                result = [firstEntry intValue] + [secondEntry intValue];
                _labelOutput.text = [NSString stringWithFormat:@"%i", result];
                break;
            case 2:
                result = [firstEntry intValue] - [secondEntry intValue];
                _labelOutput.text = [NSString stringWithFormat:@"%i", result];
                break;
            case 3:
                result = [firstEntry intValue] * [secondEntry intValue];
                _labelOutput.text = [NSString stringWithFormat:@"%i", result];
                break;
            case 4:
                result = [firstEntry intValue] / [secondEntry intValue];
                _labelOutput.text = [NSString stringWithFormat:@"%i", result];
                break;
        }
        operatorPressed = FALSE;
        firstEntry = NULL;
        secondEntry = NULL;
    }
}

- (IBAction)numberPressed:(UIButton*)sender {
    int tag = sender.tag;
    
    if (operatorPressed == FALSE) {
        if (firstEntry == NULL) {
            firstEntry = [NSString stringWithFormat:@"%i", tag];
            _labelOutput.text = firstEntry;
        } else {
            firstEntry = [NSString stringWithFormat:@"%@%i", firstEntry, tag];
            _labelOutput.text = firstEntry;
        }
    } else {
        if (secondEntry == NULL) {
            secondEntry = [NSString stringWithFormat:@"%i", tag];
            _labelOutput.text = secondEntry;
        } else {
            secondEntry = [NSString stringWithFormat:@"%@%i", secondEntry, tag];
            _labelOutput.text = secondEntry;
        }
    }
}

@end
