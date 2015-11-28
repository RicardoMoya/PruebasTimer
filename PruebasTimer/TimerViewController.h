//
//  TimerViewController.h
//  PruebasTimer
//
//  Created by Ricardo Moya Garcia on 30/08/12.
//  Copyright (c) 2012 Ricardo Moya Garcia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TimerViewController : UIViewController{
    NSTimer *timer;
    int contadorSeg;
}

@property (strong, nonatomic) IBOutlet UILabel *labelContador;
@property (strong, nonatomic) IBOutlet UILabel *labelEstado;

- (IBAction)start:(id)sender;
- (IBAction)stop:(id)sender;
- (IBAction)reiniciar:(id)sender;



@end
