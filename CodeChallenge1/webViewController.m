//
//  webViewController.m
//  CodeChallenge1
//
//  Created by Jonathan Chou on 10/23/14.
//  Copyright (c) 2014 Jonathan Chou. All rights reserved.
//

#import "webViewController.h"

@interface webViewController () <UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UINavigationItem *navTitle;
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation webViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navTitle.title = self.inheritedNavTitle;
    self.webView.delegate = self;
    NSURL *url = [NSURL URLWithString:@"http://www.google.com"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    
    self.webView.backgroundColor = [UIColor redColor];
    
    [self.webView setScalesPageToFit:YES];
    [self.webView loadRequest:request];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
