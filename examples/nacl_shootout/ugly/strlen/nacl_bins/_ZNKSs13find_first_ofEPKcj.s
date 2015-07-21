  .text
  .globl _ZNKSs13find_first_ofEPKcj
  .type _ZNKSs13find_first_ofEPKcj, @function

#! file-offset 0xeb560
#! rip-offset  0xab560
#! capacity    128 bytes

# Text                               #  Line  RIP      Bytes  Opcode    
._ZNKSs13find_first_ofEPKcj:         #        0xab560  0      OPC=0     
  movq %r12, -0x10(%rsp)             #  1     0xab560  5      OPC=1138  
  movl %esi, %r12d                   #  2     0xab565  3      OPC=1157  
  movq %rbx, -0x18(%rsp)             #  3     0xab568  5      OPC=1138  
  movq %r13, -0x8(%rsp)              #  4     0xab56d  5      OPC=1138  
  movl %edi, %ebx                    #  5     0xab572  2      OPC=1157  
  subl $0x18, %esp                   #  6     0xab574  3      OPC=2384  
  addq %r15, %rsp                    #  7     0xab577  3      OPC=72    
  movl %edx, %r13d                   #  8     0xab57a  3      OPC=1157  
  movl %r12d, %edi                   #  9     0xab57d  3      OPC=1157  
  nop                                #  10    0xab580  1      OPC=1343  
  nop                                #  11    0xab581  1      OPC=1343  
  nop                                #  12    0xab582  1      OPC=1343  
  nop                                #  13    0xab583  1      OPC=1343  
  nop                                #  14    0xab584  1      OPC=1343  
  nop                                #  15    0xab585  1      OPC=1343  
  nop                                #  16    0xab586  1      OPC=1343  
  nop                                #  17    0xab587  1      OPC=1343  
  nop                                #  18    0xab588  1      OPC=1343  
  nop                                #  19    0xab589  1      OPC=1343  
  nop                                #  20    0xab58a  1      OPC=1343  
  nop                                #  21    0xab58b  1      OPC=1343  
  nop                                #  22    0xab58c  1      OPC=1343  
  nop                                #  23    0xab58d  1      OPC=1343  
  nop                                #  24    0xab58e  1      OPC=1343  
  nop                                #  25    0xab58f  1      OPC=1343  
  nop                                #  26    0xab590  1      OPC=1343  
  nop                                #  27    0xab591  1      OPC=1343  
  nop                                #  28    0xab592  1      OPC=1343  
  nop                                #  29    0xab593  1      OPC=1343  
  nop                                #  30    0xab594  1      OPC=1343  
  nop                                #  31    0xab595  1      OPC=1343  
  nop                                #  32    0xab596  1      OPC=1343  
  nop                                #  33    0xab597  1      OPC=1343  
  nop                                #  34    0xab598  1      OPC=1343  
  nop                                #  35    0xab599  1      OPC=1343  
  nop                                #  36    0xab59a  1      OPC=1343  
  callq .strlen                      #  37    0xab59b  5      OPC=260   
  movl %r13d, %edx                   #  38    0xab5a0  3      OPC=1157  
  movl %r12d, %esi                   #  39    0xab5a3  3      OPC=1157  
  movl %ebx, %edi                    #  40    0xab5a6  2      OPC=1157  
  movq 0x8(%rsp), %r12               #  41    0xab5a8  5      OPC=1161  
  movq (%rsp), %rbx                  #  42    0xab5ad  4      OPC=1161  
  movl %eax, %ecx                    #  43    0xab5b1  2      OPC=1157  
  movq 0x10(%rsp), %r13              #  44    0xab5b3  5      OPC=1161  
  addl $0x18, %esp                   #  45    0xab5b8  3      OPC=65    
  addq %r15, %rsp                    #  46    0xab5bb  3      OPC=72    
  xchgw %ax, %ax                     #  47    0xab5be  2      OPC=3700  
  jmpq ._ZNKSs13find_first_ofEPKcjj  #  48    0xab5c0  5      OPC=930   
  nop                                #  49    0xab5c5  1      OPC=1343  
  nop                                #  50    0xab5c6  1      OPC=1343  
  nop                                #  51    0xab5c7  1      OPC=1343  
  nop                                #  52    0xab5c8  1      OPC=1343  
  nop                                #  53    0xab5c9  1      OPC=1343  
  nop                                #  54    0xab5ca  1      OPC=1343  
  nop                                #  55    0xab5cb  1      OPC=1343  
  nop                                #  56    0xab5cc  1      OPC=1343  
  nop                                #  57    0xab5cd  1      OPC=1343  
  nop                                #  58    0xab5ce  1      OPC=1343  
  nop                                #  59    0xab5cf  1      OPC=1343  
  nop                                #  60    0xab5d0  1      OPC=1343  
  nop                                #  61    0xab5d1  1      OPC=1343  
  nop                                #  62    0xab5d2  1      OPC=1343  
  nop                                #  63    0xab5d3  1      OPC=1343  
  nop                                #  64    0xab5d4  1      OPC=1343  
  nop                                #  65    0xab5d5  1      OPC=1343  
  nop                                #  66    0xab5d6  1      OPC=1343  
  nop                                #  67    0xab5d7  1      OPC=1343  
  nop                                #  68    0xab5d8  1      OPC=1343  
  nop                                #  69    0xab5d9  1      OPC=1343  
  nop                                #  70    0xab5da  1      OPC=1343  
  nop                                #  71    0xab5db  1      OPC=1343  
  nop                                #  72    0xab5dc  1      OPC=1343  
  nop                                #  73    0xab5dd  1      OPC=1343  
  nop                                #  74    0xab5de  1      OPC=1343  
  nop                                #  75    0xab5df  1      OPC=1343  
                                                                        
.size _ZNKSs13find_first_ofEPKcj, .-_ZNKSs13find_first_ofEPKcj

