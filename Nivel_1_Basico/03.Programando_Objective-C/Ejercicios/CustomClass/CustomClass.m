#import <Foundation/Foundation.h>
#import "Persona.h"

int main (int argc, const char * argv[]) {

	Persona *juan = [Persona new];
	[juan setDatos:@"Juan" Edad:33];
	
	Persona *ana = [Persona new];
	[ana setDatos:@"Ana" Edad:20];
	
	[juan saludar];
	[ana saludar];
    return 0;
}
