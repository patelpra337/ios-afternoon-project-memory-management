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
    CRUContact *contact2 = [[CRUContact alloc] initWithName:@"Fidel Monreal" Email:@"fidel.monreal@email.com" PhoneNumber:@"223-456-7890"];
    CRUContact *contact3 = [[CRUContact alloc] initWithName:@"Franco Delatorra" Email:@"franco.delatoora@email.com" PhoneNumber:@"323-456-7890"];
    
    [_internalContacts addObject:contact1];
    [_internalContacts addObject:contact2];
    [_internalContacts addObject:contact3];
    [contact1 release];
    [contact2 release];
    [contact3 release];
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

- (NSInteger)contactCount
{
    return _internalContacts.count;
}

- (CRUContact *)contactAtIndex:(NSInteger)index
{
    CRUContact *contact = [_internalContacts objectAtIndex:index];
    return contact;
}

- (void)deleteContactAtIndex:(NSInteger)index
{
    [_internalContacts removeObjectAtIndex:index];
}

- (void)createContactWithContact:(CRUContact *)contact
{
    [_internalContacts addObject:contact];
}

- (void)createContactWithName:(NSString *)name email:(NSString *)email phoneNumber:(NSString *)phoneNumber
{
    CRUContact *contact = [[[CRUContact alloc] initWithName:name Email:email PhoneNumber:phoneNumber]autorelease];
    [self createContactWithContact:contact];
}

- (void)updateContactAtIndex:(NSInteger)index withContact:(CRUContact *)contact
{
    [_internalContacts setObject:contact atIndexedSubscript:index];
}

- (void)updateContactAtIndex:(NSInteger)index withName:(NSString *)name email:(NSString *)email phoneNumber:(NSString *)phoneNumber
{
    CRUContact *contact = [[[CRUContact alloc] initWithName:name Email:email PhoneNumber:phoneNumber]autorelease];
    [self updateContactAtIndex:index withContact:contact];
}

- (void)updateContact:(CRUContact *)contact withName:(NSString *)name email:(NSString *)email phoneNumber:(NSString *)phoneNumber
{
    contact.name = name;
    contact.email = email;
    contact.phoneNumber = phoneNumber;
    
    NSUInteger index = [_internalContacts indexOfObject:contact];
    
    CRUContact *updatedContact = [[[CRUContact alloc] initWithName:name Email:email PhoneNumber:phoneNumber] autorelease];
    
    [_internalContacts setObject:updatedContact atIndexedSubscript:index];
}

@end
