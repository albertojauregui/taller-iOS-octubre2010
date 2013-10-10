#import <Foundation/Foundation.h>
#import "USAdditions.h"
#import <libxml/tree.h>
#import "USGlobals.h"
@class NumberConversion_NumberToWords;
@class NumberConversion_NumberToWordsResponse;
@class NumberConversion_NumberToDollars;
@class NumberConversion_NumberToDollarsResponse;
@interface NumberConversion_NumberToWords : NSObject {
	
/* elements */
	NSNumber * ubiNum;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (NumberConversion_NumberToWords *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSNumber * ubiNum;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface NumberConversion_NumberToWordsResponse : NSObject {
	
/* elements */
	NSString * NumberToWordsResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (NumberConversion_NumberToWordsResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * NumberToWordsResult;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface NumberConversion_NumberToDollars : NSObject {
	
/* elements */
	NSNumber * dNum;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (NumberConversion_NumberToDollars *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSNumber * dNum;
/* attributes */
- (NSDictionary *)attributes;
@end
@interface NumberConversion_NumberToDollarsResponse : NSObject {
	
/* elements */
	NSString * NumberToDollarsResult;
/* attributes */
}
- (NSString *)nsPrefix;
- (xmlNodePtr)xmlNodeForDoc:(xmlDocPtr)doc elementName:(NSString *)elName elementNSPrefix:(NSString *)elNSPrefix;
- (void)addAttributesToNode:(xmlNodePtr)node;
- (void)addElementsToNode:(xmlNodePtr)node;
+ (NumberConversion_NumberToDollarsResponse *)deserializeNode:(xmlNodePtr)cur;
- (void)deserializeAttributesFromNode:(xmlNodePtr)cur;
- (void)deserializeElementsFromNode:(xmlNodePtr)cur;
/* elements */
@property (retain) NSString * NumberToDollarsResult;
/* attributes */
- (NSDictionary *)attributes;
@end
/* Cookies handling provided by http://en.wikibooks.org/wiki/Programming:WebObjects/Web_Services/Web_Service_Provider */
#import <libxml/parser.h>
#import "xsd.h"
#import "NumberConversion.h"
@class NumberConversionSoapBinding;
@interface NumberConversion : NSObject {
	
}
+ (NumberConversionSoapBinding *)NumberConversionSoapBinding;
@end
@class NumberConversionSoapBindingResponse;
@class NumberConversionSoapBindingOperation;
@protocol NumberConversionSoapBindingResponseDelegate <NSObject>
- (void) operation:(NumberConversionSoapBindingOperation *)operation completedWithResponse:(NumberConversionSoapBindingResponse *)response;
@end
@interface NumberConversionSoapBinding : NSObject <NumberConversionSoapBindingResponseDelegate> {
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
- (void)sendHTTPCallUsingBody:(NSString *)body soapAction:(NSString *)soapAction forOperation:(NumberConversionSoapBindingOperation *)operation;
- (void)addCookie:(NSHTTPCookie *)toAdd;
- (NumberConversionSoapBindingResponse *)NumberToWordsUsingParameters:(NumberConversion_NumberToWords *)aParameters ;
- (void)NumberToWordsAsyncUsingParameters:(NumberConversion_NumberToWords *)aParameters  delegate:(id<NumberConversionSoapBindingResponseDelegate>)responseDelegate;
- (NumberConversionSoapBindingResponse *)NumberToDollarsUsingParameters:(NumberConversion_NumberToDollars *)aParameters ;
- (void)NumberToDollarsAsyncUsingParameters:(NumberConversion_NumberToDollars *)aParameters  delegate:(id<NumberConversionSoapBindingResponseDelegate>)responseDelegate;
@end
@interface NumberConversionSoapBindingOperation : NSOperation {
	NumberConversionSoapBinding *binding;
	NumberConversionSoapBindingResponse *response;
	id<NumberConversionSoapBindingResponseDelegate> delegate;
	NSMutableData *responseData;
	NSURLConnection *urlConnection;
}
@property (retain) NumberConversionSoapBinding *binding;
@property (readonly) NumberConversionSoapBindingResponse *response;
@property (nonatomic, assign) id<NumberConversionSoapBindingResponseDelegate> delegate;
@property (nonatomic, retain) NSMutableData *responseData;
@property (nonatomic, retain) NSURLConnection *urlConnection;
- (id)initWithBinding:(NumberConversionSoapBinding *)aBinding delegate:(id<NumberConversionSoapBindingResponseDelegate>)aDelegate;
@end
@interface NumberConversionSoapBinding_NumberToWords : NumberConversionSoapBindingOperation {
	NumberConversion_NumberToWords * parameters;
}
@property (retain) NumberConversion_NumberToWords * parameters;
- (id)initWithBinding:(NumberConversionSoapBinding *)aBinding delegate:(id<NumberConversionSoapBindingResponseDelegate>)aDelegate
	parameters:(NumberConversion_NumberToWords *)aParameters
;
@end
@interface NumberConversionSoapBinding_NumberToDollars : NumberConversionSoapBindingOperation {
	NumberConversion_NumberToDollars * parameters;
}
@property (retain) NumberConversion_NumberToDollars * parameters;
- (id)initWithBinding:(NumberConversionSoapBinding *)aBinding delegate:(id<NumberConversionSoapBindingResponseDelegate>)aDelegate
	parameters:(NumberConversion_NumberToDollars *)aParameters
;
@end
@interface NumberConversionSoapBinding_envelope : NSObject {
}
+ (NumberConversionSoapBinding_envelope *)sharedInstance;
- (NSString *)serializedFormUsingHeaderElements:(NSDictionary *)headerElements bodyElements:(NSDictionary *)bodyElements;
@end
@interface NumberConversionSoapBindingResponse : NSObject {
	NSArray *headers;
	NSArray *bodyParts;
	NSError *error;
}
@property (retain) NSArray *headers;
@property (retain) NSArray *bodyParts;
@property (retain) NSError *error;
@end
