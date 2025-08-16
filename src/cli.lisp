(defpackage :notes-cl.cli
  (:use :cl)
  (:import-from :notes-cl.services :list-notes :add-note :delete-note)
  (:export :run-cli))

(in-package :notes-cl.cli)

(defun run-cli (args repo-path)
  (let ((command (first args))
	(rest (rest args)))
    (cond 
      ((string= command "list")
       	(format t "~%Notes:~%")
	(dolist (note (list-notes repo-path))
	  (format t "[~A] ~A~%~A~%~%" (getf note :id) (getf note :title) (getf note :body))))
      ((string= command "add")
       	(let ((title (first rest))
	      (body (second rest)))
	  (add-note repo-path title body)
	  (format t "Note added.~%")))
      ((string= command "delete")
       	(let ((id (parse-integer (first rest))))
	  (delete-note repo-path id)
	  (format t "Note deleted.~%")))
      (t
       (format t "Usage: list | add <title> <body> | delete <id>~%")))))
