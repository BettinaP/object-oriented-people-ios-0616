//
//  FISPerson.m
//  ObjectOrientedPeople
//
//  Created by Bettina on 6/14/16.
//  Copyright © 2016 al-tyus.com. All rights reserved.
//

#import "FISPerson.h"

@interface FISPerson ()

@property (strong, nonatomic,readwrite) NSString *name;

@property (nonatomic, readwrite) NSUInteger ageInYears;

@property (nonatomic, readwrite) NSUInteger heightInInches;

@property (strong, nonatomic, readwrite) NSMutableArray *skills;

@end

@implementation FISPerson


-(instancetype)init{
    self = [self  initWithName:@"Bettina"// @"Mark"
                  ageInYears: 29
                  heightInInches:67 //71];
            ];
    return self;
}


-(instancetype)initWithName:(NSString*)name ageInYears:(NSUInteger)ageInYears{
    self = [self  initWithName: name
                  ageInYears: ageInYears
                  heightInInches:67];
    return self;
}


-(instancetype)initWithName:(NSString*)name ageInYears:(NSUInteger)ageInYears heightInInches:(NSUInteger)heightInInches{
    self = [super init];
    
    if(self) {
        _name = name;
        _ageInYears = ageInYears;
        _heightInInches = heightInInches;
        _skills = [[NSMutableArray alloc]init];
    }
    
    return self;
}


-(NSString *)celebrateBirthday{
    
    self.ageInYears ++;
    
    
    NSString *newAge = [NSString stringWithFormat:@"HAPPY %lu%@ BIRTHDAY, %@!!!", self.ageInYears, [[self ordinalForInteger:self.ageInYears] uppercaseString],self.name.uppercaseString]; //or can do uppercaseString entire thing
    
    NSLog(@"%@",newAge);
    
    return newAge;
    
    return nil;
}


- (NSString *)ordinalForInteger:(NSUInteger) integer { //helper method
        NSString *ordinal = @"th";
        if (integer % 10 == 1 && integer % 100 != 11) {
            ordinal = @"st";
        } else if (integer % 10 == 2 && integer % 100 != 12) {
            ordinal = @"nd";
        } else if (integer % 10 == 3 && integer % 100 != 13) {
            ordinal = @"rd";
        }
        return ordinal;
}



-(void)learnSkillBash{
    if(![self.skills containsObject:@"bash"]){
        [self.skills addObject:@"bash"];
    }
}

-(void)learnSkillXcode {
    
    if(![self.skills containsObject:@"Xcode"]){
        [self.skills addObject:@"Xcode"];
    }
}


-(void)learnSkillObjectiveC{
    if(![self.skills containsObject:@"Objective-C"]){
        [self.skills addObject:@"Objective-C"];
    }
}



-(void)learnSkillObjectOrientedProgramming{
    if(![self.skills containsObject:@"Object-Oriented Programming"]){
        [self.skills addObject:@"Object-Oriented Programming"];
    }
}


-(void)learnSkillInterfaceBuilder {
    
    if(![self.skills containsObject:@"Interface Builder"]){
        [self.skills addObject:@"Interface Builder"];
    }
}

-(BOOL)isQualifiedTutor{
    
    if(_skills.count >=4){
        return YES;
    }else {
        return NO;
    }
}

@end
