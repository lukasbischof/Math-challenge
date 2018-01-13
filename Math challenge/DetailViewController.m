//
//  DetailViewController.m
//  Math challenge
//
//  Created by Lukas Bischof on 09.01.18.
//  Copyright © 2018 Lukas Bischof. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController () <UITextFieldDelegate>

@property (strong, nonatomic) Challange *currentChallange;

@property (weak, nonatomic) IBOutlet UITextField *answerTextField;
@property (weak, nonatomic) IBOutlet UILabel *challangeLabel;
@property (weak, nonatomic) IBOutlet UIButton *answerButton;

@end

@implementation DetailViewController

- (IBAction)showAnswerButtonTapped:(UIButton *)sender {
    [sender setTitle:SWF(@"%ld", (long)self.currentChallange.answer) forState:UIControlStateNormal];
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    NSString *newText = [textField.text stringByReplacingCharactersInRange:range withString:string];
    return ![self evaluate:[newText integerValue]];
}

- (BOOL)evaluate:(NSInteger)answer
{
    BOOL ret = [self.currentChallange evaluateAnswer:answer];
    if (ret) {
        [self displayNextChallange];
    }
    
    return ret;
}

- (void)displayNextChallange
{
    NSInteger oldAnswer = self.currentChallange.answer;
    do {
        self.currentChallange = [self.challange next];
    } while (self.currentChallange.answer == oldAnswer);
    
    self.challangeLabel.text = self.currentChallange.challangeText;
    self.answerTextField.text = @"";
    [self.answerButton setTitle:@"Antwort" forState:UIControlStateNormal];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.answerTextField.delegate = self;

    [self displayNextChallange];
}

@end
