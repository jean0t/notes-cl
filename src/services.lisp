(defpackage :notes-cl.services
  (:use :cl)
  (:import-from :notes-cl.repositories :get-all-notes :save-all-notes)
  (:export :list-notes :add-note :delete-note))

(in-package :notes-cl.services)

(defun list-notes (repo-path)
  (get-all-notes repo-path))

(defun add-note (repo-path title body)
  (let* ((notes (get-all-notes repo-path))
	 (new-id (if notes (1+ (apply #'max (mapcar (lambda (n) (getf n :id)) notes))) 1))
	 (new-note (list :id new-id :title title :body body)))
    (save-all-notes repo-path (append notes (list new-note)))
    new-note))

(defun delete-note (repo-path id)
  (let* ((notes (get-all-notes repo-path))
	 (filtered (remove id notes :key (lambda (n) (getf n :id)))))
    (save-all-notes repo-path filtered)
    t))
