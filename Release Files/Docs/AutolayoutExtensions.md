# AutolayoutExtensions Module
*This project is supported on Desktop and iOS projects only*

## Methods
**AddConstraint(extends view as DesktopUIControl, constraint as SOSLayoutConstraint)**
**AddConstraint(extends view as DesktopWindow, constraint as SOSLayoutConstraint)**
**AddConstraint(extends view as MobileScreen, constraint as SOSLayoutConstraint)**
**AddConstraint(extends view as MobileUIControl, constraint as SOSLayoutConstraint)**
Adds an SOSLayoutConstraint to the View

**AddConstraints(extends view as DesktopUIControl, constraints() as SOSLayoutConstraint, priority as Double = 1000.0)**
**AddConstraints(extends view as DesktopWindow, constraints() as SOSLayoutConstraint, priority as Double = 1000.0)**
**AddConstraints(extends view as MobileScreen, constraints() as SOSLayoutConstraint, priority as Double = 1000.0)**
**AddConstraints(extends view as MobileUIControl, constraints() as SOSLayoutConstraint, priority as Double = 1000.0)**
Adds an array of SOSLayoutConstraints to the view with a specific priority

**AlignToLabel(extends ctl as DesktopUIControl, label as DesktopLabel)**
Creates leading constraint and either a baseline or top constraint between the controls and the label

**CompressionResistancePriorityForAxis(Extends item as DesktopContainer, axis as SOSConstraintKit.Axis) As Double**
**CompressionResistancePriorityForAxis(Extends item as DesktopContainer, axis as SOSConstraintKit.Axis, assigns priority as double)**
**CompressionResistancePriorityForAxis(Extends item as DesktopUIControl, axis as SOSConstraintKit.Axis) As Double**
**CompressionResistancePriorityForAxis(Extends item as DesktopUIControl, axis as SOSConstraintKit.Axis, assigns priority as double)**
**CompressionResistancePriorityForAxis(Extends item as MobileUIControl, axis as SOSConstraintKit.Axis) As Double**
**CompressionResistancePriorityForAxis(Extends item as MobileUIControl, axis as SOSConstraintKit.Axis, assigns priority as double)**
Sets or Gets the Compression Resistance priority for the specified Axis

**ConstraintForControlAttribute(extends view as DesktopWindow, ctl as DesktopUIControl, attr as SOSLayoutConstraint.LayoutAttributes) As SOSLayoutConstraint**
**ConstraintForControlAttribute(extends view as MobileScreen, ctl as mobileUIControl, attr as SOSLayoutConstraint.LayoutAttributes) As SOSLayoutConstraint**
**ConstraintForControlAttribute(extends ctl as mobileUIControl, attr as SOSLayoutConstraint.LayoutAttributes) As SOSLayoutConstraint**
Sets or Gets a constraint for a particular attribute

**ConstraintMatchingIntrinsicHeight(extends view as DesktopUIControl) As SOSLayoutConstraint**
**ConstraintMatchingIntrinsicHeight(extends view as MobileUIControl) As SOSLayoutConstraint**
Creates an intrinsic height constraint for the specified control

**ConstraintMatchingIntrinsicWidth(extends view as DesktopUIControl) As SOSLayoutConstraint**
**ConstraintMatchingIntrinsicWidth(extends view as MobileUIControl) As SOSLayoutConstraint**
Creates an intrinsic width constraint for the specified control

**Constraints(extends view as DesktopUIControl) As SOSLayoutConstraint()**
**Constraints(extends view as DesktopWindow) As SOSLayoutConstraint()**
**Constraints(extends view as MobileScreen) As SOSLayoutConstraint()**
**Constraints(extends view as MobileUIControl) As SOSLayoutConstraint()**
Returns all of the constraints attached to the specified view

**ConstraintsForControl(extends view as DesktopWindow, ctl as DesktopUIControl) As SOSLayoutConstraint()**
**ConstraintsForControl(Extends view as MobileScreen, control as MobileUIControl) As SOSLayoutConstraint()**
Returns the constraints attributed to a particular control on the view

