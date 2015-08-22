  .text
  .globl _ZNKSs17find_first_not_ofEPKcj
  .type _ZNKSs17find_first_not_ofEPKcj, @function

#! file-offset 0xec3c0
#! rip-offset  0xac3c0
#! capacity    128 bytes

# Text                                   #  Line  RIP      Bytes  Opcode             
._ZNKSs17find_first_not_ofEPKcj:         #        0xac3c0  0      OPC=<label>        
  movq %r12, -0x10(%rsp)                 #  1     0xac3c0  5      OPC=movq_m64_r64   
  movl %esi, %r12d                       #  2     0xac3c5  3      OPC=movl_r32_r32   
  movq %rbx, -0x18(%rsp)                 #  3     0xac3c8  5      OPC=movq_m64_r64   
  movq %r13, -0x8(%rsp)                  #  4     0xac3cd  5      OPC=movq_m64_r64   
  movl %edi, %ebx                        #  5     0xac3d2  2      OPC=movl_r32_r32   
  subl $0x18, %esp                       #  6     0xac3d4  3      OPC=subl_r32_imm8  
  addq %r15, %rsp                        #  7     0xac3d7  3      OPC=addq_r64_r64   
  movl %edx, %r13d                       #  8     0xac3da  3      OPC=movl_r32_r32   
  movl %r12d, %edi                       #  9     0xac3dd  3      OPC=movl_r32_r32   
  nop                                    #  10    0xac3e0  1      OPC=nop            
  nop                                    #  11    0xac3e1  1      OPC=nop            
  nop                                    #  12    0xac3e2  1      OPC=nop            
  nop                                    #  13    0xac3e3  1      OPC=nop            
  nop                                    #  14    0xac3e4  1      OPC=nop            
  nop                                    #  15    0xac3e5  1      OPC=nop            
  nop                                    #  16    0xac3e6  1      OPC=nop            
  nop                                    #  17    0xac3e7  1      OPC=nop            
  nop                                    #  18    0xac3e8  1      OPC=nop            
  nop                                    #  19    0xac3e9  1      OPC=nop            
  nop                                    #  20    0xac3ea  1      OPC=nop            
  nop                                    #  21    0xac3eb  1      OPC=nop            
  nop                                    #  22    0xac3ec  1      OPC=nop            
  nop                                    #  23    0xac3ed  1      OPC=nop            
  nop                                    #  24    0xac3ee  1      OPC=nop            
  nop                                    #  25    0xac3ef  1      OPC=nop            
  nop                                    #  26    0xac3f0  1      OPC=nop            
  nop                                    #  27    0xac3f1  1      OPC=nop            
  nop                                    #  28    0xac3f2  1      OPC=nop            
  nop                                    #  29    0xac3f3  1      OPC=nop            
  nop                                    #  30    0xac3f4  1      OPC=nop            
  nop                                    #  31    0xac3f5  1      OPC=nop            
  nop                                    #  32    0xac3f6  1      OPC=nop            
  nop                                    #  33    0xac3f7  1      OPC=nop            
  nop                                    #  34    0xac3f8  1      OPC=nop            
  nop                                    #  35    0xac3f9  1      OPC=nop            
  nop                                    #  36    0xac3fa  1      OPC=nop            
  callq .strlen                          #  37    0xac3fb  5      OPC=callq_label    
  movl %r13d, %edx                       #  38    0xac400  3      OPC=movl_r32_r32   
  movl %r12d, %esi                       #  39    0xac403  3      OPC=movl_r32_r32   
  movl %ebx, %edi                        #  40    0xac406  2      OPC=movl_r32_r32   
  movq 0x8(%rsp), %r12                   #  41    0xac408  5      OPC=movq_r64_m64   
  movq (%rsp), %rbx                      #  42    0xac40d  4      OPC=movq_r64_m64   
  movl %eax, %ecx                        #  43    0xac411  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r13                  #  44    0xac413  5      OPC=movq_r64_m64   
  addl $0x18, %esp                       #  45    0xac418  3      OPC=addl_r32_imm8  
  addq %r15, %rsp                        #  46    0xac41b  3      OPC=addq_r64_r64   
  xchgw %ax, %ax                         #  47    0xac41e  2      OPC=xchgw_ax_r16   
  jmpq ._ZNKSs17find_first_not_ofEPKcjj  #  48    0xac420  5      OPC=jmpq_label_1   
  nop                                    #  49    0xac425  1      OPC=nop            
  nop                                    #  50    0xac426  1      OPC=nop            
  nop                                    #  51    0xac427  1      OPC=nop            
  nop                                    #  52    0xac428  1      OPC=nop            
  nop                                    #  53    0xac429  1      OPC=nop            
  nop                                    #  54    0xac42a  1      OPC=nop            
  nop                                    #  55    0xac42b  1      OPC=nop            
  nop                                    #  56    0xac42c  1      OPC=nop            
  nop                                    #  57    0xac42d  1      OPC=nop            
  nop                                    #  58    0xac42e  1      OPC=nop            
  nop                                    #  59    0xac42f  1      OPC=nop            
  nop                                    #  60    0xac430  1      OPC=nop            
  nop                                    #  61    0xac431  1      OPC=nop            
  nop                                    #  62    0xac432  1      OPC=nop            
  nop                                    #  63    0xac433  1      OPC=nop            
  nop                                    #  64    0xac434  1      OPC=nop            
  nop                                    #  65    0xac435  1      OPC=nop            
  nop                                    #  66    0xac436  1      OPC=nop            
  nop                                    #  67    0xac437  1      OPC=nop            
  nop                                    #  68    0xac438  1      OPC=nop            
  nop                                    #  69    0xac439  1      OPC=nop            
  nop                                    #  70    0xac43a  1      OPC=nop            
  nop                                    #  71    0xac43b  1      OPC=nop            
  nop                                    #  72    0xac43c  1      OPC=nop            
  nop                                    #  73    0xac43d  1      OPC=nop            
  nop                                    #  74    0xac43e  1      OPC=nop            
  nop                                    #  75    0xac43f  1      OPC=nop            
                                                                                     
.size _ZNKSs17find_first_not_ofEPKcj, .-_ZNKSs17find_first_not_ofEPKcj

