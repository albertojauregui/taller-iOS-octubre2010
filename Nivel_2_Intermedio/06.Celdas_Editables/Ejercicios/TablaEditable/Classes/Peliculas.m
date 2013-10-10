//
//  Peliculas.m
//  TablaEditable
//
//  Created by Rene Cruz Flores on 23/06/10.
//  Copyright 2010 UABC. All rights reserved.
//

#import "Peliculas.h"


@implementation Peliculas
@synthesize peliculasArray;

-(void)loadPeliculas{
	peliculasArray = [[NSMutableArray alloc] initWithObjects:@"Matrix", @"Agora", @"Toy Story 3", @"Iron Man 2",nil];
}

-(int) count{
	return [self.peliculasArray count];
}

-(void) addPelicula:(NSString *) newPelicula{
	[peliculasArray addObject:newPelicula];
}

-(void) removePelicula:(int) indice {
	[peliculasArray removeObjectAtIndex:indice];
}

-(NSString *) getPelicula:(int) indice{
	return [peliculasArray objectAtIndex:indice];
}
@end
