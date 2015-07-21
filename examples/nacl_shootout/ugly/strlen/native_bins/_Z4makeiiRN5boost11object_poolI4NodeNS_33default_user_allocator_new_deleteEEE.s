  .text
  .globl _Z4makeiiRN5boost11object_poolI4NodeNS_33default_user_allocator_new_deleteEEE
  .type _Z4makeiiRN5boost11object_poolI4NodeNS_33default_user_allocator_new_deleteEEE, @function

#! file-offset 0x262c
#! rip-offset  0x40262c
#! capacity    169 bytes

# Text                                                                                          #  Line  RIP       Bytes  Opcode    
._Z4makeiiRN5boost11object_poolI4NodeNS_33default_user_allocator_new_deleteEEE:                 #        0x40262c  0      OPC=0     
  pushq %r14                                                                                    #  1     0x40262c  2      OPC=1861  
  pushq %r13                                                                                    #  2     0x40262e  2      OPC=1861  
  pushq %r12                                                                                    #  3     0x402630  2      OPC=1861  
  pushq %rbp                                                                                    #  4     0x402632  1      OPC=1861  
  pushq %rbx                                                                                    #  5     0x402633  1      OPC=1861  
  movl %edi, %r14d                                                                              #  6     0x402634  3      OPC=1157  
  movq %rdx, %rbp                                                                               #  7     0x402637  3      OPC=1162  
  testl %esi, %esi                                                                              #  8     0x40263a  2      OPC=2436  
  jle .L_402688                                                                                 #  9     0x40263c  6      OPC=919   
  nop                                                                                           #  10    0x402642  1      OPC=1343  
  nop                                                                                           #  11    0x402643  1      OPC=1343  
  leal -0x1(%rsi), %ebx                                                                         #  12    0x402644  3      OPC=1066  
  leal (%rdi,%rdi,1), %r12d                                                                     #  13    0x402647  4      OPC=1066  
  movl %ebx, %esi                                                                               #  14    0x40264b  2      OPC=1157  
  movl %r12d, %edi                                                                              #  15    0x40264d  3      OPC=1157  
  callq ._Z4makeiiRN5boost11object_poolI4NodeNS_33default_user_allocator_new_deleteEEE          #  16    0x402650  5      OPC=260   
  movq %rax, %r13                                                                               #  17    0x402655  3      OPC=1162  
  leal -0x1(%r12), %edi                                                                         #  18    0x402658  5      OPC=1066  
  movq %rbp, %rdx                                                                               #  19    0x40265d  3      OPC=1162  
  movl %ebx, %esi                                                                               #  20    0x402660  2      OPC=1157  
  callq ._Z4makeiiRN5boost11object_poolI4NodeNS_33default_user_allocator_new_deleteEEE          #  21    0x402662  5      OPC=260   
  movq %rax, %rbx                                                                               #  22    0x402667  3      OPC=1162  
  movq (%rbp), %rax                                                                             #  23    0x40266a  4      OPC=1161  
  testq %rax, %rax                                                                              #  24    0x40266e  3      OPC=2438  
  je .L_4026b3                                                                                  #  25    0x402671  6      OPC=893   
  nop                                                                                           #  26    0x402677  1      OPC=1343  
  nop                                                                                           #  27    0x402678  1      OPC=1343  
  movq (%rax), %rdx                                                                             #  28    0x402679  3      OPC=1161  
  movq %rdx, (%rbp)                                                                             #  29    0x40267c  4      OPC=1138  
.L_402674:                                                                                      #        0x402680  0      OPC=0     
  movq %rbx, (%rax)                                                                             #  30    0x402680  3      OPC=1138  
  movq %r13, 0x8(%rax)                                                                          #  31    0x402683  4      OPC=1138  
  movl %r14d, 0x10(%rax)                                                                        #  32    0x402687  4      OPC=1136  
.L_40267f:                                                                                      #        0x40268b  0      OPC=0     
  popq %rbx                                                                                     #  33    0x40268b  1      OPC=1694  
  popq %rbp                                                                                     #  34    0x40268c  1      OPC=1694  
  popq %r12                                                                                     #  35    0x40268d  2      OPC=1694  
  popq %r13                                                                                     #  36    0x40268f  2      OPC=1694  
  popq %r14                                                                                     #  37    0x402691  2      OPC=1694  
  retq                                                                                          #  38    0x402693  1      OPC=1978  
