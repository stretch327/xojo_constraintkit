# SOSLayoutConstraintSet Class
*This project is supported on Desktop and iOS projects only*

## Methods
**AddConstraint(c as SOSLayoutConstraint)**
Adds the specified constraint to the set and sets its Active status to that of the set

**ConstraintAtIndex(index as integer) As SOSLayoutConstraint**
Returns the constraint at the specified index

**Constructor(active as Boolean)**
Creates a new constraint set and sets the active status

**RemoveAll()**
Removes all constraints from the set

**RemoveConstraint(c as SOSLayoutConstraint)**
Removes the specified constraint from the set

**RemoveConstraintAt(index as integer)**
Removes the constraint at the specified index from the set

## Properties
**Active As Boolean**
The Active state of all contained constraints. This property also affects any constraints that are added to the set.

