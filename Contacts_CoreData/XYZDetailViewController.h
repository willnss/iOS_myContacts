//
//  XYZDetailViewController.h
//  Contacts_CoreData
//
//  Created by developer on 08/04/13.
//  Copyright (c) 2013 riderrx. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Contact.h"

@interface XYZDetailViewController : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField *nameTextField;
@property (strong, nonatomic) IBOutlet UITextField *ageTextField;
@property (strong, nonatomic) IBOutlet UITextField *numberTextField;

@property (strong, nonatomic) Contact *contact;
@property (strong, nonatomic) NSManagedObjectContext *context;

- (IBAction)saveButtonSelected:(id)sender;

- (BOOL)textFieldShouldReturn:(UITextField *)textField;

@end

