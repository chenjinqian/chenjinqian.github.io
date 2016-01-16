;; Emacs org-mode support for blogging with Jekyll.
;;;
;;; To use, just put this file somewhere in your emacs load path and
;;; (require 'org-jekyll)
;;;
;;; An article showing its use can be found at:
;;;    - http://www.gorgnegre.com/linux/using-emacs-orgmode-to-blog-with-jekyll.html
;;;
;;; Adapted from
;;;    - http://orgmode.org/worg/org-tutorials/org-jekyll.html
;;;    - https://github.com/metajack/jekyll/blob/master/emacs/jekyll.el
;;;
;;; Gorg Negre 2012-07-05
;;(require 'org-publish)
(setq debug-on-error t)
;; Define our org project to be exported. Run "M-x org-export X mvm" to
;; export.
;;
;;
(setq org-publish-project-alist
      '(("org-cjqjekyll"
         ;; Path to your org files.
         :base-directory "~/pro/n-txt/blog/cjq.io/_org/"
         :base-extension "org"
         ;; Path to your Jekyll project.
         :publishing-directory "~/pro/n-txt/blog/cjq.io/"
         :recursive t
         :publishing-function org-html-export-to-html
         :headline-levels 4
         :html-extension "html"
         :body-only t ;; Only export section between <body> </body>
         )


        ("org-static-cjqjekyll"
         :base-directory "~/pro/n-txt/blog/cjq.io/_org/"
         :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf\\|php"
         :publishing-directory "~/pro/n-txt/blog/cjq.io/"
         :recursive t
         :publishing-function org-publish-attachment)

        ("cjqjekyll.io" :components ("org-cjqjekyll" "org-static-cjqjekyll"))

        ))

(provide 'org-jekyll);;
