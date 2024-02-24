#import <Foundation/Foundation.h>
#include "SCLRootListController.h"
#include <sys/sysctl.h>
#import <UIKit/UIKit.h>

@implementation SCLRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Scale" target:self];
	}

	return _specifiers;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    UIBarButtonItem *respring = [[UIBarButtonItem alloc] initWithTitle:@"Respring" style:UIBarButtonItemStylePlain target:self action:@selector(respringAsk:)];
    self.navigationItem.rightBarButtonItem = respring;
}

- (void)respringAsk:(id)sender {
    UIAlertController *alert = [UIAlertController
        alertControllerWithTitle:@"Respring"
                         message:@"You are about to respring."
                  preferredStyle:UIAlertControllerStyleAlert];

    UIAlertAction *defaultAction = [UIAlertAction
        actionWithTitle:@"Cancel"
                  style:UIAlertActionStyleCancel
                handler:nil];

    UIAlertAction *yes = [UIAlertAction
        actionWithTitle:@"Respring"
                  style:UIAlertActionStyleDestructive
                handler:^(UIAlertAction *action) {
                    [self respring];
                }];

    [alert addAction:defaultAction];
    [alert addAction:yes];
    [self presentViewController:alert animated:YES completion:nil];
}

- (void)respring {
		CFNotificationCenterPostNotification(CFNotificationCenterGetDarwinNotifyCenter(), CFSTR("com.ethxnn88.visibleislandprefs-respring"), NULL, NULL, YES);
}

- (void)savePos {
    [self.view endEditing:YES];
}

@end