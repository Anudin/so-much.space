---
layout: post
title: Why Learn (Neo)Vim?
---
<!-- TODO Artikel aufteilen. -->
Why bother learning a text editor which is so hard to exit, that unplugging your computer might be easier?

---

If you've ever been to r/ProgrammerHumor you've seen the the memes.
If not, a quick search on "exiting vim memes" gives you an idea.
There's also [this](https://stackoverflow.blog/2017/05/23/stack-overflow-helping-one-million-developers-exit-vim/).\
Let's get this out of the way first: exiting Vim isn't hard, it is different.
Actually, *using* Vim isn't hard, it is *different*.
How do you actually close Vim? Try `:help quit`.

I personally use [Neovim](https://neovim.io/) but the points of this post stand for Vim nevertheless.
{: .message}

## What is a Vim?
[![Vimlogo][vimlogo ressource link]{: style="float: left; display: inline-block; max-width: 7rem; margin-right: var(--spacer);"}][vimlogo attribution link]
Vim is a **keyboard driven**, insanely sophisticated text editor. It is [battle proven](https://groups.google.com/g/vim_announce/c/bQtQSHTK1sg), reliable and fun.

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
* Keep your fingers on the home row.\
  With Vim, you can work efficiently without a mouse.
* Edit with precision.\
  Vim makes heavy use of [text objects](https://blog.carbonfive.com/vim-text-objects-the-definitive-guide/) to enable something I'll call declarative editing -
  you just tell the editor what you want and it does the legwork.\
  Delete a word? `daw`.
  Delete a sentence? `das`.
  Delete a paragraph? `dap`.
  It's just as easy to delete a line, delete text between brackets, the list goes on.
  The same schema applies to copying, changing or visually selecting text.
* Intuitive macros.\
  Since all your editing in Vim is controlled with your keyboard it is essentially controlled by typing in text.
  Vim allows you to record and replay your inputs to create macros.
  The best part? Editing a macro is therefore just editing text.
  This is the least magical and most intuitive use of macros that I know of.
* The last two points combined make Vim the king of structured text editing (every sort of text with easily identifiable patterns).
  It makes editing structured text *fun*. There, I said it.\
  Do you want to swap the first two sentences of each line? The first and the last?
  Want to limit this operation to lines containing a specific word (or Regex)?
  All trivial.
* Powerful buffer & split management.\
  (layout save)
* Close to the terminal
  * Integrated, execute commands and read output
* Non linear undo tree
* It's full of features.
  This list is a shallow overview at best, there's [way more](https://www.hillelwayne.com/post/intermediate-vim/) to discover.
  Something important to note here. **Don't get overwhelmed**. You don't have to use every single feature.
* It's *very* extensible and customizable. It's not Emacs but definitely more than enough for a text editor.
* One control scheme for nearly all your editors, see [the last section](#wrapping-it-up).

## Caveits
* Touch typing is a prerequisite to some degree.
  As *Practical Vim* puts it (pretty much right at the beginning of the book):

  > If you have to look down to find the keys on the keyboard, the benefits of learning Vim won’t come fast. Learning to touch type is imperative.

  You don't have to use ten fingers, but if you have to look before each key press Vim just won't be that useful.
  Also, using ten fingers won't hurt.
* Learning Vim takes time.
  Using a modal text editor is most likely a mode of editing you're completely new to.
  You can't really blame Vim for it but this is just something that you need to be aware of.
* Discoverability is not Vims strength (at all).
  It's partly by design.
  From the vim.org "about" page:

  > Vim isn't an editor designed to hold its users' hands. It is a tool, the use of which must be learned.

  It's a fair design decision for a professional tool.
  However it lead to a situation where Information is spread between a lot of sources.
  Here are a few sources that stand out (and a million private blogs).
    * [vim.fandom](https://vim.fandom.com/wiki/Vim_Tips_Wiki)
    * [thoughtbot](https://thoughtbot.com/blog/search?utf8=%E2%9C%93&query=vim)
    * *Practical Vim*
* For developers: Vim is not an IDE. Please don't close this tab yet.\
  Modern developers are blessed with wonderful tooling.
  Global renaming or searching for definitions and usage come to mind.
  Thanks to the Language Server Protocol (LSP) such tools are [available](https://github.com/neoclide/coc.nvim) in Vim :heart:\
  So why do I think this qualifies as a caveit?
  Because some tech stacks benefit from additional tooling and configuring Vim for every stack is hard.
  You should use the sharpest tool available.
  However you can still use a Vim plugin for your favorite IDE, see the next section.

## Wrapping it up
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
Use a standard text editor or switch off your Vim plugin when you get overwhelmed.\
Finally, when you feel relatively comfortable, take a look at the book *Practical Vim*.

There's one special tip for every aspiring Vimmer that I want to highlight.
In fact I think it's a useful tip for most people using a computer.
[Avoid the escape key](https://vim.fandom.com/wiki/Avoid the escape key)!
I have mine mapped to `Caps Lock` and it makes all the difference.
{: .message}

[vimlogo ressource link]: https://upload.wikimedia.org/wikipedia/commons/9/9f/Vimlogo.svg
[vimlogo attribution link]: https://commons.wikimedia.org/wiki/File:Vimlogo.svg "User:D0ktorz, GPL &lt;http://www.gnu.org/licenses/gpl.html&gt;, via Wikimedia Commons"
