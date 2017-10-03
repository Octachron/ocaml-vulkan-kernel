module type name= sig val name:string end

module type handle = sig
  type t
  val t: t Ctypes.typ
end

module Dispatchable(X:name): handle = struct
  type abstract
  let str = Ctypes.structure X.name
  type t = abstract Ctypes.structure Ctypes.ptr
  let t = Ctypes.ptr str
end

module Non_abstract(X:name): handle = struct
  type t = Unsigned.uint64
  let t = Ctypes.uint64_t
end
