  .text
  .globl _ZNKSs17find_first_not_ofEPKcj
  .type _ZNKSs17find_first_not_ofEPKcj, @function

#! file-offset 0xeb9a0
#! rip-offset  0xab9a0
#! capacity    128 bytes

# Text                                   #  Line  RIP      Bytes  Opcode             
._ZNKSs17find_first_not_ofEPKcj:         #        0xab9a0  0      OPC=<label>        
  movq %r12, -0x10(%rsp)                 #  1     0xab9a0  5      OPC=movq_m64_r64   
  movl %esi, %r12d                       #  2     0xab9a5  3      OPC=movl_r32_r32   
  movq %rbx, -0x18(%rsp)                 #  3     0xab9a8  5      OPC=movq_m64_r64   
  movq %r13, -0x8(%rsp)                  #  4     0xab9ad  5      OPC=movq_m64_r64   
  movl %edi, %ebx                        #  5     0xab9b2  2      OPC=movl_r32_r32   
  subl $0x18, %esp                       #  6     0xab9b4  3      OPC=subl_r32_imm8  
  addq %r15, %rsp                        #  7     0xab9b7  3      OPC=addq_r64_r64   
  movl %edx, %r13d                       #  8     0xab9ba  3      OPC=movl_r32_r32   
  movl %r12d, %edi                       #  9     0xab9bd  3      OPC=movl_r32_r32   
  nop                                    #  10    0xab9c0  1      OPC=nop            
  nop                                    #  11    0xab9c1  1      OPC=nop            
  nop                                    #  12    0xab9c2  1      OPC=nop            
  nop                                    #  13    0xab9c3  1      OPC=nop            
  nop                                    #  14    0xab9c4  1      OPC=nop            
  nop                                    #  15    0xab9c5  1      OPC=nop            
  nop                                    #  16    0xab9c6  1      OPC=nop            
  nop                                    #  17    0xab9c7  1      OPC=nop            
  nop                                    #  18    0xab9c8  1      OPC=nop            
  nop                                    #  19    0xab9c9  1      OPC=nop            
  nop                                    #  20    0xab9ca  1      OPC=nop            
  nop                                    #  21    0xab9cb  1      OPC=nop            
  nop                                    #  22    0xab9cc  1      OPC=nop            
  nop                                    #  23    0xab9cd  1      OPC=nop            
  nop                                    #  24    0xab9ce  1      OPC=nop            
  nop                                    #  25    0xab9cf  1      OPC=nop            
  nop                                    #  26    0xab9d0  1      OPC=nop            
  nop                                    #  27    0xab9d1  1      OPC=nop            
  nop                                    #  28    0xab9d2  1      OPC=nop            
  nop                                    #  29    0xab9d3  1      OPC=nop            
  nop                                    #  30    0xab9d4  1      OPC=nop            
  nop                                    #  31    0xab9d5  1      OPC=nop            
  nop                                    #  32    0xab9d6  1      OPC=nop            
  nop                                    #  33    0xab9d7  1      OPC=nop            
  nop                                    #  34    0xab9d8  1      OPC=nop            
  nop                                    #  35    0xab9d9  1      OPC=nop            
  nop                                    #  36    0xab9da  1      OPC=nop            
  callq .strlen                          #  37    0xab9db  5      OPC=callq_label    
  movl %r13d, %edx                       #  38    0xab9e0  3      OPC=movl_r32_r32   
  movl %r12d, %esi                       #  39    0xab9e3  3      OPC=movl_r32_r32   
  movl %ebx, %edi                        #  40    0xab9e6  2      OPC=movl_r32_r32   
  movq 0x8(%rsp), %r12                   #  41    0xab9e8  5      OPC=movq_r64_m64   
  movq (%rsp), %rbx                      #  42    0xab9ed  4      OPC=movq_r64_m64   
  movl %eax, %ecx                        #  43    0xab9f1  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r13                  #  44    0xab9f3  5      OPC=movq_r64_m64   
  addl $0x18, %esp                       #  45    0xab9f8  3      OPC=addl_r32_imm8  
  addq %r15, %rsp                        #  46    0xab9fb  3      OPC=addq_r64_r64   
  xchgw %ax, %ax                         #  47    0xab9fe  2      OPC=xchgw_ax_r16   
  jmpq ._ZNKSs17find_first_not_ofEPKcjj  #  48    0xaba00  5      OPC=jmpq_label_1   
  nop                                    #  49    0xaba05  1      OPC=nop            
  nop                                    #  50    0xaba06  1      OPC=nop            
  nop                                    #  51    0xaba07  1      OPC=nop            
  nop                                    #  52    0xaba08  1      OPC=nop            
  nop                                    #  53    0xaba09  1      OPC=nop            
  nop                                    #  54    0xaba0a  1      OPC=nop            
  nop                                    #  55    0xaba0b  1      OPC=nop            
  nop                                    #  56    0xaba0c  1      OPC=nop            
  nop                                    #  57    0xaba0d  1      OPC=nop            
  nop                                    #  58    0xaba0e  1      OPC=nop            
  nop                                    #  59    0xaba0f  1      OPC=nop            
  nop                                    #  60    0xaba10  1      OPC=nop            
  nop                                    #  61    0xaba11  1      OPC=nop            
  nop                                    #  62    0xaba12  1      OPC=nop            
  nop                                    #  63    0xaba13  1      OPC=nop            
  nop                                    #  64    0xaba14  1      OPC=nop            
  nop                                    #  65    0xaba15  1      OPC=nop            
  nop                                    #  66    0xaba16  1      OPC=nop            
  nop                                    #  67    0xaba17  1      OPC=nop            
  nop                                    #  68    0xaba18  1      OPC=nop            
  nop                                    #  69    0xaba19  1      OPC=nop            
  nop                                    #  70    0xaba1a  1      OPC=nop            
  nop                                    #  71    0xaba1b  1      OPC=nop            
  nop                                    #  72    0xaba1c  1      OPC=nop            
  nop                                    #  73    0xaba1d  1      OPC=nop            
  nop                                    #  74    0xaba1e  1      OPC=nop            
  nop                                    #  75    0xaba1f  1      OPC=nop            
                                                                                     
.size _ZNKSs17find_first_not_ofEPKcj, .-_ZNKSs17find_first_not_ofEPKcj

