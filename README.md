
This tiny library is intended as a minimal compatibility library for libraries
dealing with ocaml bindings to vulkan. It defines an instance and surface types,
corresponding to `VkInstance` and `VkSurfaceKHR` types on the C side.

These two types are the minimal types required to be able to require an
Vulkan surface from the underlying windows systems. They consequently do tend
to appear in both Vulkan library and GUI library; thus this compatibility library.
