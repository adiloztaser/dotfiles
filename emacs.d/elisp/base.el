(package-initialize)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(when (not package-archive-contents)
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(require 'use-package)

;; Core settings

(set-charset-priority 'unicode)
(setq locale-coding-system   'utf-8)   ; pretty
(set-terminal-coding-system  'utf-8)   ; pretty
(set-keyboard-coding-system  'utf-8)   ; pretty
(set-selection-coding-system 'utf-8)   ; please
(prefer-coding-system        'utf-8)   ; with sugar on top
(setq default-process-coding-system '(utf-8-unix . utf-8-unix))

(setq make-backup-files nil)

;; Disable toolbar & menubar
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Emacs customizations
(setq confirm-nonexistent-file-or-buffer  t
      save-interprogram-paste-before-kill t
      mouse-yank-at-point                 t
      visible-bell                        nil
      ring-bell-function                  'ignore
      minibuffer-prompt-properties
      '(read-only t point-entered minibuffer-avoid-prompt face minibuffer-prompt)

      ;; Disable non selected window highlight
      cursor-in-non-selected-windows     nil
      highlight-nonselected-windows      nil
      inhibit-startup-message            t
      fringes-outside-margins            t
      x-select-enable-clipboard          t
      use-package-always-ensure          t)

(global-auto-revert-mode t)

(setq-default cursor-type 'box
              fill-column 80
              indent-tabs-mode nil
              truncate-lines t)

(defalias 'yes-or-no-p 'y-or-n-p)

;; Delete trailing whitespace before save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(provide 'base)
