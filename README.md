# OverlayWindowTest: +[UIWindow _statusBarControllingWindow] should return +[UIWindow keyWindow]

This is sample code for http://www.openradar.me/15573442

As it is now, it seems like the status bar appearance is affected by the *topmost window* rather than the *key window*. I'm presenting a UIWindow at Status Bar level in order to overlay some stuff over my existing app without affecting it. It only contains a few pixels of information, and should not affect the status bar. Yet, when my window is presented, -[UIViewController preferredStatusBarStyle] stops being called on my app's view controllers.
 
A few possible alternatives:

1. +[UIWindow _statusBarControllingWindow] returns +[UIWindow keyWindow] instead of the top window. Maybe you wrote it this way to support non-VC windows like alerts, so perhaps this wouldn't work. (alternatively, you should make alerts be VCs).
2. An API to control whether a window affects the status bar. Perhaps a -[UIWindow (BOOL)affectsStatusBar].
3. #2, but being implicitly NO when userInteractionEnabled is NO for that window.

Steps to Reproduce:

1. Overload preferredStatusBarStyle in a VC
2. Present a non-interactable UIWindow on top of your app
3. Navigate to the VC in #1

Expected Results:
4. Status bar gets the preferred style of the new VC

Actual Results:
4. Status bar is unaffected
