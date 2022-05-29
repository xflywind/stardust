type
  WeakMap*[K; V] = ref object


proc newWeakMap*[K; V](): WeakMap[K, V] {.importjs: "new WeakMap()".}
proc `[]`*[K, V](d: WeakMap[K, V], k: K): V {.importjs: "#.get(#)".}
proc `[]=`*[K, V](d: WeakMap[K, V], k: K, v: V) {.importjs: "#.set(#, #)".}


when isMainModule:
  import jsconsole


  let x = newWeakMap[int, cstring]()
  x[1] = cstring"12"
  console.log x[1]


# type
#   WeakMap*[K: string; V] = ref object


# proc newWeakMap*[K: string; V](): WeakMap[K, V] = discard


# let x = newWeakMap[int, cstring]()