(define (problem escape)
  (:domain prison)
  (:objects
            cell1 cell2 cell3 cell4 cell5 cell6 cell7 cell8 cell9 - cells
            key1 - keys
            Andy - prisoner
  )
  (:init
  
    ;Initial Prisoner Location
    (at-prisoner cell1 Andy)
    
    ;Initial location of the key
    (has-key cell5 key1)
    
    ;Initial location of the exit
    (has-exit cell3)
    
    ;Initial location of the guards
    (has-guard cell6)
    (has-guard cell8)
    ;cell connections
    
    (connected cell1 cell2)
    (connected cell1 cell4)
    (connected cell2 cell1)
    (connected cell2 cell3)
    (connected cell3 cell2)
    (connected cell3 cell6)
    (connected cell3 cell9)
    (connected cell4 cell1)
    (connected cell4 cell7)
    (connected cell4 cell5)
    (connected cell5 cell7)
    (connected cell5 cell9)
    (connected cell5 cell6)
    (connected cell5 cell8)
    (connected cell6 cell5)
    (connected cell6 cell9)
    (connected cell6 cell3)
    (connected cell7 cell5)
    (connected cell7 cell4)
    (connected cell7 cell8)
    (connected cell8 cell5)
    (connected cell8 cell7)
    (connected cell8 cell9)
    (connected cell9 cell3)
    (connected cell9 cell6)
    (connected cell9 cell5)
    (connected cell9 cell8)
    
    
  )
  
  (:goal (escaped Andy)
  )
  
)