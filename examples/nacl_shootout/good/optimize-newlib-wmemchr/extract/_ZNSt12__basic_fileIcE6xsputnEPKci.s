  .text
  .globl _ZNSt12__basic_fileIcE6xsputnEPKci
  .type _ZNSt12__basic_fileIcE6xsputnEPKci, @function

#! file-offset 0x11e660
#! rip-offset  0xde660
#! capacity    96 bytes

# Text                                   #  Line  RIP      Bytes  Opcode             
._ZNSt12__basic_fileIcE6xsputnEPKci:     #        0xde660  0      OPC=<label>        
  movl %edi, %edi                        #  1     0xde660  2      OPC=movl_r32_r32   
  movq %rbx, -0x10(%rsp)                 #  2     0xde662  5      OPC=movq_m64_r64   
  movq %r12, -0x8(%rsp)                  #  3     0xde667  5      OPC=movq_m64_r64   
  subl $0x18, %esp                       #  4     0xde66c  3      OPC=subl_r32_imm8  
  addq %r15, %rsp                        #  5     0xde66f  3      OPC=addq_r64_r64   
  movl %edi, %edi                        #  6     0xde672  2      OPC=movl_r32_r32   
  movl (%r15,%rdi,1), %edi               #  7     0xde674  4      OPC=movl_r32_m32   
  movl %edx, %r12d                       #  8     0xde678  3      OPC=movl_r32_r32   
  movl %esi, %ebx                        #  9     0xde67b  2      OPC=movl_r32_r32   
  nop                                    #  10    0xde67d  1      OPC=nop            
  nop                                    #  11    0xde67e  1      OPC=nop            
  nop                                    #  12    0xde67f  1      OPC=nop            
  nop                                    #  13    0xde680  1      OPC=nop            
  nop                                    #  14    0xde681  1      OPC=nop            
  nop                                    #  15    0xde682  1      OPC=nop            
  nop                                    #  16    0xde683  1      OPC=nop            
  nop                                    #  17    0xde684  1      OPC=nop            
  nop                                    #  18    0xde685  1      OPC=nop            
  nop                                    #  19    0xde686  1      OPC=nop            
  nop                                    #  20    0xde687  1      OPC=nop            
  nop                                    #  21    0xde688  1      OPC=nop            
  nop                                    #  22    0xde689  1      OPC=nop            
  nop                                    #  23    0xde68a  1      OPC=nop            
  nop                                    #  24    0xde68b  1      OPC=nop            
  nop                                    #  25    0xde68c  1      OPC=nop            
  nop                                    #  26    0xde68d  1      OPC=nop            
  nop                                    #  27    0xde68e  1      OPC=nop            
  nop                                    #  28    0xde68f  1      OPC=nop            
  nop                                    #  29    0xde690  1      OPC=nop            
  nop                                    #  30    0xde691  1      OPC=nop            
  nop                                    #  31    0xde692  1      OPC=nop            
  nop                                    #  32    0xde693  1      OPC=nop            
  nop                                    #  33    0xde694  1      OPC=nop            
  nop                                    #  34    0xde695  1      OPC=nop            
  nop                                    #  35    0xde696  1      OPC=nop            
  nop                                    #  36    0xde697  1      OPC=nop            
  nop                                    #  37    0xde698  1      OPC=nop            
  nop                                    #  38    0xde699  1      OPC=nop            
  nop                                    #  39    0xde69a  1      OPC=nop            
  callq .fileno                          #  40    0xde69b  5      OPC=callq_label    
  movl %r12d, %edx                       #  41    0xde6a0  3      OPC=movl_r32_r32   
  movl %ebx, %esi                        #  42    0xde6a3  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12                  #  43    0xde6a5  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx                   #  44    0xde6aa  5      OPC=movq_r64_m64   
  movl %eax, %edi                        #  45    0xde6af  2      OPC=movl_r32_r32   
  addl $0x18, %esp                       #  46    0xde6b1  3      OPC=addl_r32_imm8  
  addq %r15, %rsp                        #  47    0xde6b4  3      OPC=addq_r64_r64   
  jmpq ._ZN12_GLOBAL__N_1L6xwriteEiPKci  #  48    0xde6b7  5      OPC=jmpq_label_1   
  nop                                    #  49    0xde6bc  1      OPC=nop            
  nop                                    #  50    0xde6bd  1      OPC=nop            
  nop                                    #  51    0xde6be  1      OPC=nop            
  nop                                    #  52    0xde6bf  1      OPC=nop            
                                                                                     
.size _ZNSt12__basic_fileIcE6xsputnEPKci, .-_ZNSt12__basic_fileIcE6xsputnEPKci

