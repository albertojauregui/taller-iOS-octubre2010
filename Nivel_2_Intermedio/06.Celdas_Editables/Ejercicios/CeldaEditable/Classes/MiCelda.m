//
//  MiCelda.m
//  CeldaEditable
//
//  Created by Rene Cruz Flores on 24/06/10.
//  Copyright 2010 UABC. All rights reserved.
//

#import "MiCelda.h"

@implementation MiCelda
@synthesize txtCaja, celdaIndexPath, controlador;

- (id)initWithFrame:(CGRect)frame reuseIdentifier:(NSString *)reuseIdentifier {
    //if (self = [super initWithFrame:frame reuseIdentifier:reuseIdentifier]) {
	if (self = [super initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseIdentifier]) {
        // Initialization code
		txtCaja = [[UITextField alloc] initWithFrame:CGRectMake(6, 10, 290, 30)];
		txtCaja.enabled = NO;
		[self.contentView addSubview:txtCaja];
    }
    return self;
}

- (UITableViewCellSelectionStyle)selectionStyle //Marcamos la celda como no editable
{
	return UITableViewCellSelectionStyleGray;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
	txtCaja.enabled = editing;
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
	[controlador updateText:textField.text atIndexPath:celdaIndexPath];
}

- (void)dealloc {
    [super dealloc];
}


@end
