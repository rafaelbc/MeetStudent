//
//  AlunoViewController.h
//  Nano01
//
//  Created by Rafael Cabral on 26/03/15.
//  Copyright (c) 2015 BEPiD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AlunoViewController : UIViewController

@property (nonatomic, strong) NSString *name;
@property (nonatomic, weak) NSString *idade;
@property (nonatomic, weak) NSString *sexo;
@property (nonatomic, weak) NSString *media;
@property (nonatomic, weak) NSString *consideracoes;
@property (nonatomic, weak) NSString *imagem;


@end
