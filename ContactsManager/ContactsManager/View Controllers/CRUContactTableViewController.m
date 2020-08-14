//
//  CRUContactTableViewController.m
//  ContactsManager
//
//  Created by patelpra on 8/13/20.
//  Copyright © 2020 Crus Technologies. All rights reserved.
//

#import "CRUContactTableViewController.h"
#import "CRUContactController.h"
#import "CRUContact.h"

@interface CRUContactTableViewController ()

@property (nonatomic, retain) CRUContactController *contactController;

@end

@implementation CRUContactTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.contactController = [[[CRUContactController alloc] init] autorelease];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.contactController.contactCount;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactCell" forIndexPath:indexPath];
    
    CRUContact *contact = [self.contactController contactAtIndex:indexPath.row];
    [cell.textLabel setText:contact.name];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.contactController deleteContactAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    

}


@end
