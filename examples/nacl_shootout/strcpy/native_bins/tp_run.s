  .text
  .globl tp_run
  .type tp_run, @function

#! file-offset 0x432b
#! rip-offset  0x40432b
#! capacity    112 bytes

# Text                         #  Line  RIP       Bytes  Opcode    
.tp_run:                       #        0x40432b  0      OPC=0     
  pushq %rbp                   #  1     0x40432b  1      OPC=1861  
  movq %rsp, %rbp              #  2     0x40432c  3      OPC=1162  
  pushq %r14                   #  3     0x40432f  2      OPC=1861  
  pushq %r13                   #  4     0x404331  2      OPC=1861  
  pushq %r12                   #  5     0x404333  2      OPC=1861  
  pushq %rbx                   #  6     0x404335  1      OPC=1861  
  movslq %esi, %rax            #  7     0x404336  3      OPC=1289  
  leaq 0x16(,%rax,8), %rax     #  8     0x404339  8      OPC=1069  
  andq $0xf0, %rax             #  9     0x404341  4      OPC=137   
  subq %rax, %rsp              #  10    0x404345  3      OPC=2391  
  testl %esi, %esi             #  11    0x404348  2      OPC=2436  
  jle .L_40438e                #  12    0x40434a  6      OPC=919   
  nop                          #  13    0x404350  1      OPC=1343  
  nop                          #  14    0x404351  1      OPC=1343  
  movq %rdi, %r13              #  15    0x404352  3      OPC=1162  
  movq %rsp, %r14              #  16    0x404355  3      OPC=1162  
  leal -0x1(%rsi), %eax        #  17    0x404358  3      OPC=1066  
  leaq 0x8(%rsp,%rax,8), %r12  #  18    0x40435b  5      OPC=1069  
  movq %rsp, %rbx              #  19    0x404360  3      OPC=1162  
.L_40435d:                     #        0x404363  0      OPC=0     
  movq %r13, %rcx              #  20    0x404363  3      OPC=1162  
  movl $0x404160, %edx         #  21    0x404366  5      OPC=1154  
  xorl %esi, %esi              #  22    0x40436b  2      OPC=3758  
  movq %rbx, %rdi              #  23    0x40436d  3      OPC=1162  
  callq .pthread_create_plt    #  24    0x404370  5      OPC=260   
  addq $0x8, %rbx              #  25    0x404375  4      OPC=70    
  cmpq %r12, %rbx              #  26    0x404379  3      OPC=477   
  jne .L_40435d                #  27    0x40437c  6      OPC=963   
  nop                          #  28    0x404382  1      OPC=1343  
  nop                          #  29    0x404383  1      OPC=1343  
  movq %r14, %rbx              #  30    0x404384  3      OPC=1162  
.L_40437b:                     #        0x404387  0      OPC=0     
  xorl %esi, %esi              #  31    0x404387  2      OPC=3758  
  movq (%rbx), %rdi            #  32    0x404389  3      OPC=1161  
  callq .pthread_join_plt      #  33    0x40438c  5      OPC=260   
  addq $0x8, %rbx              #  34    0x404391  4      OPC=70    
  cmpq %r12, %rbx              #  35    0x404395  3      OPC=477   
  jne .L_40437b                #  36    0x404398  6      OPC=963   
  nop                          #  37    0x40439e  1      OPC=1343  
  nop                          #  38    0x40439f  1      OPC=1343  
.L_40438e:                     #        0x4043a0  0      OPC=0     
  leaq -0x20(%rbp), %rsp       #  39    0x4043a0  4      OPC=1069  
  popq %rbx                    #  40    0x4043a4  1      OPC=1694  
  popq %r12                    #  41    0x4043a5  2      OPC=1694  
  popq %r13                    #  42    0x4043a7  2      OPC=1694  
  popq %r14                    #  43    0x4043a9  2      OPC=1694  
  popq %rbp                    #  44    0x4043ab  1      OPC=1694  
  retq                         #  45    0x4043ac  1      OPC=1978  
                                                                   
.size tp_run, .-tp_run

