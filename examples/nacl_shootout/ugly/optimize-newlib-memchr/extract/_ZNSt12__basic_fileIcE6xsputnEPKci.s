  .text
  .globl _ZNSt12__basic_fileIcE6xsputnEPKci
  .type _ZNSt12__basic_fileIcE6xsputnEPKci, @function

#! file-offset 0x11ed80
#! rip-offset  0xded80
#! capacity    96 bytes

# Text                                   #  Line  RIP      Bytes  Opcode             
._ZNSt12__basic_fileIcE6xsputnEPKci:     #        0xded80  0      OPC=<label>        
  movl %edi, %edi                        #  1     0xded80  2      OPC=movl_r32_r32   
  movq %rbx, -0x10(%rsp)                 #  2     0xded82  5      OPC=movq_m64_r64   
  movq %r12, -0x8(%rsp)                  #  3     0xded87  5      OPC=movq_m64_r64   
  subl $0x18, %esp                       #  4     0xded8c  3      OPC=subl_r32_imm8  
  addq %r15, %rsp                        #  5     0xded8f  3      OPC=addq_r64_r64   
  movl %edi, %edi                        #  6     0xded92  2      OPC=movl_r32_r32   
  movl (%r15,%rdi,1), %edi               #  7     0xded94  4      OPC=movl_r32_m32   
  movl %edx, %r12d                       #  8     0xded98  3      OPC=movl_r32_r32   
  movl %esi, %ebx                        #  9     0xded9b  2      OPC=movl_r32_r32   
  nop                                    #  10    0xded9d  1      OPC=nop            
  nop                                    #  11    0xded9e  1      OPC=nop            
  nop                                    #  12    0xded9f  1      OPC=nop            
  nop                                    #  13    0xdeda0  1      OPC=nop            
  nop                                    #  14    0xdeda1  1      OPC=nop            
  nop                                    #  15    0xdeda2  1      OPC=nop            
  nop                                    #  16    0xdeda3  1      OPC=nop            
  nop                                    #  17    0xdeda4  1      OPC=nop            
  nop                                    #  18    0xdeda5  1      OPC=nop            
  nop                                    #  19    0xdeda6  1      OPC=nop            
  nop                                    #  20    0xdeda7  1      OPC=nop            
  nop                                    #  21    0xdeda8  1      OPC=nop            
  nop                                    #  22    0xdeda9  1      OPC=nop            
  nop                                    #  23    0xdedaa  1      OPC=nop            
  nop                                    #  24    0xdedab  1      OPC=nop            
  nop                                    #  25    0xdedac  1      OPC=nop            
  nop                                    #  26    0xdedad  1      OPC=nop            
  nop                                    #  27    0xdedae  1      OPC=nop            
  nop                                    #  28    0xdedaf  1      OPC=nop            
  nop                                    #  29    0xdedb0  1      OPC=nop            
  nop                                    #  30    0xdedb1  1      OPC=nop            
  nop                                    #  31    0xdedb2  1      OPC=nop            
  nop                                    #  32    0xdedb3  1      OPC=nop            
  nop                                    #  33    0xdedb4  1      OPC=nop            
  nop                                    #  34    0xdedb5  1      OPC=nop            
  nop                                    #  35    0xdedb6  1      OPC=nop            
  nop                                    #  36    0xdedb7  1      OPC=nop            
  nop                                    #  37    0xdedb8  1      OPC=nop            
  nop                                    #  38    0xdedb9  1      OPC=nop            
  nop                                    #  39    0xdedba  1      OPC=nop            
  callq .fileno                          #  40    0xdedbb  5      OPC=callq_label    
  movl %r12d, %edx                       #  41    0xdedc0  3      OPC=movl_r32_r32   
  movl %ebx, %esi                        #  42    0xdedc3  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12                  #  43    0xdedc5  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx                   #  44    0xdedca  5      OPC=movq_r64_m64   
  movl %eax, %edi                        #  45    0xdedcf  2      OPC=movl_r32_r32   
  addl $0x18, %esp                       #  46    0xdedd1  3      OPC=addl_r32_imm8  
  addq %r15, %rsp                        #  47    0xdedd4  3      OPC=addq_r64_r64   
  jmpq ._ZN12_GLOBAL__N_1L6xwriteEiPKci  #  48    0xdedd7  5      OPC=jmpq_label_1   
  nop                                    #  49    0xdeddc  1      OPC=nop            
  nop                                    #  50    0xdeddd  1      OPC=nop            
  nop                                    #  51    0xdedde  1      OPC=nop            
  nop                                    #  52    0xdeddf  1      OPC=nop            
                                                                                     
.size _ZNSt12__basic_fileIcE6xsputnEPKci, .-_ZNSt12__basic_fileIcE6xsputnEPKci

