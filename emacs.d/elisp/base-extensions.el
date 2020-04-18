(use-package ace-jump-mode
  :ensure t
  :bind
  ("C-c SPC" . ace-jump-mode))

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
         ("C-x c p" . helm-projectile-ag)
         ("C-x c k" . helm-show-kill-ring)
         :map helm-map
         ("<tab>" . helm-execute-persistent-action)))

(use-package helm-projectile
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

(use-package org
  :ensure t
  :config
  (setq org-directory "~/org-files"
        org-default-notes-file (concat org-directory "/todo.org"))
  :bind
  ("C-c l" . org-store-link)
  ("C-c a" . org-agenda))

(use-package org-projectile
  :ensure t
  :config
  (org-projectile-per-project)
  (setq org-projectile-per-project-filepath "todo.org"
	org-agenda-files (append org-agenda-files (org-projectile-todo-files))))

(use-package org-bullets
  :ensure t
  :config
  (setq org-hide-leading-stars t)
  (add-hook 'org-mode-hook
            (lambda ()
              (org-bullets-mode t))))

(use-package page-break-lines
  :ensure t)

(use-package projectile
  :ensure t
  :config
  (projectile-global-mode)
  (define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
  (projectile-mode t)
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

(use-package smartparens
  :ensure t)

(use-package windmove
  :ensure t
  :bind
  ("C-x <up>" . windmove-up)
  ("C-x <down>" . windmove-down)
  ("C-x <left>" . windmove-left)
  ("C-x <right>" . windmove-right))

(use-package wgrep
  :ensure t)

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

(use-package telephone-line
  :ensure t 
  :config
  (setq telephone-line-primary-left-separator 'telephone-line-cubed-left
      telephone-line-secondary-left-separator 'telephone-line-cubed-hollow-left
      telephone-line-primary-right-separator 'telephone-line-cubed-right
      telephone-line-secondary-right-separator 'telephone-line-cubed-hollow-right)
  (telephone-line-mode t))

(provide 'base-extensions)
