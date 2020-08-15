//
//  CRUContactDetailViewController.h
//  ContactsManager
//
//  Created by patelpra on 8/15/20.
//  Copyright © 2020 Crus Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CRUContactController;
@class CRUContact;

NS_ASSUME_NONNULL_BEGIN

@interface CRUContactDetailViewController : UIViewController

@property (nonatomic, retain) CRUContactController *contactController;
@property (nonatomic, retain) CRUContact *contact;

@end

NS_ASSUME_NONNULL_END
