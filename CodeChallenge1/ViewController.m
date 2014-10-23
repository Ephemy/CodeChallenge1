//
//  ViewController.m
//  CodeChallenge1
//
//  Created by Jonathan Chou on 10/23/14.
//  Copyright (c) 2014 Jonathan Chou. All rights reserved.
//

#import "ViewController.h"
#import "webViewController.h"

@interface ViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *multiplicandTextField;
@property (weak, nonatomic) IBOutlet UITextField *multiplierTextField;
@property (weak, nonatomic) IBOutlet UINavigationItem *navTitle;
@property (weak, nonatomic) IBOutlet UIButton *webButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    if(YES){ //checks for valid number
        if(textField.tag == 0){
            self.multiplicandTextField.text = textField.text;}
        else
            self.multiplierTextField.text = textField.text;
        return YES;
    }
    else
        return NO;
}

-(BOOL)numberValid:(NSString *)validInteger{
    return YES;}

-(NSInteger)convertStringToInt:(NSString *)convertString{
    return [convertString intValue];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    webViewController *webVC = [segue destinationViewController];
    webVC.inheritedNavTitle = self.navTitle.title;
    
    
   // [self presentViewController:[segue destinationViewController] animated:NO completion:nil];
}


- (IBAction)onWebButtonPressed:(id)sender {
    [self performSegueWithIdentifier:@"segue" sender:self];
    }

- (IBAction)onCalculateButtonPressed:(id)sender {
    //if(YES){ //Check for valid textfields
    int *product = (int)[self convertStringToInt:self.multiplicandTextField.text] * (int)[self convertStringToInt:self.multiplierTextField.text];
    
    if((int)product%5 != 0)
        self.webButton.userInteractionEnabled = NO;
    else
        self.webButton.userInteractionEnabled = YES;
    
    
    NSString *productString = [NSString stringWithFormat:@"%d", (long)product];
     self.navTitle.title = productString;
    [self.multiplicandTextField resignFirstResponder];
    [self.multiplierTextField resignFirstResponder];
        
    //}
}

@end
