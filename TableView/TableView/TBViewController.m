//
//  TBViewController.m
//  TableView
//
//  Created by work on 3/21/13.
//  Copyright (c) 2013 work. All rights reserved.
//

#import "TBViewController.h"
#import "TBProfileViewController.h"

@interface TBViewController ()
@property (strong, nonatomic) NSArray* names;
@end

@implementation TBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.names = @[@"Rose", @"Silvia", @"Joanne", @"Erin", @"Michele"];
    self.title = @"Chickens Who Code";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString* cellIdentifier = @"MyCell";
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    cell.textLabel.text = [self.names objectAtIndex:indexPath.row];
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.names.count;
}

#pragma mark - UITableViewDelegate

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString* name = [self.names objectAtIndex:indexPath.row];
    TBProfileViewController* profileVC = [[TBProfileViewController alloc] initWithNibName:@"TBProfileViewController" bundle:nil];
    
    [self.navigationController pushViewController:profileVC animated:YES];
    profileVC.nameLabel.text = name;
    
}

@end
