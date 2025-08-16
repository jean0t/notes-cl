(asdf:defsystem "notes-cl"
        :author "Jean0t"
        :version "0.1.0"
        :license "MIT"
        :description "CLI Notes app for linux made in Common Lisp"
		:serial t
		:depends-on (#:jonathan #:uiop)
		:components ((:file "src/utils")
			     (:file "src/repositories")
			     (:file "src/services")
			     (:file "src/cli")
			     (:file "src/app")))
