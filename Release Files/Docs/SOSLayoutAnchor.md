# SOSLayoutAnchor Class
*This project is supported on Desktop and iOS projects only*

## Methods
**ConstraintEqualToAnchor(anchor as SOSLayoutAnchor, offset as Double = 0.0) As SOSLayoutConstraint**
Creates a constraint equal to another anchor plus an offset

**ConstraintGreaterThanOrEqualToAnchor(anchor as SOSLayoutAnchor, offset as Double = 0.0) As SOSLayoutConstraint**
Creates a constraint greater than or equal to another anchor plus an offset

**ConstraintLessThanOrEqualToAnchor(anchor as SOSLayoutAnchor, offset as Double) As SOSLayoutConstraint**
Creates a constraint less than or equal to another anchor plus an offset

## Properties
**Handle As Ptr (Read Only)**
Pointer to the underlying NSLayoutAnchor

**Attributes( Hidden ) Protected mObj As Ptr**
*Description Missing*

