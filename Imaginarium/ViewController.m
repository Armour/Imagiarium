//
//  ViewController.m
//  Imaginarium
//
//  Created by Armour on 5/28/15.
//  Copyright (c) 2015 ZJU. All rights reserved.
//

#import "ViewController.h"
#import "ImageViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.destinationViewController isKindOfClass:[ImageViewController class]]) {
        ImageViewController *ivc = (ImageViewController *)segue.destinationViewController;
        ivc.imageURL = [NSURL URLWithString:[NSString stringWithFormat:@"http://f.hiphotos.baidu.com/zhidao/pic/item/0824ab18972bd407e830e7c678899e510fb3091%@.jpg", segue.identifier]];
        ivc.title =segue.identifier;
    }
}

@end
