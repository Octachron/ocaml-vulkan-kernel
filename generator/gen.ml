
let f = ref "const.ml"
let args = ["-o", Arg.Set_string f, "output file"]

let output f =
  let ch = open_out f in
  Printf.fprintf ch "open Functors\n\
                     module Non_dispatchable(X:name):handle=struct include %s(X) end\
                     \n"
    (if Support.abstract_handle () then "Dispatchable" else "Non_abstract")

;;
Arg.parse args ignore "check if vulkan non dispatchable handle are implemented as \
                       struct* or uint64_t";
output !f
