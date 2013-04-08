//
//  Contact.h
//  Contacts_CoreData
//
//  Created by developer on 08/04/13.
//  Copyright (c) 2013 riderrx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Contact : NSManagedObject

@property (nonatomic, retain) NSNumber * age;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * phoneNumber;

@end
