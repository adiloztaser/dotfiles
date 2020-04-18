;; js2-mode
;; https://github.com/mooz/js2-mode
(use-package js2-mode
  :ensure t
  :bind (:map js2-mode-map
              (("C-x C-e" . js-send-last-sexp)
               ("C-M-x" . js-send-last-sexp-and-go)
               ("C-c C-b" . js-send-buffer-and-go)
               ("C-c C-l" . js-load-file-and-go)))
  :mode
  ("\\.js$" . js2-mode)
  ("\\.json$" . js2-jsx-mode)
  :config
  (custom-set-variables '(js2-strict-inconsistent-return-warning nil))
  (custom-set-variables '(js2-strict-missing-semi-warning nil)))

  ;; Run a JavaScript interpreter in an inferior process window
  ;; https://github.com/redguardtoo/js-comint
(use-package js-comint
  :ensure t
  :config
  (setq inferior-js-program-command "node"))

(provide 'lang-javascript)
