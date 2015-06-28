## src
## 382  engine
## 130  main
## 29   runtime_lib
## [541]

## 1030 instruction
## [1030]

## 564  am
## [564]

## 340  stack
## [340]

## 217  thread
## [217]

## 88   gc
## 102  loader
## [190]

## 113  scope
## 61   consttab
## 49   strtab
## 19   subroutine
## 450  meta
## 478  types
## [1170]

## 224  byte
## 83   error
## 29   config
## 107  logger
## 146  debug
## 148  math_util
## 6    ll
## [743]
## 4795 total

require(tikzDevice)

## tikz("./sloc.tex")

par(mfrow=c(2,2))

rad <- 0.9
cx <- 0.8

slices <- c(541, 1030, 564, 340, 217, 190, 1170, 743)
lbls <- c("engine+rtl", "instructions", "am", "stack", "thread", "gc+loader", "info tables+types", "utils and debuggin")
pie(slices, labels = lbls, main="SLOC per module", radius = rad, cex = cx)


## test
## 446 am_test
## 201 byte_test
## 894 instruction_test
## 456 math_util_test
## 102 meta_test
## 94  scope_test
## 258 stack_test
## 143 thread_test
## 227 type_conversion_test
## 120 type_lattice_test
## ---
## 2941 total

slices <- c(446, 201, 894, 456, 102, 94,  258, 143, 227, 120 )
lbls <- c("am_test", "byte_test", "instruction_test", "math_util_test", "meta_test", "scope_test", "stack_test", "thread_test", "type_conversion_test", "type_lattice_test")
pie(slices, labels = lbls, main="Testing SLOC per module", radius = rad, cex = cx)

## dev.off()
