  .text
  .globl pthread_cleanup_pop
  .type pthread_cleanup_pop, @function

#! file-offset 0x40220
#! rip-offset  0x40220
#! capacity    224 bytes

# Text                          #  Line  RIP      Bytes  
.pthread_cleanup_pop:           #        0x40220  0      
  movq %rbx, -0x10(%rsp)        #  1     0x40220  5      
  movq %r12, -0x8(%rsp)         #  2     0x40225  5      
  subl $0x18, %esp              #  3     0x4022a  3      
  addq %r15, %rsp               #  4     0x4022d  3      
  movl %edi, %r12d              #  5     0x40230  3      
  nop                           #  6     0x40233  1      
  callq .__nacl_read_tp         #  7     0x40234  5      
  movl %eax, %eax               #  8     0x40239  2      
  movl -0x8(%r15,%rax,1), %ebx  #  9     0x4023b  5      
  testq %rbx, %rbx              #  10    0x40240  3      
  je .L_402e0                   #  11    0x40243  6      
  nop                           #  12    0x40249  1      
  callq .__nacl_read_tp         #  13    0x4024a  5      
  movl %ebx, %ebx               #  14    0x4024f  2      
  movl (%r15,%rbx,1), %edx      #  15    0x40251  4      
  testl %r12d, %r12d            #  16    0x40255  3      
  movl %eax, %eax               #  17    0x40258  2      
  movl %edx, -0x8(%r15,%rax,1)  #  18    0x4025a  5      
  jne .L_402a0                  #  19    0x4025f  6      
  nop                           #  20    0x40265  1      
.L_40280:                       #        0x40266  0      
  movl %ebx, %edi               #  21    0x40266  2      
  movq 0x10(%rsp), %r12         #  22    0x40268  5      
  movq 0x8(%rsp), %rbx          #  23    0x4026d  5      
  addl $0x18, %esp              #  24    0x40272  3      
  addq %r15, %rsp               #  25    0x40275  3      
  jmpq .free                    #  26    0x40278  5      
  nop                           #  27    0x4027d  1      
.L_402a0:                       #        0x4027e  0      
  movl %ebx, %ebx               #  28    0x4027e  2      
  movl 0x4(%r15,%rbx,1), %eax   #  29    0x40280  5      
  movl %ebx, %ebx               #  30    0x40285  2      
  movl 0x8(%r15,%rbx,1), %edi   #  31    0x40287  5      
  nop                           #  32    0x4028c  1      
  andl $0xffffffe0, %eax        #  33    0x4028d  5      
  addq %r15, %rax               #  34    0x40292  3      
  callq %rax                    #  35    0x40295  2      
  jmpq .L_40280                 #  36    0x40297  5      
  nop                           #  37    0x4029c  1      
  nop                           #  38    0x4029d  1      
.L_402e0:                       #        0x4029e  0      
  movq 0x8(%rsp), %rbx          #  39    0x4029e  5      
  movq 0x10(%rsp), %r12         #  40    0x402a3  5      
  addl $0x18, %esp              #  41    0x402a8  3      
  addq %r15, %rsp               #  42    0x402ab  3      
  popq %r11                     #  43    0x402ae  3      
  andl $0xffffffe0, %r11d       #  44    0x402b1  7      
  addq %r15, %r11               #  45    0x402b8  3      
  jmpq %r11                     #  46    0x402bb  3      
  nop                           #  47    0x402be  1      
                                                         
.size pthread_cleanup_pop, .-pthread_cleanup_pop

