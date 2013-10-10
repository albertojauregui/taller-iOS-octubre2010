#import <Foundation/Foundation.h>
#import "Persona.h"

int main (int argc, const char * argv[]) {

	Persona *juan = [Persona new];
	[juan setNombre:@"Juan" edad:20];
	
	Persona *ana = [Persona new];
	[ana setNombre:@"Ana" edad:15];
	
	[juan saludar];
	[ana saludar];
    return 0;
}
