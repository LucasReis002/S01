(defstruct erva
  nome
  preco-por-grama
  toxicidade)

(defun classifica-erva (erva)
  (cond ((>= (erva-toxicidade erva) 7) "veneno")
        ((>= (erva-toxicidade erva) 4) "use com cuidado")
        (t "segura")))
(defun preco-da-dose (erva gramas)
  (* (erva-preco-por-grama erva) gramas))

(defun descreve-erva (erva)
  (format nil "~a - R$~,2f por grama - ~a"
          (erva-nome erva)
          (erva-preco-por-grama erva)
          (classifica-erva erva)))
(defun aviso (erva)
  (if (>= (erva-toxicidade erva) 7)
      "Maomao vai testar esta erva em si mesma antes."
      "Erva liberada."))


(defun main ()
  (let ((catalogo
          (list
           (make-erva :nome "Camomila" :preco-por-grama 2.50 :toxicidade 1)
           (make-erva :nome "Aloe Vera" :preco-por-grama 5.00 :toxicidade 5)
           (make-erva :nome "Hortela" :preco-por-grama 12.00 :toxicidade 9))))
    (dolist (erva catalogo)
      (format t "~a~%" (descreve-erva erva))
      (format t "~a~%~%" (aviso erva)))

    (format t "Preco da dose: R~,2f~%"
            (preco-da-dose (car catalogo) 5))))
(main)