open Constraints_common

type atom =
  | Eq of Metavar.t * Metavar.t
  | Feat of Metavar.t * Metavar.t * Metavar.t
  | Abs of Metavar.t * Metavar.t
  | Fen of Metavar.t * Metavar.t
  | Sim of Metavar.t * Metavar.t * Metavar.t

type literal =
  | Pos of atom
  | Neg of atom

val find : ?pred:(Assign.t -> bool) -> literal list -> Literal.Set.t ->
           (Assign.t * Literal.Set.t) option

val mem : ?pred:(Assign.t -> bool) -> literal list -> Literal.Set.t -> bool