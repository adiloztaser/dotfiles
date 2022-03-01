(use-package company
  :ensure t
  :config
  (add-hook 'after-init-hook 'global-company-mode))

(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook))

(use-package expand-region
  :ensure t
  :bind
  ("C-=" . er/expand-region))

(use-package ag
  :ensure t)

(use-package hlinum
  :ensure t
  :config
  (hlinum-activate))

(use-package linum
  :ensure t
  :config
  (setq linum-format " %3d ")
  (global-linum-mode nil))

(use-package git-gutter-fringe
  :ensure t
  :config
  (global-git-gutter-mode t))

(use-package magit
  :ensure t
  :config
  :bind
  ;; Magic
  ("C-x g s" . magit-status)
  ("C-x g x" . magit-checkout)
  ("C-x g c" . magit-commit)
  ("C-x g p" . magit-push)
  ("C-x g u" . magit-pull)
  ("C-x g e" . magit-ediff-resolve)
  ("C-x g r" . magit-rebase-interactive))

(use-package multiple-cursors
  :ensure t
  :bind
  ("C-S-c C-S-c" . mc/edit-lines)
  ("C->" . mc/mark-next-like-this)
  ("C-<" . mc/mark-previous-like-this)
  ("C-c C->" . mc/mark-all-like-this))

(use-package page-break-lines
  :ensure t)

(use-package projectile
  :ensure t
  :config
  (projectile-global-mode)
  (define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
  (projectile-mode t)
  (setq projectile-enable-caching t)
  (setq projectile-project-search-path '("~/sites/"))
  (add-to-list 'projectile-globally-ignored-files "jquery.js")
  (add-to-list 'projectile-globally-ignored-files "all.js")
  (add-to-list 'projectile-globally-ignored-files "script.js")
  (add-to-list 'projectile-globally-ignored-files "*.min.js")
  (add-to-list 'projectile-globally-ignored-files "**.min.js")
  (add-to-list 'projectile-globally-ignored-files "*/**.min.js")
  (add-to-list 'projectile-globally-ignored-files "**/*.min.js")
  (add-to-list 'projectile-globally-ignored-files "*.min.css")
  (add-to-list 'projectile-globally-ignored-files "**.min.css")
  (add-to-list 'projectile-globally-ignored-files "*/**.min.css")
  (add-to-list 'projectile-globally-ignored-files "**/*.min.css"))

(use-package helm
  :ensure t
  :init
  (require 'helm-config)
  :config
  (setq helm-split-window-in-side-p t
        helm-split-window-default-side 'below
	helm-idle-delay 0.0
	helm-input-idle-delay 0.01
	helm-quick-update t
	helm-ff-skip-boring-files t
	helm-ff-allow-non-existing-file-at-point t)
  (helm-mode 1)
  :bind (("M-x" . helm-M-x)
         ("C-x C-m" . helm-M-x)
         ("C-x C-f" . helm-find-files)
         ("C-x v" . helm-projectile)
         ("C-x c o" . helm-occur)
         ("C-x p s" . helm-projectile-ag)
         ("C-x c k" . helm-show-kill-ring)
         :map helm-map
         ("<tab>" . helm-execute-persistent-action)))

(use-package helm-projectile
  :ensure t)

(use-package helm-ag
  :ensure t)

(custom-set-variables
 '(helm-ag-base-command "ag --nocolor --nogroup --ignore-case")
 '(helm-ag-command-option "--all-text")
 '(helm-ag-insert-at-point 'symbol)
 '(helm-ag-use-agignore t)
 '(helm-ag-ignore-buffer-patterns '("\\.txt\\'" "\\.mkd\\'" "\\.min.\\'")))

(use-package smartparens
  :ensure t)

(use-package windmove
  :ensure t
  :bind
  ("C-x <up>" . windmove-up)
  ("C-x <down>" . windmove-down)
  ("C-x <left>" . windmove-left)
  ("C-x <right>" . windmove-right))

(use-package yasnippet
  :ensure t
  :config
  (yas-global-mode t))

(use-package editorconfig
  :ensure t
  :config
  (editorconfig-mode t))

(use-package flycheck
  :diminish
  :ensure t
  :init
  (global-flycheck-mode))

(use-package dap-mode)
(use-package which-key
    :config
    (which-key-mode))

(provide 'base-extensions)
