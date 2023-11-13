;;;; srfi-236.lisp

(cl:in-package "https://github.com/g000001/srfi-236#internals")



(defmacro independently (&body body)
  (let* ((body (shuffle body))
         (vars (loop :repeat (length body) :collect (gensym "th")))
         (bvl (mapcar (lambda (v b)
                        `(,v (make-thread (lambda () ,b nil) :name ',(string v))))
                      vars
                      body)))
    `(let (,@bvl)
       (declare (ignorable ,@vars))
       ,@(mapcar (lambda (v)
                   `(join-thread ,v))
                 vars)
       (values))))


;;; *EOF*
