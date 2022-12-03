;;;; srfi-236.asd

(cl:in-package :asdf)


(defsystem :srfi-236
  :version "20221204"
  :description "SRFI 236 for CL: Evaluating expressions in an unspecified"
  :long-description "SRFI 236 for CL: Evaluating expressions in an unspecified
https://srfi.schemers.org/srfi-236"
  :author "CHIBA Masaomi"
  :maintainer "CHIBA Masaomi"
  :serial t
  :depends-on (alexandria bordeaux-threads)
  :components ((:file "package")
               (:file "srfi-236")))


(defmethod perform :after ((o load-op) (c (eql (find-system :srfi-236))))
  (let ((name "https://github.com/g000001/srfi-236")
        (nickname :srfi-236))
    (if (and (find-package nickname)
             (not (eq (find-package nickname)
                      (find-package name))))
        (warn "~A: A package with name ~A already exists." name nickname)
        (rename-package name name `(,nickname)))))

;;; *EOF*
