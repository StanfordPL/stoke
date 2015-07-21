  .text
  .globl _ZN5boost11object_poolI4NodeNS_33default_user_allocator_new_deleteEED1Ev
  .type _ZN5boost11object_poolI4NodeNS_33default_user_allocator_new_deleteEED1Ev, @function

#! file-offset 0x3f94
#! rip-offset  0x403f94
#! capacity    144 bytes

# Text                                                                           #  Line  RIP       Bytes  Opcode    
._ZN5boost11object_poolI4NodeNS_33default_user_allocator_new_deleteEED1Ev:       #        0x403f94  0      OPC=0     
  pushq %r13                                                                     #  1     0x403f94  2      OPC=1861  
  pushq %r12                                                                     #  2     0x403f96  2      OPC=1861  
  pushq %rbp                                                                     #  3     0x403f98  1      OPC=1861  
  pushq %rbx                                                                     #  4     0x403f99  1      OPC=1861  
  subq $0x8, %rsp                                                                #  5     0x403f9a  4      OPC=2389  
  movq %rdi, %rbp                                                                #  6     0x403f9e  3      OPC=1162  
  movq 0x8(%rdi), %rdi                                                           #  7     0x403fa1  4      OPC=1161  
  testq %rdi, %rdi                                                               #  8     0x403fa5  3      OPC=2438  
  je .L_404011                                                                   #  9     0x403fa8  6      OPC=893   
  nop                                                                            #  10    0x403fae  1      OPC=1343  
  nop                                                                            #  11    0x403faf  1      OPC=1343  
  movq 0x10(%rbp), %rsi                                                          #  12    0x403fb0  4      OPC=1161  
  movq 0x18(%rbp), %rbx                                                          #  13    0x403fb4  4      OPC=1161  
  movq %rbx, %rax                                                                #  14    0x403fb8  3      OPC=1162  
  movl $0x8, %ecx                                                                #  15    0x403fbb  5      OPC=1154  
  jmpq .L_403fbf                                                                 #  16    0x403fc0  5      OPC=930   
  nop                                                                            #  17    0x403fc5  1      OPC=1343  
  nop                                                                            #  18    0x403fc6  1      OPC=1343  
.L_403fbc:                                                                       #        0x403fc7  0      OPC=0     
  movq %rdx, %rcx                                                                #  19    0x403fc7  3      OPC=1162  
.L_403fbf:                                                                       #        0x403fca  0      OPC=0     
  xorl %edx, %edx                                                                #  20    0x403fca  2      OPC=3758  
  divq %rcx                                                                      #  21    0x403fcc  3      OPC=612   
  movq %rcx, %rax                                                                #  22    0x403fcf  3      OPC=1162  
  testq %rdx, %rdx                                                               #  23    0x403fd2  3      OPC=2438  
  jne .L_403fbc                                                                  #  24    0x403fd5  6      OPC=963   
  nop                                                                            #  25    0x403fdb  1      OPC=1343  
  nop                                                                            #  26    0x403fdc  1      OPC=1343  
  movq %rbx, %rax                                                                #  27    0x403fdd  3      OPC=1162  
  xorl %edx, %edx                                                                #  28    0x403fe0  2      OPC=3758  
  divq %rcx                                                                      #  29    0x403fe2  3      OPC=612   
  leaq (,%rax,8), %rbx                                                           #  30    0x403fe5  8      OPC=1069  
.L_403fdc:                                                                       #        0x403fed  0      OPC=0     
  movq -0x8(%rdi,%rsi,1), %r12                                                   #  31    0x403fed  5      OPC=1161  
  leaq -0x10(%rdi,%rsi,1), %rdx                                                  #  32    0x403ff2  5      OPC=1069  
  movq (%rdx), %r13                                                              #  33    0x403ff7  3      OPC=1161  
  cmpq %rdx, %rdi                                                                #  34    0x403ffa  3      OPC=477   
  je .L_403ff9                                                                   #  35    0x403ffd  6      OPC=893   
  nop                                                                            #  36    0x404003  1      OPC=1343  
  nop                                                                            #  37    0x404004  1      OPC=1343  
  movq %rdi, %rax                                                                #  38    0x404005  3      OPC=1162  
.L_403ff1:                                                                       #        0x404008  0      OPC=0     
  addq %rbx, %rax                                                                #  39    0x404008  3      OPC=72    
  cmpq %rax, %rdx                                                                #  40    0x40400b  3      OPC=477   
  jne .L_403ff1                                                                  #  41    0x40400e  6      OPC=963   
  nop                                                                            #  42    0x404014  1      OPC=1343  
  nop                                                                            #  43    0x404015  1      OPC=1343  
.L_403ff9:                                                                       #        0x404016  0      OPC=0     
  callq ._ZdaPv_plt                                                              #  44    0x404016  5      OPC=260   
  movq %r13, %rdi                                                                #  45    0x40401b  3      OPC=1162  
  movq %r12, %rsi                                                                #  46    0x40401e  3      OPC=1162  
  testq %r13, %r13                                                               #  47    0x404021  3      OPC=2438  
  jne .L_403fdc                                                                  #  48    0x404024  6      OPC=963   
  nop                                                                            #  49    0x40402a  1      OPC=1343  
  nop                                                                            #  50    0x40402b  1      OPC=1343  
  movq $0x0, 0x8(%rbp)                                                           #  51    0x40402c  8      OPC=1137  
.L_404011:                                                                       #        0x404034  0      OPC=0     
  movq %rbp, %rdi                                                                #  52    0x404034  3      OPC=1162  
  addq $0x8, %rsp                                                                #  53    0x404037  4      OPC=70    
  popq %rbx                                                                      #  54    0x40403b  1      OPC=1694  
  popq %rbp                                                                      #  55    0x40403c  1      OPC=1694  
  popq %r12                                                                      #  56    0x40403d  2      OPC=1694  
  popq %r13                                                                      #  57    0x40403f  2      OPC=1694  
  jmpq ._ZN5boost4poolINS_33default_user_allocator_new_deleteEE12purge_memoryEv  #  58    0x404041  5      OPC=930   
  nop                                                                            #  59    0x404046  1      OPC=1343  
                                                                                                                     
.size _ZN5boost11object_poolI4NodeNS_33default_user_allocator_new_deleteEED1Ev, .-_ZN5boost11object_poolI4NodeNS_33default_user_allocator_new_deleteEED1Ev

