# SOSLayoutConstraint Class
*This project is supported on iOS projects Only*

## Methods
**Constructor(item1 as ptr, attr1 as LayoutAttributes, relation as relations, offset as Double)**
**Constructor(item1 as ptr, attr1 as LayoutAttributes, relation as relations, item2 as ptr, attr2 as LayoutAttributes, multiplier as Double = 1.0, offset as Double = 0.0)**
**Constructor(item1 as ptr, item2 as ptr, attr as LayoutAttributes, relation as Relations = Relations.Equal)**
Creates a new constraint given the two items, the linked attribute, a relation and an offset constant.

**Deprioritize()**
Sets the priority of the constraint to its inactive priority (1.0)

**Prioritize()**
Sets the priority of the constraint to its active priority

**Priority(assigns value as Priorities)**
Sets the constraint priority using the Priorities enumeration

**Release()**
Releases the underlying NSLayoutConstraint

**SetActive(value as boolean) As SOSLayoutConstraint**
Sets the constraint to Active and returns the constraint

**TogglePriority()**
Toggles the priority between its active and inactive values

## Properties
**Active As Boolean**
The Active status of the constraint

**FirstAnchor As SOSLayoutAnchor (Read Only)**
The first anchor of the constraint

**FirstAttribute As LayoutAttributes (Read Only)**
The first attribute for the constraint

**FirstItem As Ptr (Read Only)**
Pointer to the first item of the constraint

**Handle As ptr (Read Only)**
Pointer to the underlying NSLayoutConstraint

**Identifier As String**
Returns the identifier for the constraint

**Multiplier As Double (Read Only)**
The multiplier for the constraint

**Offset As Double**
The offset constant of the constraint

**Priority As Double**
The priority of the constraint

**relation As Relations (Read Only)**
The  relationship for the constraint

**SecondAnchor As SOSLayoutAnchor (Read Only)**
The second anchor of the constraint

**SecondAttribute As LayoutAttributes (Read Only)**
The second attribute of the constraint

**SecondItem As Ptr (Read Only)**
Pointer to the second item of the constraint

## Enums
**Enumeration LayoutAttributes**
The different Layout Attributes
Absolute = 0
NotAnAttribute = 0
Left = 1
Right = 2
Top = 3
Bottom = 4
Leading = 5
Trailing = 6
Width = 7
Height = 8
CenterX = 9
CenterY = 10
LastBaseline = 11
FirstBaseline = 12
LeftMargin = 13
RIghtMargin = 14
TopMargin = 15
BottomMargin = 16
LeadingMargin = 17
TrailingMargin = 18
CenterXWithinMargins = 19
CenterYWithinMargins = 20

**Enumeration Relations**
The relationships for constraint construction
LessThanOrEqual = -1
Equal = 0
GreaterThanOrEqual = 1

