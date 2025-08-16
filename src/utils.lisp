(defpackage :notes-cl.utils
  (:use :cl)
  (:import-from :jonathan :to-json :parse)
  (:export :read-json-file :write-json-file))

(in-package :notes-cl.utils)

(defun read-json-file (path)
  "returns the data from the json"
  (when (probe-file path)
    (parse (uiop:read-file-string path) :as :keyword)))


(defun write-json-file (path data)
  "write data to the json file"
  (uiop:with-output-file (out path :if-exists :supersede)
	(princ (to-json data) out))) 
