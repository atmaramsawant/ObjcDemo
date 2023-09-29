//
//  LoginViewController.m
//  ObjcDemo
//
//  Created by SJI-MAC on 28/09/23.
//

#import "LoginViewController.h"

@interface LoginViewController ()
@property (strong, nonatomic) LoginViewModel* viewModel;
@property (nonatomic, weak) IBOutlet UITextField *emailTextField;
@property (nonatomic, weak) IBOutlet UITextField *passwordTextField;
@end

@implementation LoginViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    _viewModel = [[LoginViewModel alloc] init];
    _viewModel.delegate = self;
    // Do any additional setup after loading the view.
}

- (void)invalidEmail {
    [self hideProgress];
    [self showSingleAlert:@"Invalid email"];
}

- (void)invalidPassword {
    [self hideProgress];
    [self showSingleAlert:@"Invalid Password, Password must be min 8 characters long, must contain one capital letter, a number and a special character"];
}

- (void)loginFailed:(NSError *)error {
    [self hideProgress];
    [self showSingleAlert:error.localizedDescription];
}

- (void)loginSuccessful:(NSDictionary *)Dict {
    [self hideProgress];
    [NavigationRouter showProfileFrom:self];
}

- (IBAction)didTapSignIn:(id)sender {
    if (_emailTextField.text.length > 0 && _passwordTextField.text.length > 0) {
        [self showProgress];
        [_viewModel signInWith:_emailTextField.text :_passwordTextField.text];
    }else {
        [self showSingleAlert:@"Email and password cannot be empty"];
    }
}


@end
