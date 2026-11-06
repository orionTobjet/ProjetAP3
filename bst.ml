type 'a t_bst = Empty | Node of 'a * 'a t_bst * 'a t_bst




let rec bst_size t : int =
  match t with 
    | Empty -> 0
    | Node (r, g, d)-> 1 + bst_size g + bst_size d
;;


let rec bst_height t : int =
  match t with 
    | Empty -> failwith "no tree"
    | Node(r, g, d) -> 1  + max ( bst_height g )( bst_height d)
;;


let rec bst_search t  x : bool =
  match t with 
  | Empty -> false 
  | Node(r,g,d)-> 
    if x=r then true 
    else if x< r then bst_search g x 
    else bst_search d x 
;;


  