(loop with prime = 600851475143
      for i = 2 then (1+ i)
      while (< i prime)
      if (= (mod prime i) 0)
        do (setf prime (/ prime i)
                 i (- i 1))
      finally (print i))
(quit)
