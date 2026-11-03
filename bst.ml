open bst.mli  ;;



let bst_size t : int =
  match t with 
    | Empty -> 0
    | Node r g d -> 1 + bst_size g + bst_size d
;;


let bst_height t : int =
  match t with 
    | Empty -> failwith " no tree "
    | 