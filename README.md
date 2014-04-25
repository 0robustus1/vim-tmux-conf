# vim-tmux-conf

Syntax highlighting for tmux configuration files.

## What it does

*Exactly* as advertised:
some rudimentary **syntax highlighting** for the `tmux.conf` file.
Well not entirely, it now does just a teensy bit more: **tmux command execution**.

When writing your `tmux.conf`-file you'll probably want to try things out.
However always sourcing the tmux configuration after saving can be a
hassle, even if you've created a *source my configuration*-mapping.
Now you can just execute specific lines at will. They will be directly
applied on your currently running tmux sessions.

- Pressing `te` (read: *tmux execute*) on a line in normal mode will execute
  that line and open a one-line buffer with the output.
  - You can quit close the buffer by just pressing `q` in normal mode
- Pressing `tes` (read: *tmux execute silently/shut up*) on a line in normal
  mode will just execute that line...

### Configuration

Per default we will just execute the `tmux` command. However if your
PATH is setup differently, you can just set the path to the executable
manually in your vimrc:
```vim
let g:tmux_command = "/path/to/my/tmux"
```

Per default the height of the output-window will be exactly one line.
However if you regularly experience output which presents across
multiple lines you can increase the size (again in your vimrc):
```vim
let g:tmux_default_buffer_height = 2
```



## LICENSE

([The MIT License][mit])

Copyright © 2014:

- [Tim Reddehase][1]

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

[mit]: http://opensource.org/licenses/MIT
[1]: https://rightsrestricted.com
