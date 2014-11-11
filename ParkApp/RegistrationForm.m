//
//  RegistrationForm.m
//  BasicExample
//
//  Created by Nick Lockwood on 04/03/2014.
//  Copyright (c) 2014 Charcoal Design. All rights reserved.
//

#import "RegistrationForm.h"


@implementation RegistrationForm

//because we want to rearrange how this form
//is displayed, we've implemented the fields array
//which lets us dictate exactly which fields appear
//and in what order they appear

- (NSArray *)fields
{
    return @[
             
             //we want to add a group header for the field set of fields
             //we do that by adding the header key to the first field in the group
             
             @{FXFormFieldKey: @"email", FXFormFieldHeader: @"Account"},
             
             //we don't need to modify these fields at all, so we'll
             //just refer to them by name to use the default settings
             
             @"password",
             @"confirm password",
             
             //we want to add another group header here, and modify the auto-capitalization
             
             @{FXFormFieldKey: @"name", FXFormFieldHeader: @"Personal Details",
               @"textField.autocapitalizationType": @(UITextAutocapitalizationTypeWords)},
             
             //this is a multiple choice field, so we'll need to provide some options
             //because this is an enum property, the indexes of the options should match enum values
             
             //another regular field
             
             //we want to use a stepper control for this value, so let's specify that
             
             //some more regular fields
             @"phone",
             
             //this is an options field that uses a FXFormOptionPickerCell to display the available
             //options in a UIPickerView
             
             @{FXFormFieldKey: @"Car name", FXFormFieldHeader: @"Car Details",
               @"textField.autocapitalizationType": @(UITextAutocapitalizationTypeWords)},
             
             @"Car model",
             @"Car color",
             
             //this is a multi-select options field - FXForms knows this because the
             //class of the field property is a collection (in this case, NSArray)
             
             //this is another multi-select options field, but in this case it's represented
             //as a bitfield. FXForms can't infer this from the property (which is just an integer), so
             //we explicitly specify the type as FXFormFieldTypeBitfield


             //this is a multiline text view that grows to fit its contents
             
             //this is an options field that uses a FXFormOptionSegmentsCell to display the available
             //options in a UIPickerView
             //we want to add a section header here, so we use another config dictionary
             
             
             //another regular field. note that we haven't actually instantiated the terms
             //and conditions or privacy policy view controllers - FXForms will instantiate
             //view controllers automatically if the value is nil, or will used the supplied
             //controller instance if there is one
             
             
             //the automatically generated title (Agreed To Terms) and cell (FXFormSwitchCell)
             //don't really work for this field, so we'll override them both (a type of
             //FXFormFieldTypeOption will use an checkmark instead of a switch by default)
             
             //this field doesn't correspond to any property of the form
             //it's just an action button. the action will be called on first
             //object in the responder chain that implements the submitForm
             //method, which in this case would be the AppDelegate
             
             @{FXFormFieldTitle: @"Submit", FXFormFieldHeader: @"", FXFormFieldAction: @"submitRegistrationForm:"},
             
             ];
}

@end
