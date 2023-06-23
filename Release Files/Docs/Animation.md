# Animation Module
*This project is supported on iOS projects only*

## Delegates
**Delegate Sub AnimateDelegate()**
Commands to execute during the animation sequence

## Methods
**EndAnimation(extends view as MobileScreen)**
Call this method when you have finished making changes in the animation callback delegate.

**StartAnimation(durationSeconds as double, animationBlock as AnimateDelegate)**
Call this method to set up an animation, specifying the number of seconds the animation should take and the animation callback block to execute.

