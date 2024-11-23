//
//  ViewController.m
//  test.a
//
//  Created by m3 on 2024/11/23.
//

#import "ViewController.h"
#import "ReactViewController.h"

@interface ViewController ()

@end

@implementation ViewController {
    ReactViewController *reactViewController;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIButton *button = [UIButton new];
    [button setTitle:@"Open React Native" forState:UIControlStateNormal];
    [button setTitleColor:UIColor.systemBlueColor forState:UIControlStateNormal];
    [button setTitleColor:UIColor.blueColor forState:UIControlStateHighlighted];
    [button addTarget:self action:@selector(presentReactNative) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];

    button.translatesAutoresizingMaskIntoConstraints = NO;
    [NSLayoutConstraint activateConstraints:@[
        [button.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor],
        [button.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor],
        [button.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor],
        [button.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor],
    ]];
}

- (void)presentReactNative
{
  if (reactViewController == NULL) {
    reactViewController = [ReactViewController new];
  }
  [self presentViewController:reactViewController animated:YES completion:nil];
}


@end
