(use-package ac-php
  :ensure t)

(use-package flymake-php
  :ensure t)

(use-package php-mode
  :ensure t
  :mode
  (("\\.php\\'" . php-mode))
  :config
  (add-hook 'php-mode-hook 'flymake-mode)
  (add-hook 'php-mode-hook
	    '(lambda ()
	       (require 'company-php)
	       (company-mode t)
	       (add-to-list 'company-backends 'company-ac-php-backend)))

  (add-hook 'php-mode-hook 'php-enable-wordpress-coding-style))

(provide 'lang-php)
