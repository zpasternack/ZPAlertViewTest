### What's this? ###

This is an example project demonstrating `ZPAlertView`, a `UIAlertView` subclass which adds
completion block invocations, rather than the traditional delegate methods.


### Why? ###

Because blocks are hot, and delegate methods are less hot. By putting the alert completion code
in a block in the calling function, rather than a separate method, you can make your code much
simpler, and simple is almost always better than complex. I wrote blog posts about this 
technique, [here][1] and [here][2].

[1]: http://zpasternack.org/uialertview-with-blocks/
[2]: http://zpasternack.org/uialertview-with-blocks-revisited/


### How's it work? ###

See the linked blog articles above. Check out the code. It's pretty self-explanatory.


### Who's responsible for this? ###

I'm Zacharias Pasternack, lead developer for [Fat Apps, LLC](http://www.fat-apps.com). You can check 
out [my blog](http://zpasternack.org), or follow me on [Twitter](https://twitter.com/zpasternack)
or [App.net](https://alpha.app.net/zpasternack).


### Can I use this code? ###

You bet. Do whatever you want with it. If you find issues, please let me know. If you make it
better, please let me know.

