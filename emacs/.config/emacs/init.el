;; Hide distracting things
(setq inhibit-startup-message t)
(scroll-bar-mode 0)
(tool-bar-mode 0)
(tooltip-mode 0)
(menu-bar-mode 0)

;; Theme and font
(load-theme 'tango-dark)
(if (eq system-type 'windows-nt)
  (set-face-attribute 'default nil :family "DejaVu Sans Mono" :height 75)
  (set-face-attribute 'default nil :family "DejaVu Sans Mono"))

;; Line and column numbers
(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode)
(column-number-mode 1)

;; Store settings that were automatically added by Customize in a separate file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

;; Fuzzy finds//buffers
(ido-mode t)

;; Org mode
(global-set-key (kbd "C-c l") #'org-store-link)
(global-set-key (kbd "C-c a") #'org-agenda)
(global-set-key (kbd "C-c c") #'org-capture)

;; C mode
(defun my/c-mode-hook ()
  ;; Indent = 4 spaces
  (setq c-basic-offset 4)
  (setq indent-tabs-mode nil)
  (c-set-offset 'case-label '+))
(add-hook 'c-mode-hook 'my/c-mode-hook)

;; Whitespace in diffs
(add-hook 'diff-mode-hook #'whitespace-mode)