**ConvertConstraintsForAllControls(extends view as DesktopWindow, newPriority as Double)**
**ConvertConstraintsForAllControls(extends view as MobileScreen, newPriority as Double)**
Converts all constraints on a view to SOSLayoutConstraints, changing them all to the specified priority

**ConvertConstraintsForControl(extends view as DesktopWindow, item as DesktopUIControl, newPriority as Double = 1000.0)**
**ConvertConstraintsForControl(extends view as DesktopWindow, item as DesktopUIControl, newPriority as SOSConstraintKit.Priorities)**
**ConvertConstraintsForControl(extends view as MobileScreen, item as MobileUIControl, newPriority as Double = 1000.0)**
**ConvertConstraintsForControl(extends view as MobileScreen, item as MobileUIControl, newPriority as SOSConstraintKit.Priorities)**
Converts all constraints for a specific DesktopUIControl on a particular DesktopWindow to SOSLayoutConstraints, changing them all to a particular Priority

**ConvertToAutolayout(Extends w as DesktopWindow, useLeadingTrailing as Boolean = False, unconstrainWindow as boolean = False)**
Converts the DesktopWindow layout to one that's using constraints

**DirectionalLayoutMargins(Extends view as DesktopUIControl) As NSDirectionalEdgeInsets**
**DirectionalLayoutMargins(Extends view as DesktopUIControl, assigns value as NSDirectionalEdgeInsets)**
**DirectionalLayoutMargins(Extends view as DesktopWindow) As NSDirectionalEdgeInsets**
**DirectionalLayoutMargins(Extends view as DesktopWindow, assigns value as NSDirectionalEdgeInsets)**
**DirectionalLayoutMargins(Extends view as MobileScreen) As NSDirectionalEdgeInsets**
**DirectionalLayoutMargins(Extends view as MobileScreen, assigns value as NSDirectionalEdgeInsets)**
**DirectionalLayoutMargins(Extends view as MobileUIControl) As NSDirectionalEdgeInsets**
**DirectionalLayoutMargins(Extends view as MobileUIControl, assigns value as NSDirectionalEdgeInsets)**
*Sets or Gets the Directional Layout Margins for a view*

**FirstBaselineOffset(extends view as DesktopTextControl) As Double**
**FirstBaselineOffset(extends view as MobileTextControl) As Double**
Gets the First Baseline Offset for the text control

**HuggingPriorityForAxis(Extends item as DesktopContainer, axis as SOSConstraintKit.Axis) As Double**
**HuggingPriorityForAxis(Extends item as DesktopContainer, Axis as SOSConstraintKit.Axis, assigns priority as Double)**
**HuggingPriorityForAxis(Extends item as DesktopUIControl, axis as SOSConstraintKit.Axis) As Double**
**HuggingPriorityForAxis(Extends item as DesktopUIControl, Axis as SOSConstraintKit.Axis, assigns priority as Double)**
**HuggingPriorityForAxis(Extends item as MobileUIControl, axis as SOSConstraintKit.Axis) As Double**
**HuggingPriorityForAxis(Extends item as MobileUIControl, Axis as SOSConstraintKit.Axis, assigns priority as Double)**
*Sets or Gets the Hugging Priority for the control on the specified axis*

**InsetsLayoutMarginsFromSafeArea(extends view as DesktopContainer) As Boolean**
**InsetsLayoutMarginsFromSafeArea(extends view as DesktopContainer, assigns value as Boolean)**
**InsetsLayoutMarginsFromSafeArea(extends view as DesktopUIControl) As Boolean**
**InsetsLayoutMarginsFromSafeArea(extends view as DesktopUIControl, assigns value as Boolean)**
**InsetsLayoutMarginsFromSafeArea(extends view as MobileUIControl) As Boolean**
**InsetsLayoutMarginsFromSafeArea(extends view as MobileUIControl, assigns value as Boolean)**
Sets or Gets whether the layout margins are inset from the safe area

**IntrinsicContentSize(extends view as DesktopContainer) As Size**
**IntrinsicContentSize(extends view as DesktopUIControl) As Size**
**IntrinsicContentSize(extends view as MobileUIControl) As Size**
Returns the instrinsic content size for the control

