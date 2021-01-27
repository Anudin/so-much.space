---
layout: post
title: Why Learn (Neo)Vim?
---
Why bother learning a text editor that is anecdotally so hard to exit that unplugging your computer is easier?

---

If you've ever been to [r/ProgrammerHumor](https://www.reddit.com/r/ProgrammerHumor/) you've seen the the memes.
You heard the moaning.
If not, a quick search on "exiting vim memes" gives you an idea.
Lets get this out of the way: exiting Vim is not hard, it's different.
If you're currently stuck in it try `:help quit`.
Also there's a Disclaimer:

I personally use [Neovim](https://neovim.io/) but the points of this post should stand for Vim nevertheless.
I also love using it, however I'll try to give a realistic view.
{: .message}

## What is a Vim?
[![Vimlogo][vimlogo ressource link]{: style="float: left; display: inline-block; max-width: 7rem; margin: 0 1rem 1rem 0;"}][vimlogo attribution link]
Vim is a keyboard driven, insanely sophisticated text editor. It is [battle proven](https://groups.google.com/g/vim_announce/c/bQtQSHTK1sg), reliable and fun.

Vim is not keyboard driven as in "I can enter text with my keyboard", although it is capable of doing that.
It is keyboard driven as in "I can do (almost) anything with my keyboard"[^1].
We'll go into details on this in the next section, when we learn [What's Awesome](#whats-awesome).
For now, let's pretend Vims only separating feature was that it allows us to efficiently navigate text with the keyboard[^3] in addition to editing.

So in broad strokes, how does it work?
Vim is a *modal text editor*, it operates in modes.
The same key can have different functionalities depending on the active mode.\
When you start it up, the editor is in `NORMAL` mode.
Normal mode allows you to navigate text with your keyboard (and more[^2]).
You can navigate to the start or end of a file, a specific line or move the cursor.\
Then there's `INSERT` mode, which is activated by pressing "`i`" and left by pressing "`Esc`".
Insert mode is what you're most likely used to.
Typing on your keyboard lets you insert and remove text, "`Enter`" gives you a line break.
The usual.\
`NORMAL` and `INPUT` mode are only two of the six available modes.

[^1]: To what extend a keyboard only workflow is desireable is a topic for another post.
[^3]: Efficiently meaning not moving line by line with the arrow keys (or using the search to jump to a specific word - although that's a valid strategy sometimes).
[^2]: And more. I'll obmit those two words from now on, since that applies to basically everything in Vim.

<!-- TODO Inkdrop Liste übernehmen -->
## What's Awesome
* Vim is blazing fast
* Keep the home row
* Modes
* Precision (text targets), motions
* One control scheme for all your editors
* Hjkl is standard (ghjk), vim (like) input is supported in a lot of places
* Regex Comapt
* Structured text
* sed compatible search & replace
* Build in documentation (?)
* Powerful buffer & split management (layout save)
* Extensible, Customizable
* Close to the terminal
  * Integrated, execute commands and read output
* Macros
* Non linear undo tree
* It's full of features. This list is a shallow overview at best, there's [way more](https://www.hillelwayne.com/post/intermediate-vim/) (and again way more than that) to discover.

## Caveits
* Discoverability is not Vims strength (like... at all)
* Prerequisite touch typing
* Writer / developer
* Configuration takes *a lot* of time
* Learning takes some time\
> Vim isn't an editor designed to hold its users' hands. It is a tool, the use of which must be learned. - [vim.org About Page](https://www.vim.org/about.php)
* Getting good takes more

## My Opinion
Learning Vim gives you a consistent and precise interface for editing text and controlling your computer without a mouse.
Anyone who composes a lot of text (including source code) on a computer should try Vim.
You don't have to go through long hours of configuration.
You don't have to drop your favorite editor.\
Most IDEs and text editors have Vim bindings build in or available as a plugin, some examples include
[Visual Studio Code](https://marketplace.visualstudio.com/items?itemName=vscodevim.vim),
[IntelliJ](https://plugins.jetbrains.com/plugin/164-ideavim), even
[Emacs](https://github.com/emacs-evil/evil).
Vim like editing is available in a lot of desktop or web apps like Overleaf.
Vim like navigation is available in `less`, in some PDF readers like Okular, in Firefox & Chrome with [Vimium](https://vimium.github.io/).
You can even navigate your system windows if you're using a tiling window manager.

Now how does one learn Vim? With time and patience.\
I suggest you learn about `vimtutor` with your favorite search engine.
Finish it, then get to action.
Begin your journey with small scale simple text editing tasks like composing an e-mail.
If you use specialized editors regulary, start off using a plugin for those or check for integrated vim modes to ease the transition.
Questions will arise naturally, address those and take notes.
Use a standard text editor or switch off your Vim plugin when you get overwhelmed.

[vimlogo ressource link]: https://upload.wikimedia.org/wikipedia/commons/9/9f/Vimlogo.svg
[vimlogo attribution link]: https://commons.wikimedia.org/wiki/File:Vimlogo.svg "User:D0ktorz, GPL &lt;http://www.gnu.org/licenses/gpl.html&gt;, via Wikimedia Commons"
