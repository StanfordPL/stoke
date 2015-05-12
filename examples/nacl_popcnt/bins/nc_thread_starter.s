  .text
  .globl nc_thread_starter
  .type nc_thread_starter, @function

#! file-offset 0x41980
#! rip-offset  0x41980
#! capacity    288 bytes

# Text                          #  Line  RIP      Bytes  
.nc_thread_starter:             #        0x41980  0      
  pushq %rbx                    #  1     0x41980  2      
  nop                           #  2     0x41982  1      
  nop                           #  3     0x41983  1      
  callq .__nacl_read_tp         #  4     0x41984  5      
  movl %eax, %ebx               #  5     0x41989  2      
  nop                           #  6     0x4198b  1      
  nop                           #  7     0x4198c  1      
  callq .__newlib_thread_init   #  8     0x4198d  5      
  movl %ebx, %ebx               #  9     0x41992  2      
  movl 0x18(%r15,%rbx,1), %eax  #  10    0x41994  5      
  movl %ebx, %ebx               #  11    0x41999  2      
  movl 0x1c(%r15,%rbx,1), %edi  #  12    0x4199b  5      
  nop                           #  13    0x419a0  1      
  andl $0xffffffe0, %eax        #  14    0x419a1  5      
  addq %r15, %rax               #  15    0x419a6  3      
  callq %rax                    #  16    0x419a9  2      
  movl %eax, %ebx               #  17    0x419ab  2      
  nop                           #  18    0x419ad  1      
  nop                           #  19    0x419ae  1      
  callq .__nacl_read_tp         #  20    0x419af  5      
  movl %eax, %eax               #  21    0x419b4  2      
  movl -0x8(%r15,%rax,1), %ecx  #  22    0x419b6  5      
  testl %ecx, %ecx              #  23    0x419bb  2      
  je .L_41a80                   #  24    0x419bd  6      
  nop                           #  25    0x419c3  1      
  nop                           #  26    0x419c4  1      
.L_41a20:                       #        0x419c5  0      
  xorl %edi, %edi               #  27    0x419c5  2      
  nop                           #  28    0x419c7  1      
  nop                           #  29    0x419c8  1      
  callq .pthread_cleanup_pop    #  30    0x419c9  5      
  nop                           #  31    0x419ce  1      
  nop                           #  32    0x419cf  1      
  callq .__nacl_read_tp         #  33    0x419d0  5      
  movl %eax, %eax               #  34    0x419d5  2      
  movl -0x8(%r15,%rax,1), %edx  #  35    0x419d7  5      
  testl %edx, %edx              #  36    0x419dc  2      
  jne .L_41a20                  #  37    0x419de  6      
  nop                           #  38    0x419e4  1      
  nop                           #  39    0x419e5  1      
.L_41a80:                       #        0x419e6  0      
  movl %ebx, %edi               #  40    0x419e6  2      
  popq %rbx                     #  41    0x419e8  2      
  jmpq .pthread_exit            #  42    0x419ea  5      
  nop                           #  43    0x419ef  1      
  nop                           #  44    0x419f0  1      
                                                         
.size nc_thread_starter, .-nc_thread_starter

