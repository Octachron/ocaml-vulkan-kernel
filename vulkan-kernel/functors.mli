module type name= sig val name:string end

module type handle = sig
  type t
  val t: t Ctypes.typ
end

module Dispatchable: name -> handle
module Non_abstract: name -> handle
