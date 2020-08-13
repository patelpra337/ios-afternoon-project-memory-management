//
//  CRUContact.h
//  ContactsManager
//
//  Created by patelpra on 8/12/20.
//  Copyright © 2020 Crus Technologies. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CRUContact : NSObject

@property (nonatomic, copy, readwrite) NSString *name;
@property (nonatomic, copy, readwrite) NSString *email;
@property (nonatomic, copy, readwrite) NSString *phoneNumber;

- (instancetype)initWithName:(NSString *)name Email:(NSString *)email PhoneNumber:(NSString *)phoneNumber;

@end

NS_ASSUME_NONNULL_END
