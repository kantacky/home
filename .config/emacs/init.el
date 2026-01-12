;; パッケージ管理の設定
(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("gnu" . "https://elpa.gnu.org/packages/")))
(package-initialize)

;; use-packageのインストール
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)

;; 基本設定
(setq inhibit-startup-message t)       ;; スタートアップメッセージを非表示
(setq make-backup-files nil)           ;; バックアップファイルを作成しない
(setq auto-save-default nil)           ;; 自動保存を無効化
(global-display-line-numbers-mode t)   ;; 行番号を表示

;; パッケージ設定
;; (use-package ivy
;;   :ensure t
;;   :bind (("C-s" . swiper)
;;          ("C-c C-r" . ivy-resume)
;;          ("M-x" . counsel-M-x)
;;          ("C-x C-f" . counsel-find-file))
;;   :config
;;   (ivy-mode 1))

;; (use-package magit
;;   :ensure t
;;   :bind (("C-x g" . magit-status)))

;; (use-package which-key
;;   :ensure t
;;   :config
;;   (which-key-mode))

;; テーマ
;; (use-package doom-themes
;;   :ensure t
;;   :config
;;   (load-theme 'doom-one t))
(add-hook 'tty-setup-hook
          '(lambda ()
             (set-terminal-parameter nil 'background-mode 'dark)))

;; カスタム関数
;; (defun open-init-file()
;;   (interactive)
;;   (find-file user-init-file))
;; (global-set-key (kbd "C-c I") 'open-init-file)

;; キーマッピング
;; (global-set-key (kbd "C-x C-b") 'ibuffer)
;; (global-set-key (kbd "M-o") 'other-window)
;; (global-set-key (kbd "C-c r") 'replace-string)

;; インデント設定
(setq-default indent-tabs-mode nil)  ;; タブをスペースに変換
(setq-default tab-width 4)           ;; タブ幅を4に設定
(setq indent-line-function 'insert-tab)

;; スペルチェック
(use-package flyspell
  :ensure t
  :config
  (add-hook 'text-mode-hook 'flyspell-mode)
  (add-hook 'prog-mode-hook 'flyspell-prog-mode))

;; 自動補完
(use-package company
  :ensure t
  :config
  (global-company-mode))

;; シンタックスハイライト
(global-font-lock-mode t)

;; 行末の空白を可視化
(setq show-trailing-whitespace t)

;; マウス操作の有効化
;; (xterm-mouse-mode 1)

;; 120文字目にラインを表示
(use-package fill-column-indicator
  :ensure t
  :config
  (setq fci-rule-column 120)
  (setq fci-rule-width 1)
  (setq fci-rule-color "darkgray")
  (add-hook 'prog-mode-hook 'fci-mode))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(fill-column-indicator company doom-themes which-key magit ivy)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
