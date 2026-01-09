(defpackage :notes-cl.app
  (:use :cl)
  (:import-from :notes-cl.cli :run-cli)
  (:export :main))

(in-package :notes-cl.app)

(defun main ()
  (let* ((home (user-homedir-pathname))
	 (repo-dir (merge-pathnames "data/" home))
	 (file-path (merge-pathnames "notes.json" repo-dir)))
    (ensure-directories-exist repo-dir)
    (run-cli (uiop:command-line-arguments) file-path)))
