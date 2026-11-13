(defstruct dominio
  nome
  elemento
  dificuldade
  mora)
(defun bonus-elemental (elemento)
  (case elemento
    (:electro 1.5)
    (:hydro 1.2)
    (otherwise 1)))
(defun recompensa-final (d)
  (* (dominio-mora d)
     (bonus-elemental (dominio-elemento d))))
(defun rota (lista dificuldade-maxima)
  (let* ((disponiveis
           (remove-if-not
            (lambda (d)
              (<= (dominio-dificuldade d) dificuldade-maxima))
            lista))
         (textos
           (mapcar
            (lambda (d)
              (format nil "~a - Recompensa: ~,2f mora"
                      (dominio-nome d)
                      (recompensa-final d)))
            disponiveis)))
    textos))

(defun main ()
  (let ((catalogo
          (list
           (make-dominio :nome "Masmorra" :elemento :anemo :dificuldade 2 :mora 1000)
           (make-dominio :nome "Castelo" :elemento :pyro :dificuldade 3 :mora 1500)
           (make-dominio :nome "Floresta" :elemento :hydro :dificuldade 4 :mora 2000)
           (make-dominio :nome "Deserto" :elemento :electro :dificuldade 5 :mora 2500)
           (make-dominio :nome "PLanice" :elemento :cryo :dificuldade 1 :mora 800))))
    (dolist (texto (rota catalogo 3))
      (format t "~a~%" texto))
    (format t "~%Total: ~,2f~%"
            (reduce #'+ (mapcar #'recompensa-final catalogo)))
    (let ((copia (copy-dominio (car catalogo))))
      (setf (dominio-mora copia) 5000)
      (format t "~%Mora copia: ~a~%"
              (dominio-mora copia))
      (format t "Mora original: ~a~%"
              (dominio-mora (car catalogo))))))
(main)