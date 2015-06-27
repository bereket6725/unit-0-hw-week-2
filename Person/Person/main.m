//
//  main.m
//  Person
//
//  Created by Michael Kavouras on 6/21/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person: NSObject

- (void)setName:(NSString *)name;
- (NSString *)name;

- (void)setCity:(NSString *)city;
- (NSString *)city;

- (void)setPhoneNumber:(NSString *)phoneNumber;
- (NSString *)phoneNumber;

@end

@implementation Person {
    NSString *_name;
    NSString *_phoneNumber;
    NSString *_city;
}

- (void)setName:(NSString *)newName {
    _name = newName;
}

- (NSString *)name {
    return _name;
}

- (void)setCity:(NSString *)city {
    _city = city;
}

- (NSString *)city {
    return _city;
}

- (void)setPhoneNumber:(NSString *)phoneNumber {
    _phoneNumber = phoneNumber;
}

- (NSString *)phoneNumber {
    return _phoneNumber;
}

- (void)setNameToThisPersonsName:(Person *)otherPerson {
    
    otherPerson.name =_name;
    
}



- (NSString *)returnName: (Person *)otherPerson{
    
    return  otherPerson.name;
}

- (BOOL)checkSameCity: (Person *)stranger{
    
    BOOL isSameCity = [stranger.city isEqualToString: _city];
    
    return isSameCity;
}




@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {

        //create sarah & set properties!!
        Person *sarah = [[Person alloc] init];
        [sarah setCity:@"Sao Paolo"];
        [sarah setName:@"Sarah"];
        
    
        //create Bereket & set properties!!
        Person *Bereket= [[Person alloc] init];
        [Bereket setCity:@"New York"];
        [Bereket setName:@"Potatoe Salad"];
        
        //call methods to check if we from the same hood
        BOOL comparableNotReally = [Bereket checkSameCity:sarah];
        
    
        NSLog(@"%hhd",comparableNotReally);
        
        [Bereket setNameToThisPersonsName:sarah];
        
        NSString *returnedName = [sarah returnName:sarah];
        
        NSLog(@"%@", [sarah name]);
        
    }
    return 0;
}
