(** Arbres binaires de recherche.

    Dans tout le module, les valeurs d'un arbre sont distinctes et comparees
    avec la comparaison polymorphe d'OCaml. La profondeur de la racine est 0,
    la hauteur de l'arbre vide est -1 et celle d'une feuille est 0. *)

(** Un arbre est soit vide, soit un noeud contenant une valeur, un sous-arbre
   gauche et un sous-arbre droit. Le type est expose afin de pouvoir utilsier
   le filtrage dans les autres modules.  *)
type 'a t_bst = Empty | Node of 'a * 'a t_bst * 'a t_bst

(** [bst_size t] est le nombre de noeuds de [t]. Complexite : dans O(n). *)
val bst_size : 'a t_bst -> int

(** [bst_height t] est la hauteur de [t] (-1 pour l'arbre vide).
    Complexite : dans O(n). *)
val bst_height : 'a t_bst -> int

(** [bst_search t x] vaut [true] si et seulement si [x] est une valeur de [t].
    Complexite : dans O(h). *)
val bst_search : 'a t_bst -> 'a -> bool

(** [bst_insert t x] ajoute [x] comme feuille de [t]. Si [x] est deja present,
    [t] est rendu inchange. Complexite : dans O(h). *)
val bst_insert : 'a t_bst -> 'a -> 'a t_bst

(** [bst_delete t x] supprime [x] de [t]. Si [x] est absent, [t] est rendu
    inchange. Si le noeud supprime a deux fils, on le remplace par le plus
    petit element de son sous-arbre droit. Complexite : dans O(h). *)
val bst_delete : 'a t_bst -> 'a -> 'a t_bst

(** [bst_valid t] vaut [true] si et seulement si le parcours infixe de [t]
    est strictement croissant. Complexite : dans O(n). *)
val bst_valid : 'a t_bst -> bool

(** [bst_to_string f t] decrit [t] en notation parenthesee. L'arbre vide
    s'ecrit ["."], une feuille de valeur [v] s'ecrit [f v], et un arbre de
    racine [v] et de sous-arbres [g] et [d] qui n'est pas une feuille s'ecrit
    ["(g v d)"]. Complexite : nombre de concatenations dans O(n). *)
val bst_to_string : ('a -> string) -> 'a t_bst -> string
