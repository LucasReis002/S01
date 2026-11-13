(defstruct garota-magica
  nome
  escuridao
  bruxas)
(defun escuridao-total (grupo)
  (if (null grupo)
      0
      (+ (garota-magica-escuridao (car grupo))
         (escuridao-total (cdr grupo)))))
(defun total-de-bruxas (grupo)
  (reduce #'+ (mapcar #'garota-magica-bruxas grupo)))

(defun purifica (g quantidade)
  (make-garota-magica
   :nome (garota-magica-nome g)
   :escuridao (if (>= quantidade (garota-magica-escuridao g))
                  0
                  (- (garota-magica-escuridao g) quantidade))
   :bruxas (garota-magica-bruxas g)))

   
(defun main ()
  (let* ((grupo
           (list
            (make-garota-magica :nome "Garota 1" :escuridao 40 :bruxas 5)
            (make-garota-magica :nome "Garota 2" :escuridao 65 :bruxas 12)
            (make-garota-magica :nome "Garota 3" :escuridao 30 :bruxas 3)))
         (nova
           (make-garota-magica :nome "Garota 4" :escuridao 20 :bruxas 7))
         (novo-grupo (cons nova grupo))
         (original (car grupo))
         (purificada (purifica original 25)))
    (format t "Escuridao total: ~a~%"
            (escuridao-total grupo))
    (format t "Total de bruxas derrotadas: ~a~%"
            (total-de-bruxas grupo))
    (format t "Escuridao do novo grupo: ~a~%"
            (escuridao-total novo-grupo))
    (format t "Escuridao original: ~a~%"
            (garota-magica-escuridao original))
    (format t "Escuridao apos purificacao: ~a~%"
            (garota-magica-escuridao purificada))))
(main)