//
//  TimerViewController.m
//  PruebasTimer
//
//  Created by Ricardo Moya Garcia on 30/08/12.
//  Copyright (c) 2012 Ricardo Moya Garcia. All rights reserved.
//

#import "TimerViewController.h"

@implementation TimerViewController
@synthesize labelContador;
@synthesize labelEstado;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setLabelContador:nil];
    [self setLabelEstado:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

// Metodo que se ejecuta cada vez que se activa el timer.
-(void)contar{
    contadorSeg = contadorSeg +1;
    self.labelContador.text = [[NSNumber numberWithInt:contadorSeg] stringValue];
}


// ACCION START => al darle al boton Start se iniciar al timer y se ejecuta el metodo
// que le decimos al timer, en este caso el metodo "contar".
- (IBAction)start:(id)sender {
    
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 // El timer se ejcuta cada segundo
                    target:self     // Se ejecuta este timer en este view
                    selector:@selector(contar)      // Se ejecuta el método contar
                    userInfo:nil
                    repeats:YES];   // El timer es repetitivo, es decir cada segundo (en esta caso) se ejecuta
    
    self.labelEstado.text = @"Start";
}


// ACCION STOP => al darle al boton stop de detiene el timer.
- (IBAction)stop:(id)sender {
    [timer invalidate];
    timer = nil;
    self.labelEstado.text = @"STOP";
}


// ACCION REINICIAR => al darle a este boton se pone el contado a CERO
- (IBAction)reiniciar:(id)sender {
    contadorSeg = 0;
    self.labelContador.text = @"0";
    self.labelEstado.text = @"Le has dado a reiniciar";
}
@end
