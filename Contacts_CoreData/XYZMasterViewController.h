//
//  XYZMasterViewController.h
//  Contacts_CoreData
//
//  Created by developer on 08/04/13.
//  Copyright (c) 2013 riderrx. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Contact.h"

@class XYZDetailViewController;

#import <CoreData/CoreData.h>

@interface XYZMasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) XYZDetailViewController *detailViewController;

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
