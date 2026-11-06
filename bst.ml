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




let rec bst_insert t v =
  match t with 
    | Empty -> Node( v, Empty, Empty) 
    | Node(r,g,d) -> 
      if v = r then t
      else if v<r then Node( r, bst_insert  g v , d)
      else Node( r,g , bst_insert  d v)
;;


let rec bst_min t = 
  match t with 
    | Empty -> Empty
    | Node(r ,Empty,d ) -> r 
    | Node(r,g,d) -> bst_min g 
;;

let rec bst_delete t x =
  match t with 
    | Empty -> Empty
    | Node(r,g,d) -> 
      if x< r then Node(r, bst_delete g x , d)
      else if  x > r then Node(r, g, bst_delete d x)
      else 
        match g,d with 
          | Empty , _ -> d
          | _ , Empty -> g 
          | _, _ -> let m = bst_min d in
            Node ( m , g , bst_delete d m)
;;