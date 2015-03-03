  .text
  .globl f0
  .type f0, @function
.f0:
  vpxor %ymm0, %ymm0, %ymm0
  retq 

.size f0, .-f0