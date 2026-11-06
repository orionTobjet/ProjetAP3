open bst.mli  ;;



let rec bst_size t : int =
  match t with 
    | Empty -> 0
    | Node r g d -> 1 + bst_size g + bst_size d
;;


let rec bst_height t : int =
  match t with 
    | Empty -> failwith "no tree"
    | Node r g d -> 1  + max ( bst_height g , bst_height d)


    