(use-package ac-php
  :ensure t)

(use-package flymake-php
  :ensure t)

(use-package company-php
  :ensure t)

(use-package lsp-mode
  :config
  (setq lsp-prefer-flymake nil)
  :hook
  (php-mode . lsp)
  :commands lsp)
 
(setq lsp-headerline-breadcrumb-enable nil)
(setq lsp-enable-file-watchers t)

(use-package lsp-ui
  :requires lsp-mode flycheck
  :config
  (setq lsp-ui-doc-enable t
  lsp-ui-doc-use-childframe t
  lsp-ui-doc-position 'top
  lsp-ui-doc-include-signature t
  lsp-ui-sideline-enable nil
  lsp-ui-flycheck-enable t
  lsp-ui-flycheck-list-position 'right
  lsp-ui-flycheck-live-reporting t
  lsp-ui-peek-enable t
  lsp-ui-peek-list-width 60
  lsp-ui-peek-peek-height 25
  lsp-ui-sideline-enable nil)
  (add-hook 'lsp-mode-hook 'lsp-ui-mode))

(use-package php-mode
  :ensure t
  :mode
  (("\\.php\\'" . php-mode))
  :config
  (setq lsp-mode t)
  (add-hook 'php-mode-hook 'flymake-mode)
  (add-hook 'php-mode-hook
	    '(lambda ()
	       (require 'company-php)
	       (company-mode t)
	       (add-to-list 'company-backends 'company-ac-php-backend)))

  (add-hook 'php-mode-hook 'php-enable-wordpress-coding-style))

(provide 'lang-php)
