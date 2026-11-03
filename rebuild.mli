(** Aplatissement et reconstruction d'un arbre binaire de recherche.
    Ce module utilise le module [Bst]. *)

(** [flatten t] : valeurs de [t] en ordre croissant (version naive avec [@]).
    Complexite dans le pire cas : dans O(n^2). *)
val flatten : 'a Bst.t_bst -> 'a list

(** [flatten_acc t acc] : valeurs de [t] en ordre croissant, suivies de [acc].
    Complexite : dans O(n). *)
val flatten_acc : 'a Bst.t_bst -> 'a list -> 'a list

(** [flatten_iter t] : comme [flatten_acc t []], sans aucun appel recursif,
    avec une pile explicite. Complexite : dans O(n). *)
val flatten_iter : 'a Bst.t_bst -> 'a list

(** [build n l] construit un arbre h-equilibre avec les [n] premiers elements
    de la liste triee [l] et rend cet arbre et le reste de [l]. Le sous-arbre
    gauche a [(n - 1) / 2] elements. Complexite : dans O(n). *)
val build : int -> 'a list -> 'a Bst.t_bst * 'a list

(** [rebuild t] : arbre h-equilibre contenant les valeurs de [t].
    Complexite : dans O(n). *)
val rebuild : 'a Bst.t_bst -> 'a Bst.t_bst

(** Compteurs utilises pour les experiences (questions 15 et 17) :
    nombre d'appels a [rebuild] et nombre total de noeuds reconstruits. *)
val nb_rebuild : int ref
val nb_rebuilt_nodes : int ref
