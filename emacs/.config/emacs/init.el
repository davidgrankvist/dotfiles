;; --- General ---

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

;; Fuzzy find files/buffers
(ido-mode t)

;; Whitespace in diffs
(add-hook 'diff-mode-hook #'whitespace-mode)

;; --- Org mode ---

(global-set-key (kbd "C-c l") #'org-store-link)
(global-set-key (kbd "C-c a") #'org-agenda)
(global-set-key (kbd "C-c c") #'org-capture)

(defun my/org-mode-hook ()
  ;; Indent nested headings
  (org-indent-mode t))
(add-hook 'org-mode-hook 'my/org-mode-hook)

;; Resize headings based on indentation
(custom-set-faces
 '(org-level-1 ((t (:inherit outline-1 :height 1.5))))
 '(org-level-2 ((t (:inherit outline-2 :height 1.3))))
 '(org-level-3 ((t (:inherit outline-3 :height 1.1))))
 '(org-level-4 ((t (:inherit outline-4 :height 1.0))))
 '(org-level-5 ((t (:inherit outline-5 :height 1.0))))
 '(org-level-6 ((t (:inherit outline-6 :height 1.0))))
 '(org-level-7 ((t (:inherit outline-7 :height 1.0))))
 '(org-level-8 ((t (:inherit outline-8 :height 1.0)))))

;; --- C mode ---

(defun my/c-mode-hook ()
  ;; Indent = 4 spaces
  (setq c-basic-offset 4)
  (setq indent-tabs-mode nil)
  (c-set-offset 'case-label '+))
(add-hook 'c-mode-hook 'my/c-mode-hook)
