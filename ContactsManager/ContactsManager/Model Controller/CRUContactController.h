//
//  CRUContactController.h
//  ContactsManager
//
//  Created by patelpra on 8/12/20.
//  Copyright © 2020 Crus Technologies. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CRUContact;

NS_ASSUME_NONNULL_BEGIN

@interface CRUContactController : NSObject

@property (nonatomic, readonly, copy) NSArray<CRUContact *> *contact;
@property (nonatomic, readonly) NSInteger contactCount;

- (CRUContact *)objectInContactAtIndex:(NSInteger)index;
- (void)deleteContactAtIndex:(NSInteger)index;
- (void)createContactWithContact:(CRUContact *)contact;
- (void)createContactWithName:(NSString *)name email:(NSString *)email phoneNumber:(NSString *)phoneNumber;
- (void)updateContactAtIndex:(NSInteger)index withContact:(CRUContact *)contact;
- (void)updateContactAtIndex:(NSInteger)index withName:(NSString *)name email:(NSString *)email phoneNumber:(NSString *)phoneNumber;
- (void)updateContact:(CRUContact *)contact withName:(NSString *)name email:(NSString *)email phoneNumber:(NSString *)phoneNumber;

@end

NS_ASSUME_NONNULL_END
