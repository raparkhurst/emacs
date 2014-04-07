;; Disable Startup message
(setq inhibit-startup-message t)
(setq inhibit-splash-screen t)

;; set tab widths
(setq c-basic-offset 2)
(setq tab-width 2)
;; (setq indent-tabs-mode nil)

(turn-on-font-lock)

(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/.emacs.d/emacs-nav-49")


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Color Theme Setup
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
;; Color Theme settings
(require 'color-theme)

;; Solarized Theme
(add-to-list 'load-path "~/.emacs.d/themes/emacs-color-theme-solarized")
(add-to-list 'load-path "~/.emacs.d/themes/")
(require 'color-theme-solarized)

;; Set my Theme
(color-theme-initialize)
;;(color-theme-classic)
;;(color-theme-matrix)
;;(color-theme-solarized-dark)
;;(color-theme-dark-laptop)
(color-theme-gray30)

;;(load-file "~/.emacs.d/themes/hickey-theme.el")

;;(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
;;(load-theme 'zenburn t)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                    END themes section
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Handle various file types / modes
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Org-Mode
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)

;;(setq org-capture-templates
;;      '(("s" "Status" entry (file+headline "~/Documents/notes.org" "Status")
;;             "** Status"
;;	     " - Tickets Worked On"
;;	     " - Tickets Closed")

;;(define-key global-map "\C-cs"
;;  (lambda () (interactive) (org-capture nil "s")

;; load ruby when .rb file is loaded
(autoload 'ruby-mode "ruby-mode" "Major mode for editing ruby scripts." t)
(setq auto-mode-alist  (cons '(".rb$" . ruby-mode) auto-mode-alist))
(setq auto-mode-alist  (cons '(".rhtml$" . html-mode) auto-mode-alist))

(autoload 'chef-mode "chef-mode" "Major mode for editing Chef" t)
(autoload 'auto-indent-mode "auto-indent-mode" "minor mode for indentation" t)
(autoload 'line-num "line-num" "minor mode for line-numbering" t)

(global-linum-mode 1)
(global-font-lock-mode 1)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                  END modes section
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;  Misc/Other section (mostly setting changes made by Emacs and saved out to
;;  to file)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; file navigator(add-to-list 'load-path "/directory/containing/nav/")
(require 'nav)
(nav-disable-overeager-window-splitting)
;; Optional: set up a quick key to toggle nav
(global-set-key [f12] 'nav-toggle)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(cua-mode t nil (cua-base))
 '(font-use-system-font t)
 '(save-place t nil (saveplace))
 '(tab-stop-list (quote (2 4 6 8 10 12 14 16 18 20 22 24 26 28 30)))
 '(text-mode-hook (quote (turn-on-auto-fill text-mode-hook-identify))))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "darkslategrey" :foreground "AntiqueWhite" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 83 :width normal :foundry "unknown" :family "DejaVu Sans Mono")))))

(scroll-bar-mode 1)
(menu-bar-mode 1)

(set-default-font "Monospace 9")
