//
//  ViewController.m
//  DMMacImage
//
//  Created by lbq on 2018/4/23.
//  Copyright © 2018年 lbq. All rights reserved.
//

#import "ViewController.h"
#import "NSImage+DM.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.imageView.wantsLayer = YES;
    self.imageView.layer.backgroundColor = [NSColor orangeColor].CGColor;
    
}
static NSInteger i = 0;
- (IBAction)clickAction:(id)sender {
    NSImage *square = [NSImage imageNamed:@"100"];
    
    NSImage *lf = [NSImage imageNamed:@"21"];
    
    NSImage *tb = [NSImage imageNamed:@"12"];
    
    
    i++;
    if(i%6 == 0) {
        self.imageView.image = square;
    } else if(i%6 == 1) {
//        NSImage *sH = [square scaleAspectFitToSize:CGSizeMake(800, 800) transparent:YES];
        NSImage *sH = [square scaleAspectFillToSize:CGSizeMake(800, 800) clipsToBounds:YES];
        self.imageView.image = sH;
    } else if(i%6 == 2) {
        self.imageView.image = lf;
    } else if(i%6 == 3) {
//        NSImage *lfH = [lf scaleAspectFitToSize:CGSizeMake(800, 800) transparent:YES];
        NSImage *lfH = [lf scaleAspectFillToSize:CGSizeMake(320, 320) clipsToBounds:NO];
        self.imageView.image = lfH;
    } else if(i%6 == 4) {
        self.imageView.image = tb;
    } else if(i%6 == 5) {
//        NSImage *tbH = [tb scaleAspectFitToSize:CGSizeMake(800, 800) transparent:YES];
        NSImage *tbH = [tb scaleAspectFillToSize:CGSizeMake(320, 320) clipsToBounds:YES];
        self.imageView.image = tbH;
    } else {
        
    }
    
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}



@end
