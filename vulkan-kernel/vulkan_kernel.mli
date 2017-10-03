(** Basic vulkan types and ctypes view for interaction with window systems

    These types provides a way to require a VkSurfaceKHR handle for a given
    Vulkan instance from the underlying windows system

*)

(** {2 Handle functors }
    Dispatchable and non-dispatchable handle generators *)

module type name = sig val name:string end
module type handle= sig type t val t: t Ctypes.typ end

module Dispatchable: name -> handle
module Non_dispatchable: name -> handle

(** {2 Core vulkan types} *)

(** Type and implementation of VkInstance *)
type instance
val instance: instance Ctypes.typ

(** Type and implementation of VkSurfaceKHR *)
type surface
val surface: surface Ctypes.typ
