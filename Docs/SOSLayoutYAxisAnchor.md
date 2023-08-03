# SOSLayoutYAxisAnchor Class
*This project is supported on Desktop and iOS projects only*

## Methods
**AnchorWithOffsetToAnchor(otherAnchor as SOSLayoutYAxisAnchor) As SOSLayoutDimension**
Creates a layout dimension object from two anchors.

**ConstraintEqualToSystemSpacingBelowAnchor(anchor as SOSLayoutYAxisAnchor, multiplier as Double = 1.0) As SOSLayoutConstraint**
Returns a constraint that defines by how much the current anchor trails the specified anchor.

**ConstraintGreaterThanOrEqualToSystemSpacingBelowAnchor(anchor as SOSLayoutYAxisAnchor, multiplier as Double = 1.0) As SOSLayoutConstraint**
Returns a constraint that defines the minimum amount by which the current anchor trails the specified anchor.

**ConstraintLessThanOrEqualToSystemSpacingBelowAnchor(anchor as SOSLayoutYAxisAnchor, multiplier as Double = 1.0) As SOSLayoutConstraint**
Returns a constraint that defines the maximum amount by which the current anchor trails the specified anchor.

