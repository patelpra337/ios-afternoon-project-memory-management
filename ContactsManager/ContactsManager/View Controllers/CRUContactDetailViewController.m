//
//  CRUContactDetailViewController.m
//  ContactsManager
//
//  Created by patelpra on 8/15/20.
//  Copyright © 2020 Crus Technologies. All rights reserved.
//

#import "CRUContactDetailViewController.h"
#import "CRUContactController.h"
#import "CRUContact.h"

@interface CRUContactDetailViewController ()

@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneNumberTextField;

@end

@implementation CRUContactDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (self = [super init]) {
        self.nameTextField.text = self.contact.name;
        self.emailTextField.text = self.contact.email;
        self.phoneNumberTextField.text = self.contact.phoneNumber;
    }
}

- (IBAction)saveButtonTapped:(UIBarButtonItem *)sender {
    NSString *name = self.nameTextField.text;
    if (!name || [name isEqualToString:@""]) return;
    
    NSString *email = self.emailTextField.text;
    NSString *phoneNumber = self.phoneNumberTextField.text;
    
    if (!self.contact) {
        [self.contactController createContactWithName:name email:email phoneNumber:phoneNumber];
    } else {
        [self.contactController updateContact:self.contact withName:name email:email phoneNumber:phoneNumber];
    }
    
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)dealloc {
    [_contact release];
    [_contactController release];
    [_nameTextField release];
    [_emailTextField release];
    [_phoneNumberTextField release];
    [super dealloc];
}

@end
