(** Arbres scapegoat.

    Un arbre scapegoat est un arbre binaire de recherche (module [Bst])
    accompagné de son paramètre alpha (avec 1/2 < alpha < 1), de sa taille
    et de la taille maximale atteinte depuis la dernière reconstruction
    totale. Ce module utilise les modules [Bst] et [Rebuild]. *)

(** Le type est abstrait : on ne peut construire un arbre scapegoat qu'avec
    les fonctions de ce module. *)
type 'a t_scapegoat

(** [sg_empty alpha] est l'arbre scapegoat vide de paramètre [alpha]
    (taille et taille maximale nulles). *)
val sg_empty : float -> 'a t_scapegoat

(** [sg_alpha t] est le paramètre alpha de [t]. *)
val sg_alpha : 'a t_scapegoat -> float

(** [sg_tree t] est l'arbre binaire de recherche de [t]. *)
val sg_tree : 'a t_scapegoat -> 'a Bst.t_bst

(** [sg_size t] est le nombre de noeuds de [t]. *)
val sg_size : 'a t_scapegoat -> int

(** [sg_max_size t] est le maximum atteint par [sg_size] depuis la dernière
    reconstruction totale (ou depuis la création). *)
val sg_max_size : 'a t_scapegoat -> int

(** [h_alpha alpha n] est la partie entière de [log n / log (1 / alpha)],
    pour [n >= 1]. *)
val h_alpha : float -> int -> int

(** [sg_search t x] vaut [true] si et seulement si [x] est dans [t].
    Ne modifie pas [t]. Complexité : à compléter. *)
val sg_search : 'a t_scapegoat -> 'a -> bool

(** [sg_insert t x] ajoute [x] à [t]. Si [x] est déjà présent, [t] est rendu
    inchangé. Si le nouveau noeud est trop profond, le sous-arbre du
    scapegoat est reconstruit.
    Complexité : à compléter. *)
val sg_insert : 'a t_scapegoat -> 'a -> 'a t_scapegoat

(** [sg_delete t x] supprime [x] de [t]. Si [x] est absent, [t] est rendu
    inchangé. Si la nouvelle taille est strictement inférieure à
    [alpha * max_size], tout l'arbre est reconstruit.
    Complexité : à compléter. *)
val sg_delete : 'a t_scapegoat -> 'a -> 'a t_scapegoat


(** ---- question au choix 16 : ajout sans recursion *)
val sg_insert_iter : 'a t_scapegoat -> 'a -> 'a t_scapegoat
