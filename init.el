(setq ispell-dictionary "eo")
(setq flyspell-default-dictionary "eo")
(setq create-lockfiles nil)
(setq make-backup-files nil)
(setq inhibit-startup-screen t)
(setq olivetti-body-width 90)

(require 'olivetti)
(require 'fountain-mode)
(require 'org-bullets)
(require 'zenburn-theme)
(package-initialize)

(defun cfg-disable-linum ()
  (display-line-numbers-mode -1))

(add-hook 'text-mode-hook 'olivetti-mode)
(add-hook 'text-mode-hook 'flyspell-mode)
(add-hook 'text-mode-hook 'cfg-disable-linum)
(add-hook 'org-mode-hook 'outline-minor-mode)
(add-hook 'org-mode-hook 'org-bullets-mode)

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(savehist-mode 1)
(global-visual-line-mode 1)
(global-display-line-numbers-mode 1)
(display-time-mode 1)

(custom-set-variables
'(custom-enabled-themes (quote (zenburn)))
 '(custom-safe-themes
   (quote
    ("99bc178c2856c32505c514ac04bf25022eaa02e2fddc5e7cdb40271bc708de39" default))))
(custom-set-faces
 '(default ((t (:inherit nil :stipple nil :background "#222d32" :foreground "#cfd8dc" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 105 :width normal :family "Fira Code")))))
