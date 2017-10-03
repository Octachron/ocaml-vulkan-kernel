include Functors
include Non_dispatchable

module Instance = Dispatchable(struct let name = "VkInstance" end)
module Surface = Non_dispatchable(struct let name = "VkSurfaceKHR" end)

type instance = Instance.t
let instance = Instance.t

type surface = Surface.t
let surface = Surface.t
