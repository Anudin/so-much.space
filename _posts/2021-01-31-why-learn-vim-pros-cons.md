---
layout: post
title: Why Learn (Neo)Vim?
tags:
  - dev
  - editor
  - mouse-less
  - tool
  - vim
---
Why bother learning a text editor anecdotally *so* hard to exit, that unplugging your computer might be easier?

* TOC
{:toc}

If you've ever been to r/ProgrammerHumor you've seen the the memes.\
If not, a quick search on "exiting vim memes" gives you an idea of the phenomenon I'm referencing here.
There's also [this](https://stackoverflow.blog/2017/05/23/stack-overflow-helping-one-million-developers-exit-vim/).\
Let's get this out of the way first. Exiting Vim isn't hard, it is different.
Actually, *using* Vim isn't hard, it is *different*.\
So how do you actually close Vim?
I'll tell you when you read the article.

I personally use [Neovim](https://neovim.io/) but the points of this post stand for Vim nevertheless.
{: .message}

## What is a Vim?
[![Vimlogo][vimlogo ressource link]{: style="float: left; display: inline-block; max-width: 7rem; margin-right: var(--spacer);"}][vimlogo attribution link]
Vim is a **keyboard driven**, insanely sophisticated text editor. It is [battle proven](https://groups.google.com/g/vim_announce/c/bQtQSHTK1sg), reliable and fun.

Vim isn't keyboard driven as in "I can enter text with my keyboard", although it is capable of doing that.
It is keyboard driven as in "I can do (almost) *anything* with my keyboard"[^1].
We'll go into details on this in the next section, when we learn [What's Awesome](#whats-awesome).
For now, let's pretend Vims only separating feature was that it allows us to efficiently navigate text with the keyboard[^3] in addition to editing.

In broad strokes, how does it work?
Vim is a **modal text editor**, it operates in modes.
The same key can have different functionalities depending on the active mode.\
When you start the editor, it is in `NORMAL` mode.
Normal mode allows you to navigate text with your keyboard (and more[^2]).
You can navigate to the start or end of a file, a specific line or move the cursor.\
Then there's `INSERT` mode, which is activated by pressing "`i`" and left by pressing "`Esc`".
Insert mode is what you're most likely used to.
Typing on your keyboard lets you insert and remove text, "`Enter`" gives you a line break.
The usual.\
That's of course only the beginning of the story as `NORMAL` and `INPUT` mode are just two of the available six modes.
However my hope is that this short description illustrates the idea of modal editing.
Maybe you can even start to imagine the power that comes with not only using your keyboard for plain text entry.

## What's Awesome
I'm trying to keep this list lean and convincing.
If you are missing a feature while reading through this list, keep in mind it probably exists in Vim (like bookmarks, fold support and calculations).

### Keep your fingers on the home row.
Through the power of modal editing, you can work efficiently without a mouse.
Especially as a touch typist you'll come to appreciate having your hands anchored on the home row at all times.

### Edit with precision.
Vim makes heavy use of [motions and text objects](https://blog.carbonfive.com/vim-text-objects-the-definitive-guide/) to enable something I'll call declarative editing -
you just tell the editor what you want and it does the legwork.\
Delete a word? `daw`.
Delete a sentence? `das`.
Delete a paragraph? `dap`.
That covers natural language pretty well.
It's just as easy to delete a line, delete text between double quotes or brackets, the list goes on.\
Of course you're not just deleting text, are you?
The same schema applies other operations like copying, changing or visually selecting text.

### Intuitive macros.
Since all your editing in Vim is controlled with your keyboard it is essentially controlled by typing in text.
Vim allows you to record your text inputs to create [macros](https://www.redhat.com/sysadmin/use-vim-macros).
Since a macro is therefore just text, it can be edited like any other old peace of text.\
This is the least magical and most intuitive use of macros that I know of.

### The king of structured text editing.
The last two points (precision & macros) combined make Vim the king of structured text[^4] editing.
It makes editing structured text *fun*. There, I said it.\
Do you want to swap the first two sentences of each line? The first and the last?
Want to [execute this operation](https://vim.fandom.com/wiki/Power_of_g) on every line containing a specific word (or Regex)?
All trivial.

### Never loose text through undo / redo.
This is very hard to put in words so bear with me.
Let's try to walk through an example situation which probably happened to you.

1. You write two sentences. This is what you come up with:\
`You write tow sentences. This is the second sentence.`
2. You realize your typo with "tow".
You undo your changes up to this word, correct it and press save.\
`You write two`
3. As you press redo to get the rest of your work back you realize your mistake.
There's nothing to redo.
History is linear.
How could you do such a beginner mistake?

To really get this I encourage you to type the two sentences and apply the changes as described in your favorite editor.
Ok, understood the problem?\
It's not a problem in Vim.
Instead of a linear representation, Vim keeps the undo / redo history in a tree structure - the "undo tree".
For those interested in learning how it works or how to use it I'll just drop a [link](https://vim.fandom.com/wiki/Using_undo_branches).
For a visualization, you can check out a screencast linked [here](https://simnalamburt.github.io/vim-mundo/).

### Powerful window management.
Vim lets you create pretty much every editor layout you can think of using splits.
Here is a basic example of me editing this article:

[![Vim UI with multiple splits](/assets/vim-splits-demo.png)](/assets/vim-splits-demo.png)

A few things to note.\
First, while splits can be used to see multiple files simultaneously, in Vim they can also be used to see multiple views of the same file (at different positions).
The two panes highlighted with red borders show this.\
Complex layouts can be achieved by nesting horizontal and vertical splits as can be seen on the right half of the screenshot.
Rest assured that this is a simple example and that you can go as crazy as you want with adding more splits.\
Now my favorite.
Vim supports tabs like most other editors, but each tab has its own layout.
You can use the layout that is most appropriate for the task at hand and switch by switching tabs.

### Wield the power of the shell.
This is more applicable for developers and power users in general.
Vim is very close to the shell.
It runs in one per default.
You can run shell commands from Vim and read the output as text into your file.
You can even open a terminal *inside of* Vim with your favorite shell to integrate it into your editor layout.

### It's full of features.
This list is a shallow overview at best, there's
  [way](https://www.hillelwayne.com/post/intermediate-vim/) -
  [more](https://stackoverflow.com/questions/726894/what-are-the-dark-corners-of-vim-your-mom-never-told-you-about)
  (also `:help tips` and `:help registers`)
  to discover.
Something important to note here. **Don't get overwhelmed**. You don't have to use every single feature.

### Feels like coming home.
Vim is [extensible](https://vimawesome.com/) and customizable.
Give it some time and it will be *your* Vim, with just the right feature set and shortcuts tailored to your needs.
Just maybe go slow on this when starting out.

### A unified computing experience.
In learning Vim you learn a control scheme that's useable in many different places (see [the last section](#wrapping-it-up)).
It can set you on a journey to think about how you interact with your computer and ultimately lead you to a more unified computing experience.

## Caveits
### Touch typing is a prerequisite to some degree.
As Practical Vim puts it (pretty much right at the beginning of the book):

> If you have to look down to find the keys on the keyboard, the benefits of learning Vim won’t come fast. Learning to touch type is imperative.

You don't have to use ten fingers, but if you have to look before each key press Vim just won't be that useful.
Also, using ten fingers won't hurt.

### Learning Vim takes time.
Using a modal text editor is most likely a mode of editing you're completely new to.
You can't really blame Vim for it but this is just something that you need to be aware of.

### Discoverability is not Vims strength (at all).
It's partly by design.
From the vim.org "about" page:

> Vim isn't an editor designed to hold its users' hands. It is a tool, the use of which must be learned.

It's a fair design decision for a professional tool.
However it lead to a situation where information on effective use is spread between a lot of sources.
Here are a few ones that stand out to me:

* [vim.fandom](https://vim.fandom.com/wiki/Vim_Tips_Wiki)
* [thoughtbot](https://thoughtbot.com/blog/search?utf8=%E2%9C%93&query=vim)
* [Practical Vim](https://pragprog.com/titles/dnvim2/practical-vim-second-edition/)

### The limits of the terminal.
Vim runs in your terminal.
Configuring color themes and setting up your favorite font can be a major pain in the ass.
Using different fonts or font sizes is plain impossible.
Then there's the fact that some things are just better displayed in a nice GUI (like complex diffs).\
Those are all very valid caveats, but no show stoppers in my experience.
A lot of tasks that benefit from a GUI have good standalone clients available.
Also:

* There are GUIs in development (but I haven't found one I'm happy with *yet*).
* This is Neovim specific: Neovim can be embedded in other programs.\
  Usually Vim plugins are more or less good clones, missing critical features (especially falling short on macro support).
  With embeddings you can theoretically get most all benefits of Vim in a full blown IDE, for example.
  At the time of writing this is still pretty experimental but I wouldn't be surprised if it is the future of Vim.

### Vim is not an IDE.
The same way VS Code is not an IDE. Don't @ me.
{: style="font-size: smaller;"}

Modern developers are blessed with wonderful tooling.
Renaming all occurrences of a symbol, searching for definitions and usage come to mind.
Thanks to the Language Server Protocol (LSP) such tools are [available](https://github.com/neoclide/coc.nvim) in Vim :heart:

So why do I think this qualifies as a caveat?

1. Because some tech stacks benefit from additional tooling and configuring Vim for every stack is hard
(inspection tools, REPL integration, ...).
If you're changing stacks frequently, Vim might not be the sharpest tool for the job.
However you can still use a Vim plugin for your favorite IDE, see the next section.
2. Debugging.
There are ways to do it in Vim.
But I'll be honest with you: every major IDE will blow your Vim debugging session out of the water.
Keep an IDE or a good standalone debugger around[^6].

## Wrapping it up
Learning Vim gives you a consistent and precise interface for editing text and controlling your computer without a mouse.
Anyone who composes a lot of text (including source code) on a computer should try Vim.
You don't have to go through long hours of configuration.
You don't have to drop your favorite editor.\
Most IDEs and text editors have Vim bindings build in or available as a plugin[^5], some examples include
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
If you use specialized editors regulary, start of using a plugin for those or check for integrated vim modes to ease the transition.
Questions will arise naturally, address those and take notes.
Use a standard text editor or switch off your Vim plugin when you get overwhelmed.\
Finally, when you feel relatively comfortable, start to take a look at plugins and skim through Practical Vim.

There's one special tip for every aspiring Vimmer that I want to highlight.
In fact I think it's a useful tip for most people using a computer.
[Avoid the escape key](https://vim.fandom.com/wiki/Avoid the escape key)!
I switched mine with `Caps Lock` and it makes all the difference.
{: .message}

<small>
  I still don't know how to exit... help
</small>

Try `:help quit` :sunny:

[^1]: To what extend a keyboard only workflow is desirable is a topic for another post.
[^2]: And more. I'll omit those two words from now on, since that applies to basically everything in Vim.
[^3]: Efficiently meaning not moving line by line with the arrow keys (or using the search to jump to a specific word - although that's a valid strategy sometimes).
[^4]: Every sort of text with easily identifiable patterns. Definition: mine.
[^5]: Using a plugin doesn't give you the full power of Vim (yet - see [Vim is not an IDE](#vim-is-not-an-ide)). At one point, you should probably try out the "real thing".
[^6]: Similar to the LSP mentioned, there is work being done on the [Debug Adapter Protocol (DAP)](https://microsoft.github.io/debug-adapter-protocol/). I won't recommend it yet (maybe never). We have IDEs with fantastic debugger support, just use them when appropriate.

[vimlogo ressource link]: https://upload.wikimedia.org/wikipedia/commons/9/9f/Vimlogo.svg
[vimlogo attribution link]: https://commons.wikimedia.org/wiki/File:Vimlogo.svg "User:D0ktorz, GPL &lt;http://www.gnu.org/licenses/gpl.html&gt;, via Wikimedia Commons"
