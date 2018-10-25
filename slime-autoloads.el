;;; slime-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "contrib/bridge" "contrib/bridge.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from contrib/bridge.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "contrib/bridge" '("bridge-" "hand-bridge" "install-bridge" "remove-bridge" "reset-bridge")))

;;;***

;;;### (autoloads nil "contrib/inferior-slime" "contrib/inferior-slime.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from contrib/inferior-slime.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "contrib/inferior-slime" '("inferior-slime-")))

;;;***

;;;### (autoloads nil "contrib/slime-asdf" "contrib/slime-asdf.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from contrib/slime-asdf.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "contrib/slime-asdf" '("slime-")))

;;;***

;;;### (autoloads nil "contrib/slime-autodoc" "contrib/slime-autodoc.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from contrib/slime-autodoc.el

(defvar slime-autodoc-mode-string (purecopy " adoc") "\
String to display in mode line when Autodoc Mode is enabled; nil for none.")

(custom-autoload 'slime-autodoc-mode-string "contrib/slime-autodoc" t)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "contrib/slime-autodoc" '("slime-")))

;;;***

;;;### (autoloads nil "contrib/slime-banner" "contrib/slime-banner.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from contrib/slime-banner.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "contrib/slime-banner" '("slime-")))

;;;***

;;;### (autoloads nil "contrib/slime-c-p-c" "contrib/slime-c-p-c.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from contrib/slime-c-p-c.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "contrib/slime-c-p-c" '("slime-")))

;;;***

;;;### (autoloads nil "contrib/slime-cl-indent" "contrib/slime-cl-indent.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from contrib/slime-cl-indent.el

