(defstruct criatura
  nome
  bioma
  profundidade
  perigo)

(defun texto-do-perigo (perigo)
  (case perigo
    (:inofensiva "Inofensiva")
    (:agressiva "Agressiva")
    (:leviata "Leviata: mantenha distancia")
    (otherwise "Desconhecido")))
(defun descreve-criatura (c)
  (format nil "~a - Bioma: ~a - Profundidade: ~am - Perigo: ~a"
          (criatura-nome c)
          (criatura-bioma c)
          (criatura-profundidade c)
          (texto-do-perigo (criatura-perigo c))))
(defun abaixo-de (metros catalogo)
  (remove-if-not
   (lambda (c) (> (criatura-profundidade c) metros))
   catalogo))
(defparameter *catalogo*
  (list
   (make-criatura :nome "Peixe palhaco" :bioma "Recife"
                  :profundidade 20 :perigo :inofensiva)
   (make-criatura :nome "Carpa" :bioma "Floresta"
                  :profundidade 100 :perigo :agressiva)
   (make-criatura :nome "Leviata" :bioma "Zona de colisao"
                  :profundidade 400 :perigo :leviata)
   (make-criatura :nome "Peixe colorido" :bioma "Recife"
                  :profundidade 35 :perigo :inofensiva)
   (make-criatura :nome "Caranguejo" :bioma "Rio"
                  :profundidade 300 :perigo :agressiva)))

(defun main ()


  (dolist (texto (mapcar #'descreve-criatura *catalogo*))
    (format t "~a~%" texto))
  (let ((profundas (mapcar #'descreve-criatura
                           (abaixo-de 150 *catalogo*))))
    (dolist (texto profundas)
      (format t "~a~%" texto))
    (format t "~%Quantidade: ~a~%" (length profundas))))
(main)