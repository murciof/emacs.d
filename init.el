;; On Debian/Ubuntu: run 'sudo apt install elpa-olivetti elpa-fountain-mode elpa-org-bullets elpa-zenburn-theme elpa-markdown-mode elpa-company pandoc markdown'

(add-to-list 'default-frame-alist '(fullscreen . maximized))

;;(setq ispell-dictionary "eo")
;;(setq flyspell-default-dictionary "eo")
(setq create-lockfiles nil)
(setq make-backup-files nil)
(setq inhibit-startup-screen t)
(setq olivetti-body-width 120)
(setq org-hide-emphasis-markers t)
(setq-default line-spacing 5)
;;(setq markdown-command "pandoc -f markdown -t html")

(require 'package)
(require 'olivetti)
(require 'fountain-mode)
;;(require 'org-bullets)
(require 'zenburn-theme)
;;(require 'markdown-mode)
(require 'company)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(package-initialize)

(defun cfg-disable-linum ()
  (display-line-numbers-mode -1))

(defun activate-writing-mode ()
  (variable-pitch-mode 1)
  ;;(global-hl-line-mode 0)
  (setq line-spacing 2)
  (setq left-fringe-width 0)
  (setq right-fringe-width 0))

(add-hook 'after-init-hook 'global-company-mode)
(add-hook 'text-mode-hook 'olivetti-mode)
;;(add-hook 'text-mode-hook 'flyspell-mode)
(add-hook 'text-mode-hook 'cfg-disable-linum)
(add-hook 'text-mode-hook 'activate-writing-mode)
(add-hook 'org-mode-hook 'outline-minor-mode)
;;(add-hook 'org-mode-hook 'org-bullets-mode)

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(savehist-mode 1)
(global-visual-line-mode 1)
;;(global-hl-line-mode 1)
(global-display-line-numbers-mode 1)
(display-time-mode 1)

(load-theme 'zenburn t)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 105 :width normal :family "Iosevka Slab"))))
 '(org-level-1 ((t (:inherit default :weight bold :height 140))))
 '(org-level-2 ((t (:inherit default :weight bold :height 140))))
 '(org-level-3 ((t (:inherit default :weight bold :height 140))))
 '(org-level-4 ((t (:inherit default :weight bold :height 140))))
 '(org-level-5 ((t (:inherit default :weight bold :height 140))))
 '(org-level-6 ((t (:inherit default :weight bold :height 140))))
 '(org-level-7 ((t (:inherit default :weight bold :height 140))))
 '(org-level-8 ((t (:inherit default :weight bold :height 140))))
 '(org-table ((t (:inherit default :height 105 :family "Iosevka Slab"))))
 '(org-block ((t (:inherit default :height 105 :family "Iosevka Slab"))))
 '(org-code ((t (:inherit default :height 105 :family "Iosevka Slab"))))
 '(variable-pitch ((t (:height 125 :family "Liberation Serif")))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(auctex company zenburn-theme fountain-mode olivetti)))
