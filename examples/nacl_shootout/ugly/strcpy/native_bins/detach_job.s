  .text
  .globl detach_job
  .type detach_job, @function

#! file-offset 0x21a4
#! rip-offset  0x4021a4
#! capacity    186 bytes

# Text                          #  Line  RIP       Bytes  Opcode    
.detach_job:                    #        0x4021a4  0      OPC=0     
  pushq %r15                    #  1     0x4021a4  2      OPC=1861  
  pushq %r14                    #  2     0x4021a6  2      OPC=1861  
  pushq %r13                    #  3     0x4021a8  2      OPC=1861  
  pushq %r12                    #  4     0x4021aa  2      OPC=1861  
  pushq %rbp                    #  5     0x4021ac  1      OPC=1861  
  pushq %rbx                    #  6     0x4021ad  1      OPC=1861  
  subq $0x18, %rsp              #  7     0x4021ae  4      OPC=2389  
  movq %rdi, %r15               #  8     0x4021b2  3      OPC=1162  
  movq %rsi, %r14               #  9     0x4021b5  3      OPC=1162  
  movq %rdx, %r13               #  10    0x4021b8  3      OPC=1162  
  movq %rcx, %r12               #  11    0x4021bb  3      OPC=1162  
  movq %r8, %rbp                #  12    0x4021be  3      OPC=1162  
  movq %r9, 0x8(%rsp)           #  13    0x4021c1  5      OPC=1138  
  movl $0x88, %esi              #  14    0x4021c6  5      OPC=1154  
  movl $0x1, %edi               #  15    0x4021cb  5      OPC=1154  
  callq .calloc_plt             #  16    0x4021d0  5      OPC=260   
  movq %rax, %rbx               #  17    0x4021d5  3      OPC=1162  
  testq %rax, %rax              #  18    0x4021d8  3      OPC=2438  
  movq 0x8(%rsp), %r9           #  19    0x4021db  5      OPC=1161  
  je .L_402245                  #  20    0x4021e0  6      OPC=893   
  nop                           #  21    0x4021e6  1      OPC=1343  
  nop                           #  22    0x4021e7  1      OPC=1343  
  movq %r9, 0x8(%rax)           #  23    0x4021e8  4      OPC=1138  
  leaq 0x10(%rax), %rdi         #  24    0x4021ec  4      OPC=1069  
  xorl %esi, %esi               #  25    0x4021f0  2      OPC=3758  
  callq .pthread_cond_init_plt  #  26    0x4021f2  5      OPC=260   
  movq %r15, 0x48(%rbx)         #  27    0x4021f7  4      OPC=1138  
  movq %r14, 0x50(%rbx)         #  28    0x4021fb  4      OPC=1138  
  movq %r13, 0x58(%rbx)         #  29    0x4021ff  4      OPC=1138  
  movq %r12, 0x60(%rbx)         #  30    0x402203  4      OPC=1138  
  movq %rbp, 0x68(%rbx)         #  31    0x402207  4      OPC=1138  
  movq 0x58(%rsp), %rax         #  32    0x40220b  5      OPC=1161  
  movq %rax, 0x78(%rbx)         #  33    0x402210  4      OPC=1138  
  movq 0x50(%rsp), %rax         #  34    0x402214  5      OPC=1161  
  movq %rax, (%rbx)             #  35    0x402219  3      OPC=1138  
  movl 0x60(%rsp), %eax         #  36    0x40221c  4      OPC=1156  
  movl %eax, 0x80(%rbx)         #  37    0x402220  6      OPC=1136  
  leaq 0x70(%rbx), %rdi         #  38    0x402226  4      OPC=1069  
  movq %rbx, %rcx               #  39    0x40222a  3      OPC=1162  
  movl $0x4020db, %edx          #  40    0x40222d  5      OPC=1154  
  xorl %esi, %esi               #  41    0x402232  2      OPC=3758  
  callq .pthread_create_plt     #  42    0x402234  5      OPC=260   
  movq %rbx, %rax               #  43    0x402239  3      OPC=1162  
  addq $0x18, %rsp              #  44    0x40223c  4      OPC=70    
  popq %rbx                     #  45    0x402240  1      OPC=1694  
  popq %rbp                     #  46    0x402241  1      OPC=1694  
  popq %r12                     #  47    0x402242  2      OPC=1694  
  popq %r13                     #  48    0x402244  2      OPC=1694  
  popq %r14                     #  49    0x402246  2      OPC=1694  
  popq %r15                     #  50    0x402248  2      OPC=1694  
  retq                          #  51    0x40224a  1      OPC=1978  
.L_402245:                      #        0x40224b  0      OPC=0     
  movl $0x408401, %ecx          #  52    0x40224b  5      OPC=1154  
  movl $0xc5, %edx              #  53    0x402250  5      OPC=1154  
  movl $0x408348, %esi          #  54    0x402255  5      OPC=1154  
  movl $0x408352, %edi          #  55    0x40225a  5      OPC=1154  
  callq .__assert_fail_plt      #  56    0x40225f  5      OPC=260   
                                                                    
.size detach_job, .-detach_job

