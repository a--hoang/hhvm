(**
 * Copyright (c) 2015, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the "hack" directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 *
 *)

val with_expr_hook:
  (Nast.expr -> Typing_defs.locl Typing_defs.ty -> unit) -> (unit -> 'a) -> 'a

val debug_print_last_pos:
  'a -> unit

val fun_def      : TypecheckerOptions.t -> Nast.fun_    -> Tast.fun_
val class_def    : TypecheckerOptions.t -> Nast.class_  -> Tast.class_ option
val typedef_def  : TypecheckerOptions.t -> Nast.typedef -> Tast.typedef
val gconst_def   : TypecheckerOptions.t -> Nast.gconst  -> Tast.gconst

val nast_to_tast : TypecheckerOptions.t -> Nast.program -> Tast.program

val get_self_from_c:
  Nast.class_ ->
  Typing_defs.decl Typing_defs.ty
