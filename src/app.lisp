(defpackage :notes-cl.app
  (:use :cl)
  (:import-from :notes-cl.cli :run-cli)
  (:export :main))

(in-package :notes-cl.app)

(defun main ()
  (let ((repo-path "data/notes.json"))
    (ensure-directories-exist (pathname "data/"))
    (run-cli (uiop:command-line-arguments) repo-path)))
