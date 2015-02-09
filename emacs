;; Titouan CREACH
;; .emacs
;; Janvier 2015

;; Enlever le buffer de base
(setq inhibit-startup-message t)

;; Numero de ligne et de colonnes
(setq column-number-mode 1)

;; Personne n'utilise la touche insert
(global-set-key [insert] 'nil)

;; Ajout d'une ligne vide en fin de fichier a l'enregistrement
(setq require-final-newline t)

;; Reponses courtes
(fset 'yes-or-no-p 'y-or-n-p)

;; Liste des repos
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			 ("marmalade" . "https://marmalade-repo.org/packages/")
			 ("melpa" . "http://melpa.milkbox.net/packages/")))


;; Initialisation des packages
(package-initialize)

;; L'autocompletion
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/elpa/auto-complete-20150121.538/dict")
(ac-config-default)

(global-set-key [f3] 'compile)
(global-set-key [f4] 'recompile)


;; Jade templates
(require 'jade-mode)    
(add-to-list 'auto-mode-alist '("\\.jade$" . jade-mode))

(require 'dart-mode)
(add-to-list 'auto-mode-alist '("\\.dart$" . dart-mode))

(custom-set-variables
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (sanityinc-tomorrow-eighties)))
 '(custom-safe-themes
   (quote
    ("628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" default))))
(custom-set-faces
 )


;; bouger avec shift + fleches
(when (fboundp 'windmove-default-keybindings)
    (windmove-default-keybindings))

;; Gestion plus simple des buffers
(require 'ido)
(ido-mode t)

;; markdown syntax 
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)

(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

