;; MELPA
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))

;; packages
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  )

;;THEMES
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-view-program-selection
   (quote
    (((output-dvi has-no-display-manager)
      "dvi2tty")
     ((output-dvi style-pstricks)
      "dvips and gv")
     (output-dvi "xdvi")
     (output-pdf "Evince")
     (output-html "xdg-open"))))
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(custom-enabled-themes (quote (paganini)))
 '(custom-safe-themes
   (quote
    ("f146cf0feba4fed38730de65e924e26140b470a4d503287e9ddcf7cca0b5b3f0" default)))
 '(inhibit-startup-screen t)
 '(markdown-command "/usr/local/bin/pandoc")
 '(package-selected-packages
   (quote
    (rust-playground rust-mode auctex paganini-theme markdown-preview-mode markdown-mode+)))
 '(show-paren-mode t)
 '(vc-follow-symlinks nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Ubuntu Mono" :foundry "DAMA" :slant normal :weight normal :height 158 :width normal)))))

;;CONFIGS

(setf fill-column 80)
(add-hook 'latex-mode-hook #'auto-fill-mode)
(setq default-cursor-type 'bar)
(delete-selection-mode 1)
(put 'upcase-region 'disabled nil)
(setq backup-directory-alist '(("" . "~/.emacs.d/backups")))
(global-linum-mode t)
