(define (domain prison)

    (:requirements
        :typing
        :strips
        :negative-preconditions
    )

    (:types
        keys cells prisoner
    )

    (:predicates
        ;Prisoner's cell location
        (at-prisoner ?loc - cells ?p - prisoner)
        
        ;Key cell location
        (at-key ?s - keys ?loc - cells)
        
        ;Indicates if a cell location has a guard
        (has-guard ?loc - cells)
        
        ;Indicates if a cell location has a key
        (has-key ?loc - cells ?s - keys)
        
        ;Indicates if a cell location has an exit
        (has-exit ?loc - cells)
        
        ;connects cells
        (connected ?from ?to - cells)
        
        ;If a key is hold
        (hold-key ?s - keys)
        
        ;If prisoner escaped through one cell
        (escaped ?p - prisoner)
        
    )

    ;Prisoner can move if the
    ;    - prisoner in the current cell,
    ;    - cells are connected, 
    ;    - there is no guard in desitination loc
    
    ;once
    (:action move
        :parameters (?now ?dest - cells ?p - prisoner)
        :precondition (and
        (at-prisoner ?now ?p)
        (connected ?now ?dest)                   
        (not (has-guard ?dest))                   
        )
        :effect (and 
        (at-prisoner ?dest ?p)
        (not (at-prisoner ?now ?p))
        )
    )
    
     ;Prisoner can get the key if the
    ;    - prisoner in the current cell,
    ;    - cells has a key, 
    ;   - the key is not in hold,
    (:action get-key
        :parameters (?dest - cells ?p - prisoner ?s -keys)
        :precondition (and
        (at-prisoner ?dest ?p)
        (has-key ?dest ?s)
        (not (hold-key ?s))                    
        )
        :effect (hold-key ?s)
    )
    
     ;Prisoner can escape if the
    ;    - prisoner in the current cell,
    ;    - the current cells has an exit, 
    ;   - the key is hold,
    (:action escape
        :parameters (?dest - cells ?p - prisoner ?s -keys)
        :precondition (and
        (at-prisoner ?dest ?p)
        (has-exit ?dest)
        (hold-key ?s)                    
        )
        :effect (escaped ?p)
    )
    
)