**InvalidateIntrinsicContentSize(extends view as DesktopContainer)**
**InvalidateIntrinsicContentSize(extends view as DesktopUIControl)**
**InvalidateIntrinsicContentSize(extends view as MobileUIControl)**
Asks the OS to recalculate the container's intrinsic content size

**LayoutIfNeeded(extends view as DesktopWindow)**
**LayoutIfNeeded(extends view as MobileScreen)**
Asks the OS to update the window's layout if necessary.

**LayoutMargins(extends view as DesktopUIControl) As UIEdgeInsets**
**LayoutMargins(extends view as DesktopUIControl, assigns value as UIEdgeInsets)**
**LayoutMargins(extends view as DesktopWindow) As UIEdgeInsets**
**LayoutMargins(extends view as DesktopWindow, assigns value as UIEdgeInsets)**
**LayoutMargins(extends view as MobileScreen) As UIEdgeInsets**
**LayoutMargins(extends view as MobileScreen, assigns value as UIEdgeInsets)**
**LayoutMargins(extends view as MobileUIControl) As UIEdgeInsets**
**LayoutMargins(extends view as MobileUIControl, assigns value as UIEdgeInsets)**
Sets or Gets the Layout Margins for the control.

**PreservesSuperviewLayoutMargins(extends view as DesktopContainer) As Boolean**
**PreservesSuperviewLayoutMargins(extends view as DesktopContainer, assigns value as boolean)**
**PreservesSuperviewLayoutMargins(extends view as DesktopUIControl) As Boolean**
**PreservesSuperviewLayoutMargins(extends view as DesktopUIControl, assigns value as boolean)**
**PreservesSuperviewLayoutMargins(extends view as MobileUIControl) As Boolean**
**PreservesSuperviewLayoutMargins(extends view as MobileUIControl, assigns value as boolean)**
Sets or Gets whether the container preserves its superview's layout margins

**RecreateConstraintsForAllControls(extends view as DesktopWindow)**
**RecreateConstraintsForAllControls(extends view As DesktopWindow, newPriority As Double = 1000.0)**
**RecreateConstraintsForAllControls(extends view as mobilescreen)**
**RecreateConstraintsForAllControls(extends view As mobilescreen, newPriority As Double = 1000.0)**
Recreates constrains for all controls on the view

**RemoveConstraint(extends control as DesktopUIControl, constraint as SOSLayoutConstraint)**
**RemoveConstraint(extends screen as DesktopWindow, constraint as SOSLayoutConstraint)**
**RemoveConstraint(extends screen as MobileScreen, constraint as SOSLayoutConstraint)**
**RemoveConstraint(extends control as MobileUIControl, constraint as SOSLayoutConstraint)**
Removes the specified constraint from the control

**RemoveConstraintsForControl(extends view as DesktopContainer, ctl as DesktopUIControl)**
**RemoveConstraintsForControl(extends view as DesktopWindow, ctl as DesktopUIControl)**
**RemoveConstraintsForControl(extends view as MobileScreen, ctl as MobileUIControl)**
**RemoveConstraintsForControl(extends view as MobileUIControl, ctl as MobileUIControl)**
Removes constraints for a control from a particular container

**RemoveHeightConstraints(extends view as MobileUIControl)**
Removes the Height constraint(s) from the control

**RemoveWidthConstraints(extends view as MobileUIControl)**
Removes the Width constraint(s) from the control

**SafeAreaInsets(view as DesktopWindow) As UIEdgeInsets**
**SafeAreaInsets(view as MobileScreen) As UIEdgeInsets**
Returns the safe area insets for the specified window

**SystemIsRTL() As Boolean**
Returns True if the system is set up to use a Left to Right text orientation.

**UpdateConstraints(extends control as DesktopUIControl)**
**UpdateConstraints(extends screen as DesktopWindow)**
**UpdateConstraints(extends screen as MobileScreen)**
**UpdateConstraints(extends control as MobileUIControl)**
Asks the OS to update the constraints for a particular control.

**UseIntrinsicWidth(extends ctl as DesktopUIControl)**
Removes the width constraint(s) so the control will use the intrinsic size

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

