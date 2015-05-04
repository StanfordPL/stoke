  .text
  .globl nc_thread_starter
  .type nc_thread_starter, @function

#! file-offset 0x41a00
#! rip-offset  0x41a00
#! capacity    288 bytes

# Text                          #  Line  RIP      Bytes  
.nc_thread_starter:             #        0x41a00  0      
  pushq %rbx                    #  1     0x41a00  2      
  nop                           #  2     0x41a02  1      
  nop                           #  3     0x41a03  1      
  callq .__nacl_read_tp         #  4     0x41a04  5      
  movl %eax, %ebx               #  5     0x41a09  2      
  nop                           #  6     0x41a0b  1      
  nop                           #  7     0x41a0c  1      
  callq .__newlib_thread_init   #  8     0x41a0d  5      
  movl %ebx, %ebx               #  9     0x41a12  2      
  movl 0x18(%r15,%rbx,1), %eax  #  10    0x41a14  5      
  movl %ebx, %ebx               #  11    0x41a19  2      
  movl 0x1c(%r15,%rbx,1), %edi  #  12    0x41a1b  5      
  nop                           #  13    0x41a20  1      
  andl $0xffffffe0, %eax        #  14    0x41a21  5      
  addq %r15, %rax               #  15    0x41a26  3      
  callq %rax                    #  16    0x41a29  2      
  movl %eax, %ebx               #  17    0x41a2b  2      
  nop                           #  18    0x41a2d  1      
  nop                           #  19    0x41a2e  1      
  callq .__nacl_read_tp         #  20    0x41a2f  5      
  movl %eax, %eax               #  21    0x41a34  2      
  movl -0x8(%r15,%rax,1), %ecx  #  22    0x41a36  5      
  testl %ecx, %ecx              #  23    0x41a3b  2      
  je .L_41b00                   #  24    0x41a3d  6      
  nop                           #  25    0x41a43  1      
  nop                           #  26    0x41a44  1      
.L_41aa0:                       #        0x41a45  0      
  xorl %edi, %edi               #  27    0x41a45  2      
  nop                           #  28    0x41a47  1      
  nop                           #  29    0x41a48  1      
  callq .pthread_cleanup_pop    #  30    0x41a49  5      
  nop                           #  31    0x41a4e  1      
  nop                           #  32    0x41a4f  1      
  callq .__nacl_read_tp         #  33    0x41a50  5      
  movl %eax, %eax               #  34    0x41a55  2      
  movl -0x8(%r15,%rax,1), %edx  #  35    0x41a57  5      
  testl %edx, %edx              #  36    0x41a5c  2      
  jne .L_41aa0                  #  37    0x41a5e  6      
  nop                           #  38    0x41a64  1      
  nop                           #  39    0x41a65  1      
.L_41b00:                       #        0x41a66  0      
  movl %ebx, %edi               #  40    0x41a66  2      
  popq %rbx                     #  41    0x41a68  2      
  jmpq .pthread_exit            #  42    0x41a6a  5      
  nop                           #  43    0x41a6f  1      
  nop                           #  44    0x41a70  1      
                                                         
.size nc_thread_starter, .-nc_thread_starter

