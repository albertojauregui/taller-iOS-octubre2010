#import <Foundation/Foundation.h>
#import "Persona.h"
int main (int argc, const char * argv[]) {
	
	Persona *juan = [[Persona alloc] init];
	[juan setDatos:30 nombre:@"Juan Jose"];
	[juan verInfo];
	[juan release];
	
	Persona *ana = [[Persona alloc] init];
	[ana setDatos:18 nombre:@"Ana Luisa"];
	[ana verInfo];
	[ana  release];
	
	//Por alguna razon...
	[juan release]; 
	
	return 0;
}
