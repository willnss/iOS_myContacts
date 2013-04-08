//
//  XYZDetailViewController.m
//  Contacts_CoreData
//
//  Created by developer on 08/04/13.
//  Copyright (c) 2013 riderrx. All rights reserved.
//

#import "XYZDetailViewController.h"

@interface XYZDetailViewController ()
- (void)configureView;
@end

@implementation XYZDetailViewController

@synthesize nameTextField;
@synthesize ageTextField;
@synthesize numberTextField;

#pragma mark - Managing the detail item

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.contact) {
        self.nameTextField.text = self.contact.name;
        self.ageTextField.text = self.contact.age.stringValue;
        self.numberTextField.text = self.contact.phoneNumber;
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Detail", @"Detail");
    }
    return self;
}

- (void)saveButtonSelected:(id)sender
{
    self.contact.name = self.nameTextField.text;
    self.contact.age = [NSNumber numberWithInt:self.ageTextField.text.integerValue];
    self.contact.phoneNumber = self.numberTextField.text;
    
    NSError __autoreleasing *error;
    BOOL saveSuccessful = [self.context save:&error];
    if (!saveSuccessful)
        NSLog(@"Error saving, Error: %@", error.localizedDescription);
    
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self configureView];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    
    [textField resignFirstResponder];
    return YES;
}

@end
