; Jerred Shepherd
(defun lookup (k m) 
    (if (listp m)
        (if (listp (first m))
            (if (eq k (first (first m)))
                (second (first m))
                (if (endp (rest m))
                    'nil
                    (lookup k (rest m))
                )
            )
            'nil
        )
        'nil
    )
)

; (lookup 'a '((a b) (c d)))       ; => b
; (lookup 'e '((a b) (c d)))       ; => nil
; (lookup 'a '((b a) (c d)))       ; => nil
; (lookup 'e '((a b) (c d) (e f))) ; => f
; (lookup 'c '((a b) (c (d e f)))) ; => (d e f)

