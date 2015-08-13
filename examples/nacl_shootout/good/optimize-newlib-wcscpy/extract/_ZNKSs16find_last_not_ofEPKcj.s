  .text
  .globl _ZNKSs16find_last_not_ofEPKcj
  .type _ZNKSs16find_last_not_ofEPKcj, @function

#! file-offset 0xeb920
#! rip-offset  0xab920
#! capacity    128 bytes

# Text                                  #  Line  RIP      Bytes  Opcode             
._ZNKSs16find_last_not_ofEPKcj:         #        0xab920  0      OPC=<label>        
  movq %r12, -0x10(%rsp)                #  1     0xab920  5      OPC=movq_m64_r64   
  movl %esi, %r12d                      #  2     0xab925  3      OPC=movl_r32_r32   
  movq %rbx, -0x18(%rsp)                #  3     0xab928  5      OPC=movq_m64_r64   
  movq %r13, -0x8(%rsp)                 #  4     0xab92d  5      OPC=movq_m64_r64   
  movl %edi, %ebx                       #  5     0xab932  2      OPC=movl_r32_r32   
  subl $0x18, %esp                      #  6     0xab934  3      OPC=subl_r32_imm8  
  addq %r15, %rsp                       #  7     0xab937  3      OPC=addq_r64_r64   
  movl %edx, %r13d                      #  8     0xab93a  3      OPC=movl_r32_r32   
  movl %r12d, %edi                      #  9     0xab93d  3      OPC=movl_r32_r32   
  nop                                   #  10    0xab940  1      OPC=nop            
  nop                                   #  11    0xab941  1      OPC=nop            
  nop                                   #  12    0xab942  1      OPC=nop            
  nop                                   #  13    0xab943  1      OPC=nop            
  nop                                   #  14    0xab944  1      OPC=nop            
  nop                                   #  15    0xab945  1      OPC=nop            
  nop                                   #  16    0xab946  1      OPC=nop            
  nop                                   #  17    0xab947  1      OPC=nop            
  nop                                   #  18    0xab948  1      OPC=nop            
  nop                                   #  19    0xab949  1      OPC=nop            
  nop                                   #  20    0xab94a  1      OPC=nop            
  nop                                   #  21    0xab94b  1      OPC=nop            
  nop                                   #  22    0xab94c  1      OPC=nop            
  nop                                   #  23    0xab94d  1      OPC=nop            
  nop                                   #  24    0xab94e  1      OPC=nop            
  nop                                   #  25    0xab94f  1      OPC=nop            
  nop                                   #  26    0xab950  1      OPC=nop            
  nop                                   #  27    0xab951  1      OPC=nop            
  nop                                   #  28    0xab952  1      OPC=nop            
  nop                                   #  29    0xab953  1      OPC=nop            
  nop                                   #  30    0xab954  1      OPC=nop            
  nop                                   #  31    0xab955  1      OPC=nop            
  nop                                   #  32    0xab956  1      OPC=nop            
  nop                                   #  33    0xab957  1      OPC=nop            
  nop                                   #  34    0xab958  1      OPC=nop            
  nop                                   #  35    0xab959  1      OPC=nop            
  nop                                   #  36    0xab95a  1      OPC=nop            
  callq .strlen                         #  37    0xab95b  5      OPC=callq_label    
  movl %r13d, %edx                      #  38    0xab960  3      OPC=movl_r32_r32   
  movl %r12d, %esi                      #  39    0xab963  3      OPC=movl_r32_r32   
  movl %ebx, %edi                       #  40    0xab966  2      OPC=movl_r32_r32   
  movq 0x8(%rsp), %r12                  #  41    0xab968  5      OPC=movq_r64_m64   
  movq (%rsp), %rbx                     #  42    0xab96d  4      OPC=movq_r64_m64   
  movl %eax, %ecx                       #  43    0xab971  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r13                 #  44    0xab973  5      OPC=movq_r64_m64   
  addl $0x18, %esp                      #  45    0xab978  3      OPC=addl_r32_imm8  
  addq %r15, %rsp                       #  46    0xab97b  3      OPC=addq_r64_r64   
  xchgw %ax, %ax                        #  47    0xab97e  2      OPC=xchgw_ax_r16   
  jmpq ._ZNKSs16find_last_not_ofEPKcjj  #  48    0xab980  5      OPC=jmpq_label_1   
  nop                                   #  49    0xab985  1      OPC=nop            
  nop                                   #  50    0xab986  1      OPC=nop            
  nop                                   #  51    0xab987  1      OPC=nop            
  nop                                   #  52    0xab988  1      OPC=nop            
  nop                                   #  53    0xab989  1      OPC=nop            
  nop                                   #  54    0xab98a  1      OPC=nop            
  nop                                   #  55    0xab98b  1      OPC=nop            
  nop                                   #  56    0xab98c  1      OPC=nop            
  nop                                   #  57    0xab98d  1      OPC=nop            
  nop                                   #  58    0xab98e  1      OPC=nop            
  nop                                   #  59    0xab98f  1      OPC=nop            
  nop                                   #  60    0xab990  1      OPC=nop            
  nop                                   #  61    0xab991  1      OPC=nop            
  nop                                   #  62    0xab992  1      OPC=nop            
  nop                                   #  63    0xab993  1      OPC=nop            
  nop                                   #  64    0xab994  1      OPC=nop            
  nop                                   #  65    0xab995  1      OPC=nop            
  nop                                   #  66    0xab996  1      OPC=nop            
  nop                                   #  67    0xab997  1      OPC=nop            
  nop                                   #  68    0xab998  1      OPC=nop            
  nop                                   #  69    0xab999  1      OPC=nop            
  nop                                   #  70    0xab99a  1      OPC=nop            
  nop                                   #  71    0xab99b  1      OPC=nop            
  nop                                   #  72    0xab99c  1      OPC=nop            
  nop                                   #  73    0xab99d  1      OPC=nop            
  nop                                   #  74    0xab99e  1      OPC=nop            
  nop                                   #  75    0xab99f  1      OPC=nop            
                                                                                    
.size _ZNKSs16find_last_not_ofEPKcj, .-_ZNKSs16find_last_not_ofEPKcj

