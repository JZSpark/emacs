(require 'package)
(setq package-archives
      '(("melpa-cn" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
        ("gnu-cn"   . "https://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
        ("org-cn"   . "https://mirrors.tuna.tsinghua.edu.cn/elpa/org/"))
      package-archive-priorities
      '(("melpa-cn" . 10)
        ("gnu-cn"   . 5)
        ("org-cn"   . 3)))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))
(use-package use-package
  :ensure nil
  :config
  (setq package-always-ensure t))

(use-package ivy
  :ensure t
  :init
  (ivy-mode 1)
  :config
  (setq enable-recursive-minibuffers t)
  (setq ivy-use-virtual-buffers t))

(use-package counsel
  :ensure t
  :init
  (counsel-mode 1))

(use-package which-key
  :ensure t
  :init
  (which-key-mode 1)
  :config
  (setq which-key-idle-delay 0.5))

(use-package catppuccin-theme
  :ensure t
  :config
  (setq catppuccin-flavor 'mocha)
  (load-theme 'catppuccin t))

(use-package evil
  :ensure t
  :init
  (setq evil-want-integration t)
  (setq evil-want-keybinding nil)
  (setq evil-normal-state-cursor 'box)
  (setq evil-insert-state-cursor 'bar)
  :config
  (evil-mode 1)
  (global-set-key (kbd "C-c v") 'evil-mode))

(provide 'packages)
