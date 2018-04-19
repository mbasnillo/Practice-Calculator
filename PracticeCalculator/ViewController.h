//
//  ViewController.h
//  PracticeCalculator
//
//  Created by Miles R. Basnillo on 19/04/2018.
//  Copyright © 2018 Miles R. Basnillo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    bool operatorPressed;
    int op; // operator
    
    NSString *firstEntry;
    NSString *secondEntry;
}

@property (weak, nonatomic) IBOutlet UILabel *labelOutput;


- (IBAction)clearPressed:(id)sender;
- (IBAction)addPressed:(id)sender;
- (IBAction)subtractPressed:(id)sender;
- (IBAction)multiplyPressed:(id)sender;
- (IBAction)dividePressed:(id)sender;
- (IBAction)equalPressed:(id)sender;

- (IBAction)numberPressed:(UIButton*)sender;

@end

