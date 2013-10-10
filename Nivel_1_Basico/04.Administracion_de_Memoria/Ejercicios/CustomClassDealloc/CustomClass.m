#import <Foundation/Foundation.h>
#import "Persona.h"

int main (int argc, const char * argv[]) {

	Persona *juan = [[Persona alloc] init];
	[juan setNombre:@"Juan"];
	
	Persona *ana = [Persona new];
	[ana setNombre:@"Ana"];
	
	[juan saludar];
	[ana saludar];
	
	[juan release];
	[ana release];
	return 0;
}
