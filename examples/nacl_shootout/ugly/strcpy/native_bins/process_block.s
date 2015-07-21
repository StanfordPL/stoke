  .text
  .globl process_block
  .type process_block, @function

#! file-offset 0x20db
#! rip-offset  0x4020db
#! capacity    186 bytes

# Text                            #  Line  RIP       Bytes  Opcode    
.process_block:                   #        0x4020db  0      OPC=0     
  pushq %r15                      #  1     0x4020db  2      OPC=1861  
  pushq %r14                      #  2     0x4020dd  2      OPC=1861  
  pushq %r13                      #  3     0x4020df  2      OPC=1861  
  pushq %r12                      #  4     0x4020e1  2      OPC=1861  
  pushq %rbp                      #  5     0x4020e3  1      OPC=1861  
  pushq %rbx                      #  6     0x4020e4  1      OPC=1861  
  subq $0x18, %rsp                #  7     0x4020e5  4      OPC=2389  
  movq %rdi, %rbx                 #  8     0x4020e9  3      OPC=1162  
  movq 0x48(%rdi), %r14           #  9     0x4020ec  4      OPC=1161  
  movq 0x50(%rdi), %r13           #  10    0x4020f0  4      OPC=1161  
  movq 0x8(%rdi), %rbp            #  11    0x4020f4  4      OPC=1161  
  leaq 0x10(%rdi), %rax           #  12    0x4020f8  4      OPC=1069  
  movq %rax, 0x8(%rsp)            #  13    0x4020fc  5      OPC=1138  
  movq 0x78(%rdi), %r12           #  14    0x402101  4      OPC=1161  
  movq 0x68(%rdi), %rdx           #  15    0x402105  4      OPC=1161  
  movq 0x60(%rdi), %rsi           #  16    0x402109  4      OPC=1161  
  movq 0x58(%rdi), %rdi           #  17    0x40210d  4      OPC=1161  
  movq %r12, %rcx                 #  18    0x402111  3      OPC=1162  
  callq .reverse_complement       #  19    0x402114  5      OPC=260   
  movq %rax, %r15                 #  20    0x402119  3      OPC=1162  
  movq %rbp, %rdi                 #  21    0x40211c  3      OPC=1162  
  callq .pthread_mutex_lock_plt   #  22    0x40211f  5      OPC=260   
  movq (%rbx), %rdi               #  23    0x402124  3      OPC=1161  
  testq %rdi, %rdi                #  24    0x402127  3      OPC=2438  
  je .L_402133                    #  25    0x40212a  6      OPC=893   
  nop                             #  26    0x402130  1      OPC=1343  
  nop                             #  27    0x402131  1      OPC=1343  
  movl 0x40(%rdi), %eax           #  28    0x402132  3      OPC=1156  
  testl %eax, %eax                #  29    0x402135  2      OPC=2436  
  je .L_402187                    #  30    0x402137  6      OPC=893   
  nop                             #  31    0x40213d  1      OPC=1343  
  nop                             #  32    0x40213e  1      OPC=1343  
.L_402133:                        #        0x40213f  0      OPC=0     
  testq %r14, %r14                #  33    0x40213f  3      OPC=2438  
  je .L_402150                    #  34    0x402142  6      OPC=893   
  nop                             #  35    0x402148  1      OPC=1343  
  nop                             #  36    0x402149  1      OPC=1343  
  testq %r13, %r13                #  37    0x40214a  3      OPC=2438  
  je .L_402150                    #  38    0x40214d  6      OPC=893   
  nop                             #  39    0x402153  1      OPC=1343  
  nop                             #  40    0x402154  1      OPC=1343  
  movq %r13, %rdx                 #  41    0x402155  3      OPC=1162  
  subq %r14, %rdx                 #  42    0x402158  3      OPC=2391  
  movq %r14, %rsi                 #  43    0x40215b  3      OPC=1162  
  movl $0x1, %edi                 #  44    0x40215e  5      OPC=1154  
  callq .persistent_write         #  45    0x402163  5      OPC=260   
.L_402150:                        #        0x402168  0      OPC=0     
  movq %r15, %rdx                 #  46    0x402168  3      OPC=1162  
  movq %r12, %rsi                 #  47    0x40216b  3      OPC=1162  
  movl $0x1, %edi                 #  48    0x40216e  5      OPC=1154  
  callq .persistent_write         #  49    0x402173  5      OPC=260   
  movl $0x1, 0x40(%rbx)           #  50    0x402178  7      OPC=1135  
  movq 0x8(%rsp), %rdi            #  51    0x40217f  5      OPC=1161  
  callq .pthread_cond_signal_plt  #  52    0x402184  5      OPC=260   
  movq %rbp, %rdi                 #  53    0x402189  3      OPC=1162  
  addq $0x18, %rsp                #  54    0x40218c  4      OPC=70    
  popq %rbx                       #  55    0x402190  1      OPC=1694  
  popq %rbp                       #  56    0x402191  1      OPC=1694  
  popq %r12                       #  57    0x402192  2      OPC=1694  
  popq %r13                       #  58    0x402194  2      OPC=1694  
  popq %r14                       #  59    0x402196  2      OPC=1694  
  popq %r15                       #  60    0x402198  2      OPC=1694  
  jmpq .pthread_mutex_unlock_plt  #  61    0x40219a  5      OPC=930   
.L_402187:                        #        0x40219f  0      OPC=0     
  addq $0x10, %rdi                #  62    0x40219f  4      OPC=70    
  movq %rbp, %rsi                 #  63    0x4021a3  3      OPC=1162  
  callq .pthread_cond_wait_plt    #  64    0x4021a6  5      OPC=260   
  jmpq .L_402133                  #  65    0x4021ab  5      OPC=930   
  nop                             #  66    0x4021b0  1      OPC=1343  
  nop                             #  67    0x4021b1  1      OPC=1343  
                                                                      
.size process_block, .-process_block

