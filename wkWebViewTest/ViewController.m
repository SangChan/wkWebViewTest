//
//  ViewController.m
//  wkWebViewTest
//
//  Created by SangChan on 2014. 9. 1..
//  Copyright (c) 2014년 sangchan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    WKWebView *wkWeb = [[WKWebView alloc]init];
    [wkWeb setNavigationDelegate:self];
    self.view = wkWeb;
    NSURLRequest *urlRequest = [[NSURLRequest alloc]initWithURL:[NSURL URLWithString:@"http://m.golfzon.com"]];
    WKNavigation *wkNav = [wkWeb loadRequest:urlRequest];
    NSLog(@"WKNavigation = %@",[wkNav request]);
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation
{
    //[self.navigationController setTitle:[webView title]];
    [_navigationTitle setTitle:[webView title]];
    NSLog(@"webView:%@ didFinishNavigation:%@",[webView description], [navigation description]);
}


- (IBAction)doRefresh:(id)sender {
    WKWebView *wkWeb = (WKWebView *)self.view;
    WKNavigation *wkNav = [wkWeb reload];
    NSLog(@"WKNavigation = %@",[wkNav request]);
}
@end
