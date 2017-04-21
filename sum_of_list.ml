(*
 * Calculate the sum of
 * list elements. 
 *)

let rec sum_of_list list =
	match list with
	| []-> 0
	| h::t-> h + sum_of_list t 