.L_402688:                                                                                      #        0x402694  0      OPC=0     
  movq (%rdx), %rax                                                                             #  39    0x402694  3      OPC=1161  
  testq %rax, %rax                                                                              #  40    0x402697  3      OPC=2438  
  je .L_4026c4                                                                                  #  41    0x40269a  6      OPC=893   
  nop                                                                                           #  42    0x4026a0  1      OPC=1343  
  nop                                                                                           #  43    0x4026a1  1      OPC=1343  
  movq (%rax), %rdx                                                                             #  44    0x4026a2  3      OPC=1161  
  movq %rdx, (%rbp)                                                                             #  45    0x4026a5  4      OPC=1138  
.L_402697:                                                                                      #        0x4026a9  0      OPC=0     
  movq $0x0, (%rax)                                                                             #  46    0x4026a9  7      OPC=1137  
  movq $0x0, 0x8(%rax)                                                                          #  47    0x4026b0  8      OPC=1137  
  movl %r14d, 0x10(%rax)                                                                        #  48    0x4026b8  4      OPC=1136  
  popq %rbx                                                                                     #  49    0x4026bc  1      OPC=1694  
  popq %rbp                                                                                     #  50    0x4026bd  1      OPC=1694  
  popq %r12                                                                                     #  51    0x4026be  2      OPC=1694  
  popq %r13                                                                                     #  52    0x4026c0  2      OPC=1694  
  popq %r14                                                                                     #  53    0x4026c2  2      OPC=1694  
  retq                                                                                          #  54    0x4026c4  1      OPC=1978  
.L_4026b3:                                                                                      #        0x4026c5  0      OPC=0     
  movq %rbp, %rdi                                                                               #  55    0x4026c5  3      OPC=1162  
  callq ._ZN5boost4poolINS_33default_user_allocator_new_deleteEE26ordered_malloc_need_resizeEv  #  56    0x4026c8  5      OPC=260   
  testq %rax, %rax                                                                              #  57    0x4026cd  3      OPC=2438  
  jne .L_402674                                                                                 #  58    0x4026d0  6      OPC=963   
  nop                                                                                           #  59    0x4026d6  1      OPC=1343  
  nop                                                                                           #  60    0x4026d7  1      OPC=1343  
  xorl %eax, %eax                                                                               #  61    0x4026d8  2      OPC=3758  
  jmpq .L_40267f                                                                                #  62    0x4026da  5      OPC=930   
  nop                                                                                           #  63    0x4026df  1      OPC=1343  
  nop                                                                                           #  64    0x4026e0  1      OPC=1343  
.L_4026c4:                                                                                      #        0x4026e1  0      OPC=0     
  movq %rdx, %rdi                                                                               #  65    0x4026e1  3      OPC=1162  
  callq ._ZN5boost4poolINS_33default_user_allocator_new_deleteEE26ordered_malloc_need_resizeEv  #  66    0x4026e4  5      OPC=260   
  testq %rax, %rax                                                                              #  67    0x4026e9  3      OPC=2438  
  jne .L_402697                                                                                 #  68    0x4026ec  6      OPC=963   
  nop                                                                                           #  69    0x4026f2  1      OPC=1343  
  nop                                                                                           #  70    0x4026f3  1      OPC=1343  
  xorl %eax, %eax                                                                               #  71    0x4026f4  2      OPC=3758  
  jmpq .L_40267f                                                                                #  72    0x4026f6  5      OPC=930   
  nop                                                                                           #  73    0x4026fb  1      OPC=1343  
  nop                                                                                           #  74    0x4026fc  1      OPC=1343  
                                                                                                                                    
.size _Z4makeiiRN5boost11object_poolI4NodeNS_33default_user_allocator_new_deleteEEE, .-_Z4makeiiRN5boost11object_poolI4NodeNS_33default_user_allocator_new_deleteEEE

