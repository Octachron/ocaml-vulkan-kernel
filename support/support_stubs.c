#define VK_DEFINE_HANDLE(object) typedef struct object##_T* object;

#include <stdio.h>
#include <caml/mlvalues.h>

value abstract_handle() {

  return(
#if defined(__LP64__) || defined(_WIN64) || defined(__x86_64__) || defined(_M_X64) || defined(__ia64) || defined (_M_IA64) || defined(__aarch64__) || defined(__powerpc64__)
         Val_true
#else
         Val_false
#endif
         );
}
