;;; open-newline.el --- Open newline like vi

;; Filename: open-newline.el
;; Description: Open newline like vi
;; Author: Andy Stewart <lazycat.manatee@gmail.com>
;; Maintainer: Andy Stewart <lazycat.manatee@gmail.com>
;; Copyright (C) 2019, Andy Stewart, all rights reserved.
;; Created: 2019-03-23 23:21:34
;; Version: 0.1
;; Last-Updated: 2019-03-23 23:21:34
;;           By: Andy Stewart
;; URL: http://www.emacswiki.org/emacs/download/open-newline.el
;; Keywords:
;; Compatibility: GNU Emacs 26.1.92
;;
;; Features that might be required by this library:
;;
;;
;;

;;; This file is NOT part of GNU Emacs

;;; License
;;
;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth
;; Floor, Boston, MA 02110-1301, USA.

;;; Commentary:
;;
;; Open newline like vi
;;
;; Those code wrote in 2009, extract from my basic-toolkit.el
;;

;;; Installation:
;;
;; Put open-newline.el to your load-path.
;; The load-path is usually ~/elisp/.
;; It's set in your ~/.emacs like this:
;; (add-to-list 'load-path (expand-file-name "~/elisp"))
;;
;; And the following to your ~/.emacs startup file.
;;
;; (require 'open-newline)
;;
;; No need more.

;;; Customize:
;;
;;
;;
;; All of the above can customize by:
;;      M-x customize-group RET open-newline RET
;;

;;; Change log:
;;
;; 2019/03/23
;;      * First released.
;;

;;; Acknowledgements:
;;
;;
;;

;;; TODO
;;
;;
;;

;;; Require


;;; Code:

(defun open-newline-above (arg)
  "Move to the previous line (like vi) and then opens a line."
  (interactive "p")
  (beginning-of-line)
  (open-line arg)
  (if (not (member major-mode '(haskell-mode org-mode literate-haskell-mode)))
      (indent-according-to-mode)
    (beginning-of-line)))

(defun open-newline-below (arg)
  "Move to the next line (like vi) and then opens a line."
  (interactive "p")
  (end-of-line)
  (open-line arg)
  (call-interactively 'next-line arg)
  (if (not (member major-mode '(haskell-mode org-mode literate-haskell-mode)))
      (indent-according-to-mode)
    (beginning-of-line)))

(provide 'open-newline)

;;; open-newline.el ends here
