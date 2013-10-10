//
//  Peliculas.h
//  TablaEditable
//
//  Created by Rene Cruz Flores on 23/06/10.
//  Copyright 2010 UABC. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Peliculas : NSObject {
	
	NSMutableArray *peliculasArray;
}

@property (nonatomic, retain) NSMutableArray *peliculasArray;
-(void) loadPeliculas;
-(int) count;
-(void) addPelicula:(NSString *) newPelicula;
-(void) removePelicula:(int) indice;
-(NSString *) getPelicula:(int) indice;
@end
