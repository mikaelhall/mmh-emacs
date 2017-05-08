;;(add-to-list 'load-path "~/.emacs.d/Focus-master")
;;(require 'focus)
(add-to-list 'load-path "~/.emacs.d/olivetti-master")
(require 'olivetti)
(add-to-list 'load-path "~/.emacs.d/typewriter-mode-master")
(require 'typewriter)
(add-to-list 'load-path "~/.emacs.d/tomatinho-master")
(require 'tomatinho)
(add-to-list 'load-path "~/.emacs.d/epresent-master")
(require 'epresent)
(add-to-list 'load-path "~/.emacs.d/edit")
;(require 'git)
;(add-to-list 'load-path "~/.emacs.d/mustache.el-master")
;(require 'mustache)  
;(add-to-list 'load-path "~/.emacs.d/org-page-master")
;(require 'org-page) 

;; active Babel languages
(org-babel-do-load-languages
 'org-babel-load-languages
 '((R . t)
   (python . t)
   (picolisp . t)
   ))


(global-set-key (kbd "C-<up>") 'org-move-subtree-up)
(global-set-key (kbd "C-<down>") 'org-move-subtree-down)

     ;; In order to get the picolisp-mode working correctly you have to
     ;; add the following expressions to your .emacs and adapt them 
     ;; according to your set-up: 
     
     (add-to-list 'load-path "~/picoLisp/lib/el")
    (load "tsm.el") ;; Picolisp TransientSymbolsMarkup (*Tsm)
    (autoload 'run-picolisp "inferior-picolisp")
     (autoload 'picolisp-mode "picolisp" "Major mode for editing
     
 Picolisp." t)
     ;; pil is more modern than plmod
     (setq picolisp-program-name "pil") 
     
     ;; If you have also SLIME installed, it will suck all possible lisp
     ;; extensions up (greedy bastard). 
     ;; So in order to get the correct file-association for picolisp 
     ;; files you'll have to also add this:
     
     ;;(add-to-list 'auto-mode-alist '("\\.l$" . picolisp-mode))
     
     ;; If you want, you can add a few hooks for convenience:
     
     (add-hook 'picolisp-mode-hook
        (lambda ()
           (paredit-mode +1) ;; Loads paredit mode automatically
           (tsm-mode) ;; Enables TSM
           (define-key picolisp-mode-map (kbd "RET") 'newline-and-indent)
           (define-key picolisp-mode-map (kbd "C-h") 'paredit-backward-delete) ) )
     
     
     ;; By the way, don't forget to patch your paredit.el (v21) with the
     ;;  patch provided to get a smoother editing. 

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(custom-enabled-themes (quote (wheatgrass)))
 '(org-agenda-files (quote ("~/Dropbox/mmhorg/mmh/mikael.org"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
