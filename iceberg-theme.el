;;; iceberg --- a dark blue theme
;;; Commentary:
;; _________________________________________
;; \_ _/ ____| ____| ___ \ ____| ___ \  ___/
;;  | | |____| ____| ___ < ____| __  / |__ \
;; /___\_____|_____|_____/_____|_| \_\_____/
;;
;;  cool-headed perspective for your coding
;;
;;
;; File:        iceberg.el
;; Colorscheme: cocopon <cocopon@me.com>
;; Port:        apnsngr <github.com/apnsngr>
;; License:     MIT

;;; Code:

(deftheme iceberg)

(let ((class '((class color) (min-colors 89)))
      (background "#161822")
      (current-line "#1E2132")
      (selection "#282D43")
      (foreground "#C7C9D1")
      (comment "#6B7089")
      (cursor "#C7C9D1")
      (line-number-fg "#454D73")
      (red "#E27878")
      (orange "#E2A478")
      (green "#B4BE82")
      (cyan "#89B8C2")
      (blue "#84A0C6")
      (purple "#A093C7")
      (black "#0E0F14"))

  (custom-theme-set-faces
   'iceberg

   ;; Built-in
   `(default ((t (:background ,background :foreground ,foreground))))
   `(fringe ((t (:background ,current-line))))
   `(minibuffer-prompt ((t (:foreground ,blue))))
   `(menu ((t (:foreground ,foreground :background ,background))))
   `(mode-line
     ((t (:background ,current-line
                      :foreground ,foreground
                      :box (:line-width -1 :style released-button)))))
   `(mode-line-inactive
     ((t (:background ,current-line :foreground ,foreground))))
   `(mode-line-buffer-id ((t (:foreground ,cyan :weight bold))))
   `(region ((t (:background ,selection))))
   `(highlight ((t (:background ,selection))))
   `(success ((t (:foreground ,green :weight bold))))
   `(warning ((t (:foreground ,red :weight bold))))

   ;; Font-lock
   `(font-lock-builtin-face ((t (:foreground ,foreground :weight bold))))
   `(font-lock-comment-face ((t (:foreground ,comment))))
   `(font-lock-comment-delimiter-face ((t :foreground ,comment)))
   `(font-lock-constant-face ((t (:foreground ,purple))))
   `(font-lock-doc-face ((t (:foreground ,comment))))
   `(font-lock-doc-string-face ((t (:foreground ,comment))))
   `(font-lock-function-name-face ((t (:foreground ,orange))))
   `(font-lock-keyword-face ((t (:foreground ,blue))))
   `(font-lock-preprocessor-face ((t (:foreground ,green))))
   `(font-lock-string-face ((t (:foreground ,cyan))))
   `(font-lock-type-face ((t (:foreground ,cyan))))
   `(font-lock-variable-name-face ((t (:foreground ,purple))))
   `(font-lock-warning-face ((t (:foreground ,red))))

   ;; Everything else (ordered by alphabetically)

   ;; diff
   `(diff-added ((,class (:foreground ,green :background nil))
                 (t (:foreground ,green :background nil))))
   `(diff-changed ((t (:foreground ,orange))))
   `(diff-removed ((,class (:foreground ,red :background nil))
                   (t (:foreground ,red :background nil))))
   `(diff-refine-added ((t (:inherit diff-added :weight bold))))
   `(diff-refine-change ((t (:inherit diff-changed :weight bold))))
   `(diff-refine-removed ((t (:inherit diff-removed :weight bold))))
   `(diff-header ((,class (:background ,current-line))
                  (t (:background ,foreground :foreground ,background))))
   `(diff-file-header
     ((,class (:background ,current-line :foreground ,foreground :bold t))
      (t (:background ,foreground :foreground ,background :bold t))))

   ;; diff-hl
   `(diff-hl-change ((,class (:foreground ,orange :background ,current-line))))
   `(diff-hl-delete ((,class (:foreground ,red :background ,current-line))))
   `(diff-hl-insert ((,class (:foreground ,green :background ,current-line))))
   `(diff-hl-unknown ((,class (:foreground ,cyan :background ,current-line))))

   ;; flycheck
   `(flycheck-error
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,red) :inherit unspecified))
      (t (:foreground ,red :weight bold :underline t))))
   `(flycheck-warning
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,orange) :inherit unspecified))
      (t (:foreground ,orange :weight bold :underline t))))
   `(flycheck-info
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,blue) :inherit unspecified))
      (t (:foreground ,blue :weight bold :underline t))))
   `(flycheck-fringe-error ((t (:foreground ,red :weight bold))))
   `(flycheck-fringe-warning ((t (:foreground ,orange :weight bold))))
   `(flycheck-fringe-info ((t (:foreground ,blue :weight bold))))

   ;; hl-line-mode
   `(hl-line ((t (:background ,current-line))))

   ;; ido-mode
   `(do-first-match ((t (:foreground ,blue :weight bold))))
   `(ido-only-match ((t (:foreground ,green :weight bold))))
   `(ido-subdir ((t (:foreground ,cyan))))

   ;; isearch
   `(isearch ((t (:foreground ,foreground :weight bold
                              :background ,selection))))
   `(isearch-fail ((t (:foreground ,foreground :background ,red))))
   `(lazy-highlight ((t (:foreground ,foreground :weight bold
                                     :background ,current-line))))

   ;; linum-mode
   `(linum ((t (:foreground ,line-number-fg :background ,current-line))))

   ;; org-mode
   `(org-date ((t (:foreground ,purple))))
   `(org-done ((t (:foreground ,green))))
   `(org-hide ((t (:foreground ,current-line))))
   `(org-link ((t (:foreground ,blue))))
   `(org-todo ((t (:foreground ,red))))

   ;; rainbow-delimiters
   `(rainbow-delimiters-depth-1-face ((t (:foreground ,purple))))
   `(rainbow-delimiters-depth-2-face ((t (:foreground ,blue))))
   `(rainbow-delimiters-depth-3-face ((t (:foreground ,cyan))))
   `(rainbow-delimiters-depth-4-face ((t (:foreground ,green))))
   `(rainbow-delimiters-depth-5-face ((t (:foreground ,orange))))
   `(rainbow-delimiters-depth-6-face ((t (:foreground ,red))))
   `(rainbow-delimiters-depth-7-face ((t (:foreground ,comment))))
   `(rainbow-delimiters-depth-8-face ((t (:foreground ,line-number-fg))))
   `(rainbow-delimiters-depth-9-face ((t (:foreground ,foreground))))

   ;; show-paren-mode
   `(show-paren-match ((t (:background ,blue :foreground ,current-line))))
   `(show-paren-mismatch ((t (:background ,orange :foreground ,current-line))))

   )

  (custom-theme-set-variables
   'iceberg
   ;; TODO ANSI colors
   )
  )

;;;###autoload
(and load-file-name
  (boundp 'custom-theme-load-path)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory
                (file-name-directory load-file-name))))

(provide-theme 'iceberg)
;;; iceberg-theme.el ends here
