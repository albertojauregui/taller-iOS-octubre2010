#import <Foundation/Foundation.h>
#import "Saludar.h"

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	int temperatura = 40;
	NSString *ciudad = @"Mexicali";
	NSDate *today = [NSDate date];
	
	
	NSLog(@"Hoy %@, en %@ la temperatura es de %d grados!", today, ciudad, temperatura);
	
	Saludar *saludo = [[Saludar alloc] init];
	
	[saludo	saludar:@"Juan" idEdad:23];
	[saludo saludar:@"Changuito López" idEdad:20];	

	
    [pool drain];
    return 0;
}

