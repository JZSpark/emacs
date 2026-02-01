(setq work-path (file-name-directory load-file-name))

(add-to-list 'load-path (expand-file-name "lisp" work-path))

(require 'core)
(require 'editor)
(require 'packages)
