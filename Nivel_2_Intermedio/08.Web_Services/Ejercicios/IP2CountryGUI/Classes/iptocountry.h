#import <Foundation/Foundation.h>
#import "USAdditions.h"
#import <libxml/tree.h>
#import "USGlobals.h"
@class iptocountry_FindCountryAsString;
@class iptocountry_FindCountryAsStringResponse;
@class iptocountry_FindCountryAsXml;
@class iptocountry_FindCountryAsXmlResponse;
@class iptocountry_FindCountryAsXmlResult;
@interface iptocountry_FindCountryAsString : NSObject {
	
/* elements */
	NSString * V4IPAddress;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (iptocountry_FindCountryAsString *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * V4IPAddress;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface iptocountry_FindCountryAsStringResponse : NSObject {
	
/* elements */
	NSString * FindCountryAsStringResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (iptocountry_FindCountryAsStringResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * FindCountryAsStringResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface iptocountry_FindCountryAsXml : NSObject {
	
/* elements */
	NSString * V4IPAddress;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (iptocountry_FindCountryAsXml *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * V4IPAddress;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface iptocountry_FindCountryAsXmlResult : NSObject {
	
/* elements */
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (iptocountry_FindCountryAsXmlResult *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
/* attributes */
- (NSDictionary *)attributes;
@end
@interface iptocountry_FindCountryAsXmlResponse : NSObject {
	
/* elements */
	iptocountry_FindCountryAsXmlResult * FindCountryAsXmlResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (iptocountry_FindCountryAsXmlResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) iptocountry_FindCountryAsXmlResult * FindCountryAsXmlResult;
/* attributes */
- (NSDictionary *)attributes;
@end
/* Cookies handling provided by http://en.wikibooks.org/wiki/Programming:WebObjects/Web_Services/Web_Service_Provider */
#import <libxml/parser.h>
#import "xsd.h"
#import "iptocountry.h"
@class iptocountrySoap;
@class iptocountrySoap12;
@interface iptocountry : NSObject {
	
}
+ (iptocountrySoap *)iptocountrySoap;
+ (iptocountrySoap12 *)iptocountrySoap12;
@end
@class iptocountrySoapResponse;
@class iptocountrySoapOperation;
@protocol iptocountrySoapResponseDelegate <NSObject>
- (void) operation:(iptocountrySoapOperation *)operation completedWithResponse:(iptocountrySoapResponse *)response;
@end
@interface iptocountrySoap : NSObject <iptocountrySoapResponseDelegate> {
	NSURL *address;
	NSTimeInterval defaultTimeout;
	NSMutableArray *cookies;
	BOOL logXMLInOut;
	BOOL synchronousOperationComplete;
	NSString *authUsername;
	NSString *authPassword;
}
@property (copy) NSURL *address;
@property (assign) BOOL logXMLInOut;
@property (assign) NSTimeInterval defaultTimeout;
@property (nonatomic, retain) NSMutableArray *cookies;
@property (nonatomic, retain) NSString *authUsername;
@property (nonatomic, retain) NSString *authPassword;
- (id)initWithAddress:(NSString *)anAddress;
- (void)sendHTTPCallUsingBody:(NSString *)body soapAction:(NSString *)soapAction forOperation:(iptocountrySoapOperation *)operation;
- (void)addCookie:(NSHTTPCookie *)toAdd;
- (iptocountrySoapResponse *)FindCountryAsStringUsingParameters:(iptocountry_FindCountryAsString *)aParameters ;
- (void)FindCountryAsStringAsyncUsingParameters:(iptocountry_FindCountryAsString *)aParameters  delegate:(id<iptocountrySoapResponseDelegate>)responseDelegate;
- (iptocountrySoapResponse *)FindCountryAsXmlUsingParameters:(iptocountry_FindCountryAsXml *)aParameters ;
- (void)FindCountryAsXmlAsyncUsingParameters:(iptocountry_FindCountryAsXml *)aParameters  delegate:(id<iptocountrySoapResponseDelegate>)responseDelegate;
@end
@interface iptocountrySoapOperation : NSOperation {
	iptocountrySoap *binding;
	iptocountrySoapResponse *response;
	id<iptocountrySoapResponseDelegate> delegate;
	NSMutableData *responseData;
	NSURLConnection *urlConnection;
}
@property (retain) iptocountrySoap *binding;
@property (readonly) iptocountrySoapResponse *response;
@property (nonatomic, assign) id<iptocountrySoapResponseDelegate> delegate;
@property (nonatomic, retain) NSMutableData *responseData;
@property (nonatomic, retain) NSURLConnection *urlConnection;
- (id)initWithBinding:(iptocountrySoap *)aBinding delegate:(id<iptocountrySoapResponseDelegate>)aDelegate;
@end
@interface iptocountrySoap_FindCountryAsString : iptocountrySoapOperation {
	iptocountry_FindCountryAsString * parameters;
}
@property (retain) iptocountry_FindCountryAsString * parameters;
- (id)initWithBinding:(iptocountrySoap *)aBinding delegate:(id<iptocountrySoapResponseDelegate>)aDelegate
	parameters:(iptocountry_FindCountryAsString *)aParameters
;
@end
@interface iptocountrySoap_FindCountryAsXml : iptocountrySoapOperation {
	iptocountry_FindCountryAsXml * parameters;
}
@property (retain) iptocountry_FindCountryAsXml * parameters;
- (id)initWithBinding:(iptocountrySoap *)aBinding delegate:(id<iptocountrySoapResponseDelegate>)aDelegate
	parameters:(iptocountry_FindCountryAsXml *)aParameters
;
@end
@interface iptocountrySoap_envelope : NSObject {
}
+ (iptocountrySoap_envelope *)sharedInstance;
- (NSString *)serializedFormUsingHeaderElements:(NSDictionary *)headerElements bodyElements:(NSDictionary *)bodyElements;
@end
@interface iptocountrySoapResponse : NSObject {
	NSArray *headers;
	NSArray *bodyParts;
	NSError *error;
}
@property (retain) NSArray *headers;
@property (retain) NSArray *bodyParts;
@property (retain) NSError *error;
@end
@class iptocountrySoap12Response;
@class iptocountrySoap12Operation;
@protocol iptocountrySoap12ResponseDelegate <NSObject>
- (void) operation:(iptocountrySoap12Operation *)operation completedWithResponse:(iptocountrySoap12Response *)response;
@end
@interface iptocountrySoap12 : NSObject <iptocountrySoap12ResponseDelegate> {
	NSURL *address;
	NSTimeInterval defaultTimeout;
	NSMutableArray *cookies;
	BOOL logXMLInOut;
	BOOL synchronousOperationComplete;
	NSString *authUsername;
	NSString *authPassword;
}
@property (copy) NSURL *address;
@property (assign) BOOL logXMLInOut;
@property (assign) NSTimeInterval defaultTimeout;
@property (nonatomic, retain) NSMutableArray *cookies;
@property (nonatomic, retain) NSString *authUsername;
@property (nonatomic, retain) NSString *authPassword;
- (id)initWithAddress:(NSString *)anAddress;
- (void)sendHTTPCallUsingBody:(NSString *)body soapAction:(NSString *)soapAction forOperation:(iptocountrySoap12Operation *)operation;
- (void)addCookie:(NSHTTPCookie *)toAdd;
- (iptocountrySoap12Response *)FindCountryAsStringUsingParameters:(iptocountry_FindCountryAsString *)aParameters ;
- (void)FindCountryAsStringAsyncUsingParameters:(iptocountry_FindCountryAsString *)aParameters  delegate:(id<iptocountrySoap12ResponseDelegate>)responseDelegate;
- (iptocountrySoap12Response *)FindCountryAsXmlUsingParameters:(iptocountry_FindCountryAsXml *)aParameters ;
- (void)FindCountryAsXmlAsyncUsingParameters:(iptocountry_FindCountryAsXml *)aParameters  delegate:(id<iptocountrySoap12ResponseDelegate>)responseDelegate;
@end
@interface iptocountrySoap12Operation : NSOperation {
	iptocountrySoap12 *binding;
	iptocountrySoap12Response *response;
	id<iptocountrySoap12ResponseDelegate> delegate;
	NSMutableData *responseData;
	NSURLConnection *urlConnection;
}
@property (retain) iptocountrySoap12 *binding;
@property (readonly) iptocountrySoap12Response *response;
@property (nonatomic, assign) id<iptocountrySoap12ResponseDelegate> delegate;
@property (nonatomic, retain) NSMutableData *responseData;
@property (nonatomic, retain) NSURLConnection *urlConnection;
- (id)initWithBinding:(iptocountrySoap12 *)aBinding delegate:(id<iptocountrySoap12ResponseDelegate>)aDelegate;
@end
@interface iptocountrySoap12_FindCountryAsString : iptocountrySoap12Operation {
	iptocountry_FindCountryAsString * parameters;
}
@property (retain) iptocountry_FindCountryAsString * parameters;
- (id)initWithBinding:(iptocountrySoap12 *)aBinding delegate:(id<iptocountrySoap12ResponseDelegate>)aDelegate
	parameters:(iptocountry_FindCountryAsString *)aParameters
;
@end
@interface iptocountrySoap12_FindCountryAsXml : iptocountrySoap12Operation {
	iptocountry_FindCountryAsXml * parameters;
}
@property (retain) iptocountry_FindCountryAsXml * parameters;
- (id)initWithBinding:(iptocountrySoap12 *)aBinding delegate:(id<iptocountrySoap12ResponseDelegate>)aDelegate
	parameters:(iptocountry_FindCountryAsXml *)aParameters
;
@end
@interface iptocountrySoap12_envelope : NSObject {
}
+ (iptocountrySoap12_envelope *)sharedInstance;
- (NSString *)serializedFormUsingHeaderElements:(NSDictionary *)headerElements bodyElements:(NSDictionary *)bodyElements;
@end
@interface iptocountrySoap12Response : NSObject {
	NSArray *headers;
	NSArray *bodyParts;
	NSError *error;
}
@property (retain) NSArray *headers;
@property (retain) NSArray *bodyParts;
@property (retain) NSError *error;
@end
