//
//  CustomAlunoViewController.m
//  Nano01
//
//  Created by Rafael Cabral on 26/03/15.
//  Copyright (c) 2015 BEPiD. All rights reserved.
//

#import "AlunoViewController.h"
#import "CustomAlunoViewController.h"

@interface CustomAlunoViewController()

// An array of data
@property (nonatomic, strong) NSArray *names;
@property (nonatomic, strong) NSArray *idades;
@property (nonatomic, strong) NSArray *sexo;
@property (nonatomic, strong) NSArray *medias;
@property (nonatomic, strong) NSArray *consideracoes;
@property (nonatomic, strong) NSArray *images;


@end

@implementation CustomAlunoViewController

// |----------------------------------------------------------------------------
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSError *error = nil;
    // Load some data to populate the table view with
    
    NSURL *namesJSONURL = [[NSBundle mainBundle] URLForResource:@"nome" withExtension:@"json"];
    NSData *namesJSONData = [NSData dataWithContentsOfURL:namesJSONURL];
    
    self.names = [NSJSONSerialization JSONObjectWithData:namesJSONData options:NSUTF8StringEncoding error:&error];
    
    NSURL *idadeJSONURL = [[NSBundle mainBundle] URLForResource:@"idade" withExtension:@"json"];
    NSData *idadeJSONData = [NSData dataWithContentsOfURL:idadeJSONURL];
    self.idades = [NSJSONSerialization JSONObjectWithData:idadeJSONData options:NSUTF8StringEncoding error:&error];
    
    NSURL *sexoJSONURL = [[NSBundle mainBundle] URLForResource:@"sexo" withExtension:@"json"];
    NSData *sexoJSONData = [NSData dataWithContentsOfURL:sexoJSONURL];
    self.sexo = [NSJSONSerialization JSONObjectWithData:sexoJSONData options:NSUTF8StringEncoding error:&error];
    
    NSURL *mediaJSONURL = [[NSBundle mainBundle] URLForResource:@"media" withExtension:@"json"];
    NSData *mediaJSONData = [NSData dataWithContentsOfURL:mediaJSONURL];
    self.medias = [NSJSONSerialization JSONObjectWithData:mediaJSONData options:NSUTF8StringEncoding error:&error];
    
    NSURL *consiJSONURL = [[NSBundle mainBundle] URLForResource:@"consideracoes" withExtension:@"json"];
    NSData *consiJSONData = [NSData dataWithContentsOfURL:consiJSONURL];
    self.consideracoes = [NSJSONSerialization JSONObjectWithData:consiJSONData options:NSUTF8StringEncoding error:&error];
    
    NSURL *imgJSONURL = [[NSBundle mainBundle] URLForResource:@"images" withExtension:@"json"];
    NSData *imgJSONData = [NSData dataWithContentsOfURL:imgJSONURL];
    self.images = [NSJSONSerialization JSONObjectWithData:imgJSONData options:NSUTF8StringEncoding error:&error];
    
    //show console exits error
    NSLog(@"%@", error);
}

// |----------------------------------------------------------------------------
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"DetailSegue"])
    {
        [(AlunoViewController*)segue.destinationViewController setName:self.names[self.tableView.indexPathForSelectedRow.row]];
        [(AlunoViewController*)segue.destinationViewController setIdade:self.idades[self.tableView.indexPathForSelectedRow.row]];
        [(AlunoViewController*)segue.destinationViewController setSexo:self.sexo[self.tableView.indexPathForSelectedRow.row]];
        [(AlunoViewController*)segue.destinationViewController setMedia:self.medias[self.tableView.indexPathForSelectedRow.row]];
        [(AlunoViewController*)segue.destinationViewController setConsideracoes:self.consideracoes[self.tableView.indexPathForSelectedRow.row]];
        [(AlunoViewController*)segue.destinationViewController setImagem:self.images[self.tableView.indexPathForSelectedRow.row]];
    }
    
}


// |- UITableViewDataSource
// |----------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.names.count;
}
// |----------------------------------------------------------------------------
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    cell.textLabel.text = self.names[indexPath.row];
    
    return cell;
}

@end
