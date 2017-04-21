open OUnit2;;

(* Test using an empty list *)
let test_empty test_ctxt = assert_equal 0 (Sum_of_list.sum_of_list []);;

(* Test using a single-element list *)
let test_single test_ctxt = assert_equal 1 (Sum_of_list.sum_of_list [1]);;

(* Test using integers *)
let ints = [2; 4; 8; 16; 32; 64; 128];;
let test_ints test_ctxt = assert_equal 254 (Sum_of_list.sum_of_list ints);;

let suite =
"suite">:::
 ["test_empty">:: test_empty;
  "test_single">:: test_single;
  "test_ints">:: test_ints]
;;

let () = 
	run_test_tt_main suite
;;