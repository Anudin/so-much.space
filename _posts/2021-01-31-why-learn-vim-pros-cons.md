---
title: Why Learn (Neo)Vim?
slug: Why learn Vim? Pros & cons.
tags:
  - dev
  - editor
  - mouse-less
  - tool
  - vim
---
Do you like learning new skills? Do you spend any significant time working with text on at a computer?
Then let me show you how to get _enjoyment_ out of even the most monotonous writing or editing tasks.

Here's what we will be going over together:

* TOC
{:toc}

## What is a "Vim"?
[![Vimlogo][vimlogo ressource link]{: style="float: left; display: inline-block; max-width: 7rem; margin-right: var(--spacer);"}][vimlogo attribution link]
Vim is a **keyboard driven**, insanely sophisticated text editor. It is [battle proven](https://groups.google.com/g/vim_announce/c/bQtQSHTK1sg), reliable and fun.

Vim isn't keyboard driven as in "I can enter text with my keyboard", although it is capable of doing that.
It is keyboard driven as in "I can do (almost) anything with my keyboard"[^1].
We'll go into details on this in the next section, when we learn [What's Awesome](#whats-awesome).
For now, let's pretend Vim's only separating feature was that it allows us to efficiently[^3] navigate text with the keyboard in addition to editing.

In broad strokes, how does it work?
Vim is a **modal text editor**, it operates in modes.
The same key can have different functionalities depending on the active mode.\
When you start the editor, it is in `NORMAL` mode.
This mode allows you to navigate text with your keyboard (and more)[^2].
You can navigate to the start or end of a file, a specific line or move the cursor.\
Then there's `INSERT` mode, which is activated by pressing "i".
This mode is what you're most likely used to.
Typing on your keyboard lets you insert and remove text, "Enter" gives you a line break.
The usual.
Pressing "Escape" leaves the mode.\
That's of course only the beginning of the story as `NORMAL` and `INSERT` mode are just two of the available seven modes.
However, my hope is that this short description illustrates the idea of modal editing.
Maybe you can even start to imagine the power that comes with not only using your keyboard for plain text entry.

Quick aside: I don't use standard Vim, but [Neovim](https://neovim.io/). The points of this post apply to both.
{: .message}

## What's Awesome
I'm trying to keep this list lean and convincing.
If you are missing a feature while reading through this list, keep in mind it probably exists in Vim (like bookmarks, fold support and calculations).

### The value of learning.

Let's start with a bold statement.  
You will profit from learning Vim. Even if you end up not using or even disliking it.
What did I get out of my journey to learn Vim?

- I tought myself touch typing.
- I started to use the terminal more regularly and learned about bash and other shells.
- I started to consciously think about which keys of my keyboard I actually use, why I use them and the ergonomics of it all. This also drove me down the rabbit hole of [tiling window managers](https://www.techrepublic.com/article/linux-101-whats-a-tiling-window-manager/).
- I finally understand macros and appreciate shortcuts more than ever. Too many overlapping shortcuts? A [hyper key](https://xam.io/2020/hyper-key/) can save you from headaches.
- I can now appreciate that modes (as in _modal editor_) allow us to do more with less keys. You should check out [`<Leader>`](https://stackoverflow.com/a/1764336).

Vim made me reflect and improve on my workflows and changed how I think about operating computers.
It made me a power user.

### Keep your fingers on the home row.
Through the power of modal editing, you can work efficiently without a mouse.
Especially as a touch typist you'll come to appreciate having your hands anchored on the home row at all times.

### Edit with precision.
Vim makes heavy use of [motions and text objects](https://blog.carbonfive.com/vim-text-objects-the-definitive-guide/) to enable something I'll call declarative editing -
you just tell the editor what you want and it does the legwork.\
Delete a word? `daw`.\
Delete a sentence? `das`.\
Delete a paragraph? `dap`.\
That covers natural language pretty well.
It's just as easy to delete a line, delete text between double quotes or brackets, the list goes on.
Of course, you're not just deleting text, are you?
The same schema applies other operations like copying, changing or visually selecting text.

### Intuitive macros.
Since all your editing in Vim is controlled with your keyboard, it is only controlled by typing in text. Vim allows you to record your inputs to create macros. A "macro" in Vim is therefore just text! It can be edited like any other peace of text, if you mess up during a macro recording. This is the least magical and most intuitive use of macros that I know of.  
This is probably easier to understand with an example: [click here](https://www.redhat.com/sysadmin/use-vim-macros).

### The king of structured text editing.
The last two points (precision & macros) combined make Vim the king of structured text[^4] editing.
It makes editing structured text fun. There, I said it.\
Do you want to swap the first two sentences of each line? The first and the last?
Want to [execute this operation](https://vim.fandom.com/wiki/Power_of_g) on every line containing a specific word (or Regex)?
All trivial.

### Never lose text through undo / redo (again).
This is one of the more obscure features and is hard to put in words so bear with me.
Let's try to walk through a situation which might be familiar to you:

1. You write two sentences. This is what you come up with:  
    `You write tow sentences. This is the second sentence.`
2. You realize your typo with "tow".
You undo your changes up to this word, correct it and press save.  
    `You write two`
3. You would like to get the rest of the sentences back as you already typed them out, but you can't. The required history has been wiped when you made changes after an undo.

To really get this I encourage you to just go through this example in your favorite editor.  

Ok, understood the problem?
This problem doesn't exist in Vim.
Instead of treating the history of undo / redo operations as something linear, Vim keeps a tree structure: _undo branches_. You can read about them in the [official help pages](https://vimhelp.org/undo.txt.html#undo-branches). For practical use, you probably want a visualization of the available branches. One of plugins offering this is [Mundo](https://simnalamburt.github.io/vim-mundo/).

### Powerful window management.
Vim lets you create pretty much every editor layout you can think of using splits.
Here is a basic example of me editing this article:

[![Vim UI with multiple splits](/assets/vim-splits-demo.png)](/assets/vim-splits-demo.png)

The left and top-right split display different parts of the same file (highlighted in red), the bottom-right split is a terminal running in Vim.
This example is pretty simple, you can go as complex as you like by adding more horizontal and vertical splits.  
Now my favorite: Vim supports a flavor of tabs called _tab pages_. Switching between tabs is the same as in other text editors, but instead of showing just one file per tab, each tab can have a unique layout of splits showing however many files.  
Oh, and of course you can save your super awesome setup with `mksession`.

### Wield the power of the shell.
This is more applicable for developers and power users in general.
Vim is very close to the shell.
It runs in one per default.
You can run shell commands from Vim and read the output as text into your file.
You can even open a terminal inside of Vim with your favorite shell to integrate it into your editor layout.

### It's full of features.
This list is a shallow overview at best, there's way more to discover
(see [this](https://www.hillelwayne.com/post/intermediate-vim/) and [that](https://stackoverflow.com/questions/726894/what-are-the-dark-corners-of-vim-your-mom-never-told-you-about); also `:help tips` and `:help registers`).
Something important to note here. Don't let yourself get overwhelmed. You don't have to use every single feature.

### Feels like coming home.
Vim is [extensible](https://vimawesome.com/) and customizable.
Give it some time and it will be your Vim, with just the right feature set and shortcuts tailored to your needs.
Just don't go overboard on this when starting out.

### A unified computing experience.
In learning Vim you learn a control scheme that's usable in many places (see [the last section](#wrapping-it-up)).
It can set you on a journey to think about how you interact with your computer and ultimately lead you to a more unified computing experience.

## Caveats
### Touch typing is a prerequisite to some degree.
As Drew Neil puts it in his book *Practical Vim* (pretty much right at the beginning):

> If you have to look down to find the keys on the keyboard, the benefits of learning Vim won’t come fast. Learning to touch type is imperative.

You don't have to use ten fingers, but if you have to look before each key press Vim just won't be that useful.
Also, using ten fingers won't hurt.

### Learning Vim takes time.
Using a modal text editor is most likely a mode of editing you're completely new to.
You can't really blame Vim for it but this is just something that you need to be aware of.

### Discoverability is not Vim's strength (at all).
It's partly by design.
From the vim.org "about" page:

> Vim isn't an editor designed to hold its users' hands. It is a tool, the use of which must be learned.

It's a fair design decision for a professional tool.
However it lead to a situation where information on effective use is spread between a lot of sources.
Here are a few ones that stand out to me:

* [vim.fandom](https://vim.fandom.com/wiki/Vim_Tips_Wiki)
* [thoughtbot](https://thoughtbot.com/blog/search?utf8=%E2%9C%93&query=vim)
* [Vimcasts](http://vimcasts.org/)
* [Practical Vim](https://pragprog.com/titles/dnvim2/practical-vim-second-edition/)

There is also extensive built-in documentation through `:help`, but my trusty search engine and some of the linked sources were more helpful to me. The built-in documentation is also [available online](https://vimhelp.org/).

### The limits of the terminal.
Standard Vim runs in your terminal.
As a consequence of that, configuring color themes and setting up your favorite font can be a major pain in the ass.
Combining different fonts or font sizes is simply not possible.
Then there's the fact that some things are just better displayed in a nice GUI (like complex diffs).  
Those are all valid caveats, but no show stoppers in my experience.
A lot of tasks that benefit from a GUI have good standalone clients available.

Also:

* There are GUIs in development. Sadly I haven't found one that works for me on Linux, but [VimR](https://github.com/qvacua/vimr) looks promising if you're on macOS.
* A lot of programs (like text editors, IDEs) have a built-in Vim emulation, or plugins to achieve this. In my experience they seem to fall short in their macro support, or interfere with the standard workflows in some way. However, after some tinkering, I'm quite happy with [IdeaVim](https://plugins.jetbrains.com/plugin/164-ideavim) with [IdeaVim-EasyMotion](https://plugins.jetbrains.com/plugin/13360-ideavim-easymotion). You can find my configuration [on GitHub](https://gist.github.com/Anudin/76ffd6d1c2c7e0d855632c207b74bd04).
* This is Neovim specific: Neovim can be embedded in other programs, by acting as a server. This is a fancy way to say it handles what you type on your keyboard and controls said program: moving the cursor, creating visual selections, giving you most of Vim's capabilities.  
    I am fairly convinced that such embedding can offer the best of all worlds and I wouldn't be surprised if this is the future of Vim. A very promising implementation that I use is [VSCode Neovim](https://marketplace.visualstudio.com/items?itemName=asvetliakov.vscode-neovim).

### Vim is not an IDE.
The same way VS Code is not an IDE. Don't @ me.
{: style="font-size: smaller;"}

Modern developers are blessed with wonderful tooling.
Renaming all occurrences of a symbol, searching for definitions and usages come to mind.
Thanks to the Language Server Protocol (LSP) and the open source community, such tools are [available in Vim](https://github.com/neoclide/coc.nvim) ❤️

So why do I think this qualifies as a caveat?

1. Because some tech stacks benefit from additional tooling and configuring Vim for every stack is hard
(inspection tools, REPL integration, ...).
If you're changing stacks frequently, Vim might not be the best tool for the job.
However you can still use a Vim plugin for your favorite IDE.
2. Debugging.
There are ways to do it in Vim.
But I'll be honest with you: every major IDE will blow your Vim debugging session out of the water.
    Keep an IDE or a good standalone debugger around[^6].

## Wrapping it up
Learning Vim gives you a consistent and precise interface for editing text and controlling your computer.
Anyone who composes a lot of text (including source code) on a computer should try Vim.\
You don't have to go through long hours of configuration.
You don't have to drop your favorite editor.
Most IDEs and text editors have Vim modes build in or available as a plugin, [The limits of the terminal](#the-limits-of-the-terminal) went over some examples.
Vim like editing is also available in a lot of desktop or web apps like Overleaf.\
Vim like navigation is available in `less`, in some PDF readers like Okular, in Firefox & Chrome with [Vimium](https://vimium.github.io/).
You can even navigate your system windows if you're using a tiling window manager.

Now how does one learn Vim? With time and patience.\
I suggest you start by learning about `vimtutor` with your favorite search engine.
Go through it, then get to action:
begin your journey with small scale, simple text editing tasks - like composing an e-mail.
If you use specialized editors regularly, check for built-in vim modes or try a plugin to ease the transition.\
Use a standard editor or switch off your Vim mode when you get overwhelmed.
When you start to feel comfortable, you can take a look at popular plugins and maybe check out some of the resources I linked. Questions will arise naturally, let your curiosity guide you.

There's one special tip for every aspiring Vimmer that I want to highlight.
In fact I think it's a useful tip for most people using a computer.
[Avoid the escape key](https://vim.fandom.com/wiki/Avoid the escape key)!
I switched mine with `Caps Lock` and it makes all the difference.
{: .message}

<small>
  I still don't know how to exit... help
</small>

Try `:help quit` ☀️

[^1]: To what extend a keyboard only workflow is desirable is a topic for another post.
[^2]: And more. I'll omit those two words from now on, since that applies to basically everything in Vim.
[^3]: Efficiently meaning not moving line by line with the arrow keys (or using the search to jump to a specific word - although that's a valid strategy sometimes).
[^4]: Every sort of text with easily identifiable patterns. Definition: mine.
[^6]: Similar to the LSP mentioned, there is work being done on the [Debug Adapter Protocol (DAP)](https://microsoft.github.io/debug-adapter-protocol/). I won't recommend it yet (maybe never). We have IDEs with fantastic debugger support, just use them when appropriate.

[vimlogo ressource link]: https://upload.wikimedia.org/wikipedia/commons/9/9f/Vimlogo.svg
[vimlogo attribution link]: https://commons.wikimedia.org/wiki/File:Vimlogo.svg "User:D0ktorz, GPL &lt;http://www.gnu.org/licenses/gpl.html&gt;, via Wikimedia Commons"
