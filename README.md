# What is open-newline.el ?
Open newline like vi.

Those code wrote at 2009, i extract those code from my basic-toolkit.el

## Installation
Clone or download this repository (path of the folder is the `<path-to-open-newline>` used below).

In your `~/.emacs`, add the following two lines:
```Elisp
(add-to-list 'load-path "<path-to-open-newline>") ; add open-newline to your load-path
(require 'open-newline)
```

## Usage
Bind your favorite key to functions:

 | Function                   | Description                                                |
 | :--------                  | :----                                                      |
 | open-newline-above         | Move to the previous line (like vi) and then opens a line. |
 | open-newline-below         | Move to the next line (like vi) and then opens a line.     |
