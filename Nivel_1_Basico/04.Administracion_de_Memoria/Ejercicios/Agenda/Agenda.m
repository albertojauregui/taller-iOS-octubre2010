#import <Foundation/Foundation.h>
#import "Contacto.h"

int main (int argc, const char * argv[]) {
	Contacto *juan = [Contacto new];
	[juan setDatos:@"Juan" emailString:@"algo@server.com" telefonoString:@"123456"];
	[juan imprimeDatos];
	
	[juan release];
    return 0;
}
