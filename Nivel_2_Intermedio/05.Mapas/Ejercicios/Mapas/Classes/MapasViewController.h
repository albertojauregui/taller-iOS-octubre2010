//
//  MapasViewController.h
//  Mapas
//
//  Created by Rene Cruz Flores on 23/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface MapasViewController : UIViewController {
	IBOutlet MKMapView *mapa;
	IBOutlet UISegmentedControl *funcionMapa;
}
@property (nonatomic, retain) MKMapView *mapa;
@property (nonatomic, retain) UISegmentedControl*funcionMapa;
-(CLLocationCoordinate2D) addressLocation;

- (IBAction) cambiaVistaMapa;
@end

