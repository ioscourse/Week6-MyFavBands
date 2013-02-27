//
//  MyFavBandsMasterViewController.m
//  MyFavBands
//
//  Created by Charles Konkol on 2/25/13.
//  Copyright (c) 2013 RVC Student. All rights reserved.
//

#import "MyFavBandsMasterViewController.h"

#import "MyFavBandsDetailViewController.h"

@interface MyFavBandsMasterViewController () {
    NSMutableArray *_objects;
}
@end

@implementation MyFavBandsMasterViewController
//1) Add synthesize
@synthesize list;

- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
//2) Replace exiting code with below array load
    self.title = @"My Favorite Bands";
    
    NSArray *listArray = [[NSArray alloc] initWithObjects:@"Joe Cocker", @"Leonard Skynard", @"Eagles",@"Journey",@"38 Special", @"Miranda Lambert",@"Little Big Town",@"Band Perry",nil];
    self.list = listArray;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)insertNewObject:(id)sender
{
    if (!_objects) {
        _objects = [[NSMutableArray alloc] init];
    }
    [_objects insertObject:[NSDate date] atIndex:0];
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
//3 Modify Return for menu array
    return [list count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
//4) Modify code to include cell reference
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    cell.textLabel.text = [list objectAtIndex:[indexPath row]];
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [_objects removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }
}

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/
- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
//5 Replace existing code with below to setproductname and send to seque object item user clicked on menu
    [segue.destinationViewController  setProductName:[list objectAtIndex:[self.tableView.indexPathForSelectedRow row]]];
}



@end
