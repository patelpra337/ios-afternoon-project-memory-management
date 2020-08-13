//
//  CRUContactController.m
//  ContactsManager
//
//  Created by patelpra on 8/12/20.
//  Copyright © 2020 Crus Technologies. All rights reserved.
//

#import "CRUContactController.h"
#import "CRUContact.h"

@interface CRUContactController () {
    NSMutableArray *_internalContacts;
}

@end

@implementation CRUContactController

- (instancetype)init
{
    if (self = [super init]) {
        _internalContacts = [[NSMutableArray alloc] init];
        [self addTestData];
    }
    return self;
}

- (void)addTestData
{
    CRUContact *contact1 = [[CRUContact alloc] initWithName:@"Pravin Patel" Email:@"pravin.patel@email.com" PhoneNumber:@"123-456-7890"];
    
    [_internalContacts addObject:contact1];
    [contact1 release];
}

- (NSArray<CRUContact *> *)contacts
{
    return [_internalContacts.copy autorelease];
}

- (void)dealloc
{
    [_internalContacts release];
    [super dealloc];
}








@end
