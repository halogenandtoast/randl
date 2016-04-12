let shuffle d =
  let nd = List.map (fun c -> (Random.bits (), c)) d in
  let sond = List.sort compare nd in
  List.map snd sond

let rec print_tuples = function
  [] -> ()
  | (n,f)::l -> print_string "("; print_string n; print_string ", ";
  print_string f; print_string ")\n"; print_tuples l;;

let rec zip lst1 lst2 = match lst1, lst2 with
  | [], _ -> []
  | _, [] -> []
  | (x::xs),(y::ys) -> (x,y) :: zip xs ys;;

Random.self_init ();;

let shuffled_names = shuffle ["Matt"; "Brandy"; ];;
let shuffled_factions = shuffle ["ARVN"; "Viet Kong"; "NVA"; "USA";];;
let pairs = zip shuffled_names shuffled_factions;;

print_tuples pairs;;
