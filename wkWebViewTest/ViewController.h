//
//  ViewController.h
//  wkWebViewTest
//
//  Created by SangChan on 2014. 9. 1..
//  Copyright (c) 2014년 sangchan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>

@interface ViewController : UIViewController <WKNavigationDelegate>

@property (strong, nonatomic) IBOutlet UINavigationItem *navigationTitle;
- (IBAction)doRefresh:(id)sender;

@end

