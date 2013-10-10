//
//  Libro.h
//  Libros
//
//  Created by Rene Cruz Flores on 23/06/10.
//  Copyright 2010 UABC. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Libro : NSObject {
	NSString *titulo;
	NSString *autor;
	NSString *resumen;
}
@property (nonatomic, retain) NSString *titulo;
@property (nonatomic, retain) NSString *autor;
@property (nonatomic, retain) NSString *resumen;
@end
