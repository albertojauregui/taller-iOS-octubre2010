//
//  XMLParserViewController.h
//  XMLParser
//
//  Created by Rene Cruz Flores on 23/06/10.
//  Copyright UABC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XMLParserViewController : UIViewController <NSXMLParserDelegate>{
	NSMutableString *currentElementValue;
	NSMutableArray *titulos;
	IBOutlet UITextView *texto;
}
@property (nonatomic, retain) UITextView *texto;
-(IBAction) leerXML;
- (void)parseXMLFileAtURL:(NSString *)URL;
@end

