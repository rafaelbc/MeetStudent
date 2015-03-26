//
//  MainViewController.m
//  Nano01
//
//  Created by Rafael Cabral on 26/03/15.
//  Copyright (c) 2015 BEPiD. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController()<UIActionSheetDelegate>
@end

@implementation MainViewController

- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait;
}

//| ---------------------------------------------------------
//return view controller
- (IBAction)unwindToMainViewController:(UIStoryboardSegue*)sender
{

}



@end
