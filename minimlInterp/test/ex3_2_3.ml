open OUnit
open Testutil
open Miniml.Eval
open Eval

let dataset = [
  { name = "1"; input = "1;;"; expected = IntV 1 };
];;

let _ = run_test_tt_main (
    "ex3.2.3" >:::
    gen_tests_with_exec
      ~printer: string_of_exval
      eval
      dataset
  )
