open Miniml
open Miniml.Eval

let eval src =
  let _, _, value = eval_decl Miniml.Cui.initial_env
    @@ Parser.toplevel Lexer.main
    @@ LexingHelper.from_string_without_eof src
  in
  value
