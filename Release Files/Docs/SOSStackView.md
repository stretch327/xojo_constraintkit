# SOSStackView Class

*This project is supported on iOS projects Only*	

## Methods
**AddArrangedSubview(view as MobileUIControl)**
Adds a view to the stack

**CustomSpacingAfterView(view as MobileUIControl, assigns value as double)**
Sets the spacing after the specified view to the specified distance

**CustomSpacingAfterViewAt(index as integer, assigns value as Double)**
Sets the spacing after the view at the specified inex to the specified distance

**Handle() As Ptr**
*Description Missing*

**InsertArrangedSubviewAt(view as MobileUIControl, index as integer)**
Inserts a view into the stack at the specified index

**RemoveArrangedSubview(view as MobileUIControl)**
Removes the specified view from the stack

**RemoveArrangedSubviewAt(index as integer)**
Removes the view at the specified index from the stack

**ScrollViewHandle() As Ptr**
Returns a pointer to the underlying UIStackView

## Properties
**Alignment As Alignments**
Alignment of views within the StackView

**BaselineRelativeArrangement As Boolean**
Whether or not Baseline Relative Arrangement is being used.

**Direction As Axis**
The direction of the Stack View

**Distribution As Distributions**
The distribution of the StackView

**LayoutMarginsRelativeArrangement As Boolean**
Whether or not the Stack View is using Layout Margins Relative Alignment

**ScrollAreaHeight As Double (Read Only)**
The Height of the scroll area

**ScrollAreaWidth As Double (Read Only)**
The Width of the scroll area

**ScrollEnabled As Boolean**
Whether or not the view is scrollable

**Spacing As Double**
The spacing between the contained views

## Enums
**Enumeration Alignments**
Defines the alignments for items in the StackView
Fill = 0
Center = 1
Leading = 2
Trailing = 3
Top = 4
Bottom = 5
FirstBaseline = 6
LastBaseline = 7

**Enumeration Distributions**
Defines the distribution type for the items in the StackView
Fill = 0
FillEqually = 1
FillProportionally = 2
EqualSpacing = 3
EqualCentering = 4

