  .text
  .globl _ZNKSs13find_first_ofEPKcj
  .type _ZNKSs13find_first_ofEPKcj, @function

#! file-offset 0xec4c0
#! rip-offset  0xac4c0
#! capacity    128 bytes

# Text                               #  Line  RIP      Bytes  Opcode             
._ZNKSs13find_first_ofEPKcj:         #        0xac4c0  0      OPC=<label>        
  movq %r12, -0x10(%rsp)             #  1     0xac4c0  5      OPC=movq_m64_r64   
  movl %esi, %r12d                   #  2     0xac4c5  3      OPC=movl_r32_r32   
  movq %rbx, -0x18(%rsp)             #  3     0xac4c8  5      OPC=movq_m64_r64   
  movq %r13, -0x8(%rsp)              #  4     0xac4cd  5      OPC=movq_m64_r64   
  movl %edi, %ebx                    #  5     0xac4d2  2      OPC=movl_r32_r32   
  subl $0x18, %esp                   #  6     0xac4d4  3      OPC=subl_r32_imm8  
  addq %r15, %rsp                    #  7     0xac4d7  3      OPC=addq_r64_r64   
  movl %edx, %r13d                   #  8     0xac4da  3      OPC=movl_r32_r32   
  movl %r12d, %edi                   #  9     0xac4dd  3      OPC=movl_r32_r32   
  nop                                #  10    0xac4e0  1      OPC=nop            
  nop                                #  11    0xac4e1  1      OPC=nop            
  nop                                #  12    0xac4e2  1      OPC=nop            
  nop                                #  13    0xac4e3  1      OPC=nop            
  nop                                #  14    0xac4e4  1      OPC=nop            
  nop                                #  15    0xac4e5  1      OPC=nop            
  nop                                #  16    0xac4e6  1      OPC=nop            
  nop                                #  17    0xac4e7  1      OPC=nop            
  nop                                #  18    0xac4e8  1      OPC=nop            
  nop                                #  19    0xac4e9  1      OPC=nop            
  nop                                #  20    0xac4ea  1      OPC=nop            
  nop                                #  21    0xac4eb  1      OPC=nop            
  nop                                #  22    0xac4ec  1      OPC=nop            
  nop                                #  23    0xac4ed  1      OPC=nop            
  nop                                #  24    0xac4ee  1      OPC=nop            
  nop                                #  25    0xac4ef  1      OPC=nop            
  nop                                #  26    0xac4f0  1      OPC=nop            
  nop                                #  27    0xac4f1  1      OPC=nop            
  nop                                #  28    0xac4f2  1      OPC=nop            
  nop                                #  29    0xac4f3  1      OPC=nop            
  nop                                #  30    0xac4f4  1      OPC=nop            
  nop                                #  31    0xac4f5  1      OPC=nop            
  nop                                #  32    0xac4f6  1      OPC=nop            
  nop                                #  33    0xac4f7  1      OPC=nop            
  nop                                #  34    0xac4f8  1      OPC=nop            
  nop                                #  35    0xac4f9  1      OPC=nop            
  nop                                #  36    0xac4fa  1      OPC=nop            
  callq .strlen                      #  37    0xac4fb  5      OPC=callq_label    
  movl %r13d, %edx                   #  38    0xac500  3      OPC=movl_r32_r32   
  movl %r12d, %esi                   #  39    0xac503  3      OPC=movl_r32_r32   
  movl %ebx, %edi                    #  40    0xac506  2      OPC=movl_r32_r32   
  movq 0x8(%rsp), %r12               #  41    0xac508  5      OPC=movq_r64_m64   
  movq (%rsp), %rbx                  #  42    0xac50d  4      OPC=movq_r64_m64   
  movl %eax, %ecx                    #  43    0xac511  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r13              #  44    0xac513  5      OPC=movq_r64_m64   
  addl $0x18, %esp                   #  45    0xac518  3      OPC=addl_r32_imm8  
  addq %r15, %rsp                    #  46    0xac51b  3      OPC=addq_r64_r64   
  xchgw %ax, %ax                     #  47    0xac51e  2      OPC=xchgw_ax_r16   
  jmpq ._ZNKSs13find_first_ofEPKcjj  #  48    0xac520  5      OPC=jmpq_label_1   
  nop                                #  49    0xac525  1      OPC=nop            
  nop                                #  50    0xac526  1      OPC=nop            
  nop                                #  51    0xac527  1      OPC=nop            
  nop                                #  52    0xac528  1      OPC=nop            
  nop                                #  53    0xac529  1      OPC=nop            
  nop                                #  54    0xac52a  1      OPC=nop            
  nop                                #  55    0xac52b  1      OPC=nop            
  nop                                #  56    0xac52c  1      OPC=nop            
  nop                                #  57    0xac52d  1      OPC=nop            
  nop                                #  58    0xac52e  1      OPC=nop            
  nop                                #  59    0xac52f  1      OPC=nop            
  nop                                #  60    0xac530  1      OPC=nop            
  nop                                #  61    0xac531  1      OPC=nop            
  nop                                #  62    0xac532  1      OPC=nop            
  nop                                #  63    0xac533  1      OPC=nop            
  nop                                #  64    0xac534  1      OPC=nop            
  nop                                #  65    0xac535  1      OPC=nop            
  nop                                #  66    0xac536  1      OPC=nop            
  nop                                #  67    0xac537  1      OPC=nop            
  nop                                #  68    0xac538  1      OPC=nop            
  nop                                #  69    0xac539  1      OPC=nop            
  nop                                #  70    0xac53a  1      OPC=nop            
  nop                                #  71    0xac53b  1      OPC=nop            
  nop                                #  72    0xac53c  1      OPC=nop            
  nop                                #  73    0xac53d  1      OPC=nop            
  nop                                #  74    0xac53e  1      OPC=nop            
  nop                                #  75    0xac53f  1      OPC=nop            
                                                                                 
.size _ZNKSs13find_first_ofEPKcj, .-_ZNKSs13find_first_ofEPKcj

