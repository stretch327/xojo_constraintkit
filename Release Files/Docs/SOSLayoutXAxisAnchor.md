# SOSLayoutXAxisAnchor Class
*This project is supported on Desktop and iOS projects only*

## Methods
**AnchorWithOffsetToAnchor(otherAnchor as SOSLayoutXAxisAnchor) As SOSLayoutDimension**
Creates a layout dimension object from two anchors.

**ConstraintEqualToSystemSpacingAfterAnchor(anchor as SOSLayoutXAxisAnchor, multiplier as Double = 1.0) As SOSLayoutConstraint**
Returns a constraint that defines by how much the current anchor trails the specified anchor.

**ConstraintGreaterThanOrEqualToSystemSpacingAfterAnchor(anchor as SOSLayoutXAxisAnchor, multiplier as Double = 1.0) As SOSLayoutConstraint**
Returns a constraint that defines the minimum amount by which the current anchor trails the specified anchor.

**ConstraintLessThanOrEqualToSystemSpacingAfterAnchor(anchor as SOSLayoutXAxisAnchor, multiplier as Double = 1.0) As SOSLayoutConstraint**
Returns a constraint that defines the maximum amount by which the current anchor trails the specified anchor.

