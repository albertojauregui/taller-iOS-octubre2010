//
//  MVCSampleViewController.h
//  MVCSample
//
//  Created by Rene Cruz Flores on 16/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MVCSampleViewController : UIViewController {
	IBOutlet UILabel *lblDestino;
	IBOutlet UITextField *txtOrigen;
}

@property (nonatomic, retain) UILabel *lblDestino;
@property (nonatomic, retain) UITextField *txtOrigen;
- (IBAction)leerTexto;
- (IBAction)quitarTeclado;
@end

