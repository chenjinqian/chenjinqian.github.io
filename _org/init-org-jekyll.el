;;; package --- summery:

;; this is some configuration to export .org file to .html file, which can be used by jekyll to make full html file in the _site folder. So org-publish need not generate full html file.
;; Jekyll file will read meta data in the file, which start and end with --- , at the begining of a file. So at the start of every .org file, there should be some lines to make sure the org-publish process generate that lines.
;; Notices, org-publish process will generate table of contents at the very begining of exported file, which sheater the jekyll meta information lines, and cause it fail to post blog properly. So, we should disable table-of-contents option.
;; Should there a better way? Not clear to me yet.

(setq org-confirm-babel-evaluate nil)

(setq debug-on-error t)

(setq org-src-fontify-natively t)

(setq org-export-with-sub-superscripts nil)

(setq org-publish-project-alist
      '(
        ("org-cjq" ;;
         :base-directory "~/pro/n-txt/blog/cjq.io/_org/"
         :base-extension "org"
         :publishing-directory "~/pro/n-txt/blog/cjq.io/"
         :recursive t
         :publishing-function org-html-publish-to-html
         :with-toc nil
         :headline-levels 4
         :auto-preamble nil
         :auto-sitemap nil
         :html-extension "markdown"
         :table-of-contents nil ;;This is important.
         :section-numbers t
         :html_head "<link rel=\"stylesheet\" type=\"text/css\" href=\"../assets/themes/havee/css/style.css\" />"
         :body-only t)

        ("org-static-cjq"
         :base-directory "~/pro/n-txt/blog/cjq.io/_org/assets/"
         :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf\\|php"
         :publishing-directory "~/pro/n-txt/blog/cjq.io/assets/"
         :recursive t
         :publishing-function org-publish-attachment)

        ("cjq.io" :components ("org-cjq" "org-static-cjq"))
        ))

(defvar jekyll-directory (expand-file-name "~/pro/n-txt/blog/cjq.io/_org/")
  "Path to Jekyll blog.")
(defvar jekyll-drafts-dir "_drafts/"
  "Relative path to drafts directory.")
(defvar jekyll-posts-dir "_posts/"
  "Relative path to posts directory.")
(defvar jekyll-post-ext ".org"
  "File extension of Jekyll posts.")
(defvar jekyll-post-template
  "#+BEGIN_HTML\n---\nlayout: post\ntitle: %s\nexcerpt: \nkeywords: \"\"\ncategories: \ntags: []\n---\n{%% include JB/setup %%}\n#+END_HTML\n\n* \n\n\n#+BEGIN_HTML\n<!-- more-forword -->\n#+END_HTML\n\n\n#+BEGIN_HTML\n<!-- more -->\n#+END_HTML\n"
  "Default template for Jekyll posts. %s will be replace by the post title.")

(defun jekyll-make-slug (s)
  "Turn a string into a slug."
  (replace-regexp-in-string
   " " "-" (downcase
            (replace-regexp-in-string
             "[^A-Za-z0-9 ]" "" s))))

(defun jekyll-yaml-escape (s)
  "Escape a string for YAML."
  (if (or (string-match ":" s)
          (string-match "\"" s))
      (concat "\"" (replace-regexp-in-string "\"" "\\\\\"" s) "\"")
    s))

(defun jekyll-draft-post (title)
  "Create a new Jekyll blog post."
  (interactive "sPost Title: ")
  (let ((draft-file (concat jekyll-directory jekyll-drafts-dir
                            (jekyll-make-slug title)
                            jekyll-post-ext)))
    (if (file-exists-p draft-file)
        (find-file draft-file)
      (find-file draft-file)
      (insert (format jekyll-post-template (jekyll-yaml-escape title))))))

(defun jekyll-publish-post ()
  "Move a draft post to the posts directory, and rename it so that it
 contains the date."
  (interactive)
  (cond
   ((not (equal
          (file-name-directory (buffer-file-name (current-buffer)))
          (concat jekyll-directory jekyll-drafts-dir)))
    (message "This is not a draft post."))
   ((buffer-modified-p)
    (message "Can't publish post; buffer has modifications."))
   (t
    (let ((filename
           (concat jekyll-directory jekyll-posts-dir
                   (format-time-string "%Y-%m-%d-")
                   (file-name-nondirectory
                    (buffer-file-name (current-buffer)))))
          (old-point (point)))
      (rename-file (buffer-file-name (current-buffer))
                   filename)
      (kill-buffer nil)
      (find-file filename)
      (set-window-point (selected-window) old-point)))))

(provide 'init-org-jekyll)
;;; end of init-org-jekyll file.
