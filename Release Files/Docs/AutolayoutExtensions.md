# AutolayoutExtensions Module
*This project is supported on iOS projects Only*

## Methods
**AddConstraint(extends screen as MobileScreen, constraint as SOSLayoutConstraint)**
**AddConstraint(extends control as MobileUIControl, constraint as SOSLayoutConstraint)**
Adds an SOSLayoutConstraint to the MobileScreen or MobileUIControl

**AddConstraints(extends view as MobileScreen, constraints() as SOSLayoutConstraint)**
**AddConstraints(extends view as MobileScreen, constraints() as SOSLayoutConstraint, priority as Double)**
**AddConstraints(extends view as MobileUIControl, constraints() as SOSLayoutConstraint)**
**AddConstraints(extends view as MobileUIControl, constraints() as SOSLayoutConstraint, priority as Double)**
Adds an array of SOSLayoutConstraints to the MobileScreen

**CompressionResistancePriorityForAxis(Extends item as MobileUIControl, axis as SOSConstraintKit.Axis) As Double**
**CompressionResistancePriorityForAxis(Extends item as MobileUIControl, axis as SOSConstraintKit.Axis, assigns priority as double)**
Gets or Sets the Compression Resistance priority for the specified Axis

**ConstraintForControlAttribute(extends view as MobileScreen, ctl as mobileUIControl, attr as SOSLayoutConstraint.LayoutAttributes) As SOSLayoutConstraint**
**ConstraintForControlAttribute(extends ctl as mobileUIControl, attr as SOSLayoutConstraint.LayoutAttributes) As SOSLayoutConstraint**
Gets a constraint for a particular attribute

**ConstraintMatchingIntrinsicHeight(extends view as MobileUIControl) As SOSLayoutConstraint**
Creates and returns an intrinsic height constraint for the specified control

**ConstraintMatchingIntrinsicWidth(extends view as MobileUIControl) As SOSLayoutConstraint**
Creates and returns an intrinsic width constraint for the specified control

**Constraints(extends screen as MobileScreen) As SOSLayoutConstraint()**
**Constraints(extends control as MobileUIControl) As SOSLayoutConstraint()**
Returns all of the constraints within the specified MobileScreen

**ConstraintsForControl(Extends view as MobileScreen, control as MobileUIControl) As SOSLayoutConstraint()**
Returns all constraints which pertain to the specified control on a view

**ConvertConstraintsForAllControls(extends view as MobileScreen, newPriority as Double)**
Converts all constraints on a particular MobileScreen to SOSLayoutConstraints, changing them all to a particular priority

**ConvertConstraintsForControl(extends view as MobileScreen, item as MobileUIControl, newPriority as Double = 0)**
**ConvertConstraintsForControl(extends view as MobileScreen, item as MobileUIControl, newPriority as SOSConstraintKit.Priorities)**
Converts all constraints for a specific MobileUIControl on a particular MobileScreen to SOSLayoutConstraints, changing them all to a particular Priority

**DirectionalLayoutMargins(Extends view as MobileScreen) As NSDirectionalEdgeInsets**
**DirectionalLayoutMargins(Extends view as MobileScreen, assigns value as NSDirectionalEdgeInsets)**
**DirectionalLayoutMargins(Extends view as MobileUIControl) As NSDirectionalEdgeInsets**
**DirectionalLayoutMargins(Extends view as MobileUIControl, assigns value as NSDirectionalEdgeInsets)**
Gets or Sets the directional edge insets for the specified view or control

**FirstBaselineOffset(extends view as MobileTextControl) As Double**
Gets the offset for the first baseline of a MobileTextControl based on its current font

**HuggingPriorityForAxis(Extends item as MobileUIControl, axis as SOSConstraintKit.Axis) As Double**
**HuggingPriorityForAxis(Extends item as MobileUIControl, Axis as SOSConstraintKit.Axis, assigns priority as Double)**
Gets or Sets the Hugging Priority for the specified axis

**InsetsLayoutMarginsFromSafeArea(extends view as MobileUIControl) As Boolean**
**InsetsLayoutMarginsFromSafeArea(extends view as MobileUIControl, assigns value as Boolean)**
Gets or Sets whether the layout margins are inset from the safe area

**IntrinsicContentSize(extends view as MobileUIControl) As Size**
Gets the Intrinsic content size for a control

**InvalidateIntrinsicContentSize(extends view as MobileUIControl)**
Invalidates the intrinsic content size for a control

**LayoutIfNeeded(extends view as MobileScreen)**
Asks the view to update its layout

**LayoutMargins(extends view as MobileScreen) As UIEdgeInsets**
**LayoutMargins(extends view as MobileScreen, assigns value as UIEdgeInsets)**
**LayoutMargins(extends view as MobileUIControl) As UIEdgeInsets**
**LayoutMargins(extends view as MobileUIControl, assigns value as UIEdgeInsets)**
Sets or gets the layout margins for the specified view or control

**PreservesSuperviewLayoutMargins(extends view as MobileUIControl) As Boolean**
**PreservesSuperviewLayoutMargins(extends view as MobileUIControl, assigns value as boolean)**
Whether or not the control preserves its superview's layout margins

**RecreateConstraintsForAllControls(extends view as mobilescreen)**
**RecreateConstraintsForAllControls(extends view As mobilescreen, newPriority As Double)**
Recreates the constraints for a particular screen as SOSLayoutConstraints, optionally with a specified priority.

**RemoveConstraint(extends screen as MobileScreen, constraint as SOSLayoutConstraint)**
**RemoveConstraint(extends control as MobileUIControl, constraint as SOSLayoutConstraint)**
Remove a constraint from the specified screen or control

**RemoveConstraintsForControl(extends view as MobileScreen, ctl as MobileUIControl)**
**RemoveConstraintsForControl(extends view as MobileUIControl, ctl as MobileUIControl)**
Removes the position constraints for the specified control

**RemoveHeightConstraints(extends view as MobileUIControl)**
Removes the Height constraint(s) from the control

**RemoveWidthConstraints(extends view as MobileUIControl)**
Removes the Width constraint(s) from the control

**SafeAreaInsets(view as MobileScreen) As UIEdgeInsets**
Returns the safe area insets of the specified view

**UpdateConstraints(extends screen as MobileScreen)**
**UpdateConstraints(extends control as MobileUIControl)**
Asks the view or control to refresh its constraints

## Properties
**DefaultPriority As Double = 999.0**
The default priority used by methods which create or recreate constraints.

## Structures
**Structure NSDirectionalEdgeInsets**
Edge insets which support Leading and Trailing
Bottom as CGFloat
Leading as CGFloat
Top as CGFloat
Trailing as CGFloat

**Structure UIEdgeInsets**
Edge insets which support Left and Right
bottom as CGFloat
left as CGFloat
right as CGFloat
top as CGFloat

