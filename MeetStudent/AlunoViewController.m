//
//  AlunoViewController.m
//  Nano01
//
//  Created by Rafael Cabral on 26/03/15.
//  Copyright (c) 2015 BEPiD. All rights reserved.
//

#import "AlunoViewController.h"

@interface AlunoViewController()

@property (nonatomic, weak) IBOutlet UIImageView *imageView;
@property (nonatomic, weak) IBOutlet UITextField *nameField;
@property (nonatomic, weak) IBOutlet UITextField *idadeField;
@property (nonatomic, weak) IBOutlet UITextField *sexoField;
@property (nonatomic, weak) IBOutlet UITextField *mediaField;
@property (nonatomic, weak) IBOutlet UITextView *consideracoesView;

@end

@implementation AlunoViewController

// |----------------------------------------------------
- (void) viewDidLoad
{
    [super viewDidLoad];
    
    //disable edit Fields
    self.nameField.userInteractionEnabled = NO;
    self.idadeField.userInteractionEnabled = NO;
    self.sexoField.userInteractionEnabled = NO;
    self.mediaField.userInteractionEnabled = NO;
    //    self.consideracoesView.userInteractionEnabled = NO;
    
    //set dinamic data
    self.imageView.image = [UIImage imageNamed:self.imagem];
    self.nameField.text = self.name;
    self.idadeField.text = self.idade;
    self.sexoField.text = self.sexo;
    self.mediaField.text = self.media;
    self.consideracoesView.text = self.consideracoes;
}


@end
