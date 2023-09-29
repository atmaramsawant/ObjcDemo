//
//  SignUpViewController.m
//  ObjcDemo
//
//  Created by SJI-MAC on 28/09/23.
//

#import "SignUpViewController.h"

@interface SignUpViewController ()
@property (strong, nonatomic) signUpViewModel* viewModel;
@property (nonatomic, weak) IBOutlet UITextField *emailTextField;
@property (nonatomic, weak) IBOutlet UITextField *passwordTextField;
@property (nonatomic, weak) IBOutlet UITextField *confirmPasswordTextField;
@property (nonatomic, weak) IBOutlet UITextField *userNameTextField;
@property (nonatomic, weak) IBOutlet UITextField *bioTextField;
@property (nonatomic, weak) IBOutlet UIImageView *profileImageView;
@property (nonatomic, weak) IBOutlet UIButton *signUpButton;
@property (nonatomic, weak) IBOutlet UIButton *editImageButton;
@end

@implementation SignUpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUI];
    _viewModel = [[signUpViewModel alloc] init];
    _viewModel.delegate = self;
}

-(void)setupUI {
    _profileImageView.layer.cornerRadius = _profileImageView.frame.size.width/2;
    _profileImageView.backgroundColor = UIColor.lightGrayColor;
}


- (void)invalidEmail {
    [self hideProgress];
    [self showSingleAlert:@"Invalid email"];
}

- (void)invalidPassword {
    [self hideProgress];
    [self showSingleAlert:@"Invalid Password, Password must be min 10 characters long, must contain one capital letter, a number and a special character"];
}

- (void)signUpFailed:(nonnull NSError *)error {
    [self hideProgress];
    [self showSingleAlert:error.localizedDescription];
}

- (void)signUpSuccessful:(nonnull NSDictionary *)Dict {
    [self hideProgress];
    [self saveUserData];
    [NavigationRouter showProfileFrom:self];
}

-(void)saveUserData {
    [[NSUserDefaults standardUserDefaults] setObject:UIImagePNGRepresentation(_profileImageView.image) forKey:@"ProfileImage"];
    [[NSUserDefaults standardUserDefaults] setValue:_userNameTextField.text forKey:@"username"];
    [[NSUserDefaults standardUserDefaults] setValue:_bioTextField.text forKey:@"bio"];
}

- (IBAction)didTapSignUp:(id)sender {
    if (_emailTextField.text.length > 0 && _passwordTextField.text.length > 0 && _confirmPasswordTextField.text.length > 0 && _userNameTextField.text.length > 0 && _bioTextField.text.length > 0 && _profileImageView.image != nil) {
        
        if ([_passwordTextField.text isEqualToString:_confirmPasswordTextField.text]) {
            [self showProgress];
            [_viewModel signUpWith:_emailTextField.text :_passwordTextField.text];
        }else {
            [self showSingleAlert:@"Passwords don't match"];
        }
    }else {
        [self showSingleAlert:@"All fields are required"];
    }
}

- (IBAction)didTapEditProfilePic:(id)sender {
    
    UIImagePickerController* imagePicker = [[UIImagePickerController alloc]init];
    // Check if image access is authorized
    if([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypePhotoLibrary]) {
      //  imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
        imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        imagePicker.delegate = self;
        [self presentViewController:imagePicker animated:true completion:nil];
    }
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    UIImage *image = info[UIImagePickerControllerOriginalImage];
    _profileImageView.image = image;
    [picker dismissViewControllerAnimated:YES completion:nil];
}

@end
