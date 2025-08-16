(defpackage :notes-cl.repositories
  (:use :cl)
  (:import-from :notes-cl.utils :read-json-file :write-json-file)
  (:export :get-all-notes :save-all-notes))

(in-package :notes-cl.repositories)

(defun get-all-notes (path)
  (or (read-json-file path) '()))

(defun save-all-notes (path notes)
  (write-json-file path notes))
