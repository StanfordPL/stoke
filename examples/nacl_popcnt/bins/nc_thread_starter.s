  .text
  .globl nc_thread_starter
  .type nc_thread_starter, @function

#! file-offset 0x41960
#! rip-offset  0x41960
#! capacity    288 bytes

# Text                          #  Line  RIP      Bytes  
.nc_thread_starter:             #        0x41960  0      
  pushq %rbx                    #  1     0x41960  2      
  nop                           #  2     0x41962  1      
  nop                           #  3     0x41963  1      
  callq .__nacl_read_tp         #  4     0x41964  5      
  movl %eax, %ebx               #  5     0x41969  2      
  nop                           #  6     0x4196b  1      
  nop                           #  7     0x4196c  1      
  callq .__newlib_thread_init   #  8     0x4196d  5      
  movl %ebx, %ebx               #  9     0x41972  2      
  movl 0x18(%r15,%rbx,1), %eax  #  10    0x41974  5      
  movl %ebx, %ebx               #  11    0x41979  2      
  movl 0x1c(%r15,%rbx,1), %edi  #  12    0x4197b  5      
  nop                           #  13    0x41980  1      
  andl $0xffffffe0, %eax        #  14    0x41981  5      
  addq %r15, %rax               #  15    0x41986  3      
  callq %rax                    #  16    0x41989  2      
  movl %eax, %ebx               #  17    0x4198b  2      
  nop                           #  18    0x4198d  1      
  nop                           #  19    0x4198e  1      
  callq .__nacl_read_tp         #  20    0x4198f  5      
  movl %eax, %eax               #  21    0x41994  2      
  movl -0x8(%r15,%rax,1), %ecx  #  22    0x41996  5      
  testl %ecx, %ecx              #  23    0x4199b  2      
  je .L_41a60                   #  24    0x4199d  6      
  nop                           #  25    0x419a3  1      
  nop                           #  26    0x419a4  1      
.L_41a00:                       #        0x419a5  0      
  xorl %edi, %edi               #  27    0x419a5  2      
  nop                           #  28    0x419a7  1      
  nop                           #  29    0x419a8  1      
  callq .pthread_cleanup_pop    #  30    0x419a9  5      
  nop                           #  31    0x419ae  1      
  nop                           #  32    0x419af  1      
  callq .__nacl_read_tp         #  33    0x419b0  5      
  movl %eax, %eax               #  34    0x419b5  2      
  movl -0x8(%r15,%rax,1), %edx  #  35    0x419b7  5      
  testl %edx, %edx              #  36    0x419bc  2      
  jne .L_41a00                  #  37    0x419be  6      
  nop                           #  38    0x419c4  1      
  nop                           #  39    0x419c5  1      
.L_41a60:                       #        0x419c6  0      
  movl %ebx, %edi               #  40    0x419c6  2      
  popq %rbx                     #  41    0x419c8  2      
  jmpq .pthread_exit            #  42    0x419ca  5      
  nop                           #  43    0x419cf  1      
  nop                           #  44    0x419d0  1      
                                                         
.size nc_thread_starter, .-nc_thread_starter

