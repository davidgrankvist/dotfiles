;; Start initial frame maximized.
;; This is done from early-init.el to avoid an animation
;; after the Emacs frame has already been created.
(push '(fullscreen . maximized) default-frame-alist)