(autoload 'common-lisp-indent-function "contrib/slime-cl-indent" "\
Function to indent the arguments of a Lisp function call.
This is suitable for use as the value of the variable
`lisp-indent-function'.  INDENT-POINT is the point at which the
indentation function is called, and STATE is the
`parse-partial-sexp' state at that position.  Browse the
`lisp-indent' customize group for options affecting the behavior
of this function.

If the indentation point is in a call to a Lisp function, that
function's common-lisp-indent-function property specifies how
this function should indent it.  Possible values for this
property are:

* defun, meaning indent according to `lisp-indent-defun-method';
  i.e., like (4 &lambda &body), as explained below.

* any other symbol, meaning a function to call.  The function should
  take the arguments: PATH STATE INDENT-POINT SEXP-COLUMN NORMAL-INDENT.
  PATH is a list of integers describing the position of point in terms of
  list-structure with respect to the containing lists.  For example, in
  ((a b c (d foo) f) g), foo has a path of (0 3 1).  In other words,
  to reach foo take the 0th element of the outermost list, then
  the 3rd element of the next list, and finally the 1st element.
  STATE and INDENT-POINT are as in the arguments to
  `common-lisp-indent-function'.  SEXP-COLUMN is the column of
  the open parenthesis of the innermost containing list.
  NORMAL-INDENT is the column the indentation point was
  originally in.  This function should behave like `lisp-indent-259'.

* an integer N, meaning indent the first N arguments like
  function arguments, and any further arguments like a body.
  This is equivalent to (4 4 ... &body).

* a list starting with `as' specifies an indirection: indentation is done as
  if the form being indented had started with the second element of the list.

* any other list.  The list element in position M specifies how to indent the
  Mth function argument.  If there are fewer elements than function arguments,
  the last list element applies to all remaining arguments.  The accepted list
  elements are:

  * nil, meaning the default indentation.

  * an integer, specifying an explicit indentation.

  * &lambda.  Indent the argument (which may be a list) by 4.

  * &rest.  When used, this must be the penultimate element.  The
    element after this one applies to all remaining arguments.

  * &body.  This is equivalent to &rest lisp-body-indent, i.e., indent
    all remaining elements by `lisp-body-indent'.

  * &whole.  This must be followed by nil, an integer, or a
    function symbol.  This indentation is applied to the
    associated argument, and as a base indent for all remaining
    arguments.  For example, an integer P means indent this
    argument by P, and all remaining arguments by P, plus the
    value specified by their associated list element.

  * a symbol.  A function to call, with the 6 arguments specified above.

  * a list, with elements as described above.  This applies when the
    associated function argument is itself a list.  Each element of the list
    specifies how to indent the associated argument.

For example, the function `case' has an indent property
\(4 &rest (&whole 2 &rest 1)), meaning:
  * indent the first argument by 4.
  * arguments after the first should be lists, and there may be any number
    of them.  The first list element has an offset of 2, all the rest
    have an offset of 2+1=3.

\(fn INDENT-POINT STATE)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "contrib/slime-cl-indent" '("common-lisp-" "define-common-lisp-style" "lisp-")))

;;;***

;;;### (autoloads nil "contrib/slime-clipboard" "contrib/slime-clipboard.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from contrib/slime-clipboard.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "contrib/slime-clipboard" '("slime-clipboard")))

;;;***

;;;### (autoloads nil "contrib/slime-compiler-notes-tree" "contrib/slime-compiler-notes-tree.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from contrib/slime-compiler-notes-tree.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "contrib/slime-compiler-notes-tree" '("slime-")))

;;;***

;;;### (autoloads nil "contrib/slime-editing-commands" "contrib/slime-editing-commands.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from contrib/slime-editing-commands.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "contrib/slime-editing-commands" '("slime-")))

;;;***

;;;### (autoloads nil "contrib/slime-enclosing-context" "contrib/slime-enclosing-context.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from contrib/slime-enclosing-context.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "contrib/slime-enclosing-context" '("slime-")))

;;;***

;;;### (autoloads nil "contrib/slime-fancy" "contrib/slime-fancy.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from contrib/slime-fancy.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "contrib/slime-fancy" '("slime-fancy")))

;;;***

;;;### (autoloads nil "contrib/slime-fancy-inspector" "contrib/slime-fancy-inspector.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from contrib/slime-fancy-inspector.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "contrib/slime-fancy-inspector" '("slime-")))

;;;***

;;;### (autoloads nil "contrib/slime-fancy-trace" "contrib/slime-fancy-trace.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from contrib/slime-fancy-trace.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "contrib/slime-fancy-trace" '("slime-")))

;;;***

;;;### (autoloads nil "contrib/slime-fontifying-fu" "contrib/slime-fontifying-fu.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from contrib/slime-fontifying-fu.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "contrib/slime-fontifying-fu" '("slime-")))

;;;***

;;;### (autoloads nil "contrib/slime-fuzzy" "contrib/slime-fuzzy.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from contrib/slime-fuzzy.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "contrib/slime-fuzzy" '("slime-")))

;;;***

;;;### (autoloads nil "contrib/slime-highlight-edits" "contrib/slime-highlight-edits.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from contrib/slime-highlight-edits.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "contrib/slime-highlight-edits" '("slime-")))

;;;***

;;;### (autoloads nil "contrib/slime-hyperdoc" "contrib/slime-hyperdoc.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from contrib/slime-hyperdoc.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "contrib/slime-hyperdoc" '("slime-")))

;;;***

;;;### (autoloads nil "contrib/slime-indentation" "contrib/slime-indentation.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from contrib/slime-indentation.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "contrib/slime-indentation" '("slime-")))

;;;***

;;;### (autoloads nil "contrib/slime-listener-hooks" "contrib/slime-listener-hooks.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from contrib/slime-listener-hooks.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "contrib/slime-listener-hooks" '("slime-listener-hooks")))

;;;***

;;;### (autoloads nil "contrib/slime-macrostep" "contrib/slime-macrostep.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from contrib/slime-macrostep.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "contrib/slime-macrostep" '("macrostep-slime-" "slime-macrostep")))

;;;***

;;;### (autoloads nil "contrib/slime-mdot-fu" "contrib/slime-mdot-fu.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from contrib/slime-mdot-fu.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "contrib/slime-mdot-fu" '("slime-")))

;;;***

;;;### (autoloads nil "contrib/slime-media" "contrib/slime-media.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from contrib/slime-media.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "contrib/slime-media" '("slime-")))

;;;***

;;;### (autoloads nil "contrib/slime-mrepl" "contrib/slime-mrepl.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from contrib/slime-mrepl.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "contrib/slime-mrepl" '("?m" "slime-")))

;;;***

;;;### (autoloads nil "contrib/slime-package-fu" "contrib/slime-package-fu.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from contrib/slime-package-fu.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "contrib/slime-package-fu" '("slime-")))

;;;***

;;;### (autoloads nil "contrib/slime-parse" "contrib/slime-parse.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from contrib/slime-parse.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "contrib/slime-parse" '("slime-")))

;;;***

;;;### (autoloads nil "contrib/slime-presentation-streams" "contrib/slime-presentation-streams.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from contrib/slime-presentation-streams.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "contrib/slime-presentation-streams" '("slime-presentation-streams")))

;;;***

;;;### (autoloads nil "contrib/slime-presentations" "contrib/slime-presentations.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from contrib/slime-presentations.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "contrib/slime-presentations" '("slime-")))

;;;***

;;;### (autoloads nil "contrib/slime-quicklisp" "contrib/slime-quicklisp.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from contrib/slime-quicklisp.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "contrib/slime-quicklisp" '("slime-")))

;;;***

;;;### (autoloads nil "contrib/slime-references" "contrib/slime-references.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from contrib/slime-references.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "contrib/slime-references" '("sldb-maybe-insert-references" "slime-")))

;;;***

;;;### (autoloads nil "contrib/slime-repl" "contrib/slime-repl.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from contrib/slime-repl.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "contrib/slime-repl" '("?r" "defslime-repl-shortcut" "nil" "sldb-" "slime-")))

;;;***

;;;### (autoloads nil "contrib/slime-sbcl-exts" "contrib/slime-sbcl-exts.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from contrib/slime-sbcl-exts.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "contrib/slime-sbcl-exts" '("slime-")))

;;;***

;;;### (autoloads nil "contrib/slime-scheme" "contrib/slime-scheme.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from contrib/slime-scheme.el

(autoload 'slime-scheme-mode-hook "contrib/slime-scheme" "\


\(fn)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "contrib/slime-scheme" '("slime-scheme-")))

;;;***

;;;### (autoloads nil "contrib/slime-scratch" "contrib/slime-scratch.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from contrib/slime-scratch.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "contrib/slime-scratch" '("slime-s")))

;;;***

;;;### (autoloads nil "contrib/slime-snapshot" "contrib/slime-snapshot.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from contrib/slime-snapshot.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "contrib/slime-snapshot" '("slime-")))

;;;***

;;;### (autoloads nil "contrib/slime-sprof" "contrib/slime-sprof.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from contrib/slime-sprof.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "contrib/slime-sprof" '("slime-sprof")))

;;;***

;;;### (autoloads nil "contrib/slime-trace-dialog" "contrib/slime-trace-dialog.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from contrib/slime-trace-dialog.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "contrib/slime-trace-dialog" '("slime-trace-dialog")))

;;;***

;;;### (autoloads nil "contrib/slime-tramp" "contrib/slime-tramp.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from contrib/slime-tramp.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "contrib/slime-tramp" '("slime-")))

;;;***

;;;### (autoloads nil "contrib/slime-typeout-frame" "contrib/slime-typeout-frame.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from contrib/slime-typeout-frame.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "contrib/slime-typeout-frame" '("slime-")))

;;;***

;;;### (autoloads nil "contrib/slime-xref-browser" "contrib/slime-xref-browser.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from contrib/slime-xref-browser.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "contrib/slime-xref-browser" '("slime-")))

;;;***

;;;### (autoloads nil "slime" "slime.el" (0 0 0 0))
;;; Generated autoloads from slime.el

(autoload 'slime-setup "slime" "\
Setup Emacs so that lisp-mode buffers always use SLIME.
CONTRIBS is a list of contrib packages to load. If `nil', use
`slime-contribs'. 

\(fn &optional CONTRIBS)" t nil)

(autoload 'slime-lisp-mode-hook "slime" "\


\(fn)" nil nil)

(autoload 'slime-mode "slime" "\
\\<slime-mode-map>SLIME: The Superior Lisp Interaction Mode for Emacs (minor-mode).

If called interactively, enable Slime mode if ARG is positive, and
disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it
if ARG is `toggle'; disable the mode otherwise.

Commands to compile the current buffer's source file and visually
highlight any resulting compiler notes and warnings:
\\[slime-compile-and-load-file]	- Compile and load the current buffer's file.
\\[slime-compile-file]	- Compile (but not load) the current buffer's file.
\\[slime-compile-defun]	- Compile the top-level form at point.

Commands for visiting compiler notes:
\\[slime-next-note]	- Goto the next form with a compiler note.
\\[slime-previous-note]	- Goto the previous form with a compiler note.
\\[slime-remove-notes]	- Remove compiler-note annotations in buffer.

Finding definitions:
\\[slime-edit-definition]
- Edit the definition of the function called at point.
\\[slime-pop-find-definition-stack]
- Pop the definition stack to go back from a definition.

Documentation commands:
\\[slime-describe-symbol]	- Describe symbol.
\\[slime-apropos]	- Apropos search.
\\[slime-disassemble-symbol]	- Disassemble a function.

Evaluation commands:
\\[slime-eval-defun]	- Evaluate top-level from containing point.
\\[slime-eval-last-expression]	- Evaluate sexp before point.
\\[slime-pprint-eval-last-expression]	- Evaluate sexp before point, pretty-print result.

Full set of commands:
\\{slime-mode-map}

\(fn &optional ARG)" t nil)

(autoload 'slime "slime" "\
Start an inferior^_superior Lisp and connect to its Swank server.

\(fn &optional COMMAND CODING-SYSTEM)" t nil)

(autoload 'slime-connect "slime" "\
Connect to a running Swank server. Return the connection.

\(fn HOST PORT &optional CODING-SYSTEM INTERACTIVE-P)" t nil)

(autoload 'slime-selector "slime" "\
Select a new buffer by type, indicated by a single character.
The user is prompted for a single character indicating the method by
which to choose a new buffer. The `?' character describes the
available methods.

See `def-slime-selector-method' for defining new methods.

\(fn &optional OTHER-WINDOW)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slime" '("??" "?c" "?d" "?e" "?i" "?l" "?n" "?p" "?q" "?t" "?v" "def-slime-selector-method" "define-sl" "inferior-lisp-program" "make-slime-" "sldb-" "slime-")))

;;;***

;;;### (autoloads nil nil ("slime-tests.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; slime-autoloads.el ends here
