  .text
  .globl _ZNSt12__basic_fileIcE6xsputnEPKci
  .type _ZNSt12__basic_fileIcE6xsputnEPKci, @function

#! file-offset 0x11e360
#! rip-offset  0xde360
#! capacity    96 bytes

# Text                                   #  Line  RIP      Bytes  Opcode             
._ZNSt12__basic_fileIcE6xsputnEPKci:     #        0xde360  0      OPC=<label>        
  movl %edi, %edi                        #  1     0xde360  2      OPC=movl_r32_r32   
  movq %rbx, -0x10(%rsp)                 #  2     0xde362  5      OPC=movq_m64_r64   
  movq %r12, -0x8(%rsp)                  #  3     0xde367  5      OPC=movq_m64_r64   
  subl $0x18, %esp                       #  4     0xde36c  3      OPC=subl_r32_imm8  
  addq %r15, %rsp                        #  5     0xde36f  3      OPC=addq_r64_r64   
  movl %edi, %edi                        #  6     0xde372  2      OPC=movl_r32_r32   
  movl (%r15,%rdi,1), %edi               #  7     0xde374  4      OPC=movl_r32_m32   
  movl %edx, %r12d                       #  8     0xde378  3      OPC=movl_r32_r32   
  movl %esi, %ebx                        #  9     0xde37b  2      OPC=movl_r32_r32   
  nop                                    #  10    0xde37d  1      OPC=nop            
  nop                                    #  11    0xde37e  1      OPC=nop            
  nop                                    #  12    0xde37f  1      OPC=nop            
  nop                                    #  13    0xde380  1      OPC=nop            
  nop                                    #  14    0xde381  1      OPC=nop            
  nop                                    #  15    0xde382  1      OPC=nop            
  nop                                    #  16    0xde383  1      OPC=nop            
  nop                                    #  17    0xde384  1      OPC=nop            
  nop                                    #  18    0xde385  1      OPC=nop            
  nop                                    #  19    0xde386  1      OPC=nop            
  nop                                    #  20    0xde387  1      OPC=nop            
  nop                                    #  21    0xde388  1      OPC=nop            
  nop                                    #  22    0xde389  1      OPC=nop            
  nop                                    #  23    0xde38a  1      OPC=nop            
  nop                                    #  24    0xde38b  1      OPC=nop            
  nop                                    #  25    0xde38c  1      OPC=nop            
  nop                                    #  26    0xde38d  1      OPC=nop            
  nop                                    #  27    0xde38e  1      OPC=nop            
  nop                                    #  28    0xde38f  1      OPC=nop            
  nop                                    #  29    0xde390  1      OPC=nop            
  nop                                    #  30    0xde391  1      OPC=nop            
  nop                                    #  31    0xde392  1      OPC=nop            
  nop                                    #  32    0xde393  1      OPC=nop            
  nop                                    #  33    0xde394  1      OPC=nop            
  nop                                    #  34    0xde395  1      OPC=nop            
  nop                                    #  35    0xde396  1      OPC=nop            
  nop                                    #  36    0xde397  1      OPC=nop            
  nop                                    #  37    0xde398  1      OPC=nop            
  nop                                    #  38    0xde399  1      OPC=nop            
  nop                                    #  39    0xde39a  1      OPC=nop            
  callq .fileno                          #  40    0xde39b  5      OPC=callq_label    
  movl %r12d, %edx                       #  41    0xde3a0  3      OPC=movl_r32_r32   
  movl %ebx, %esi                        #  42    0xde3a3  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12                  #  43    0xde3a5  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx                   #  44    0xde3aa  5      OPC=movq_r64_m64   
  movl %eax, %edi                        #  45    0xde3af  2      OPC=movl_r32_r32   
  addl $0x18, %esp                       #  46    0xde3b1  3      OPC=addl_r32_imm8  
  addq %r15, %rsp                        #  47    0xde3b4  3      OPC=addq_r64_r64   
  jmpq ._ZN12_GLOBAL__N_1L6xwriteEiPKci  #  48    0xde3b7  5      OPC=jmpq_label_1   
  nop                                    #  49    0xde3bc  1      OPC=nop            
  nop                                    #  50    0xde3bd  1      OPC=nop            
  nop                                    #  51    0xde3be  1      OPC=nop            
  nop                                    #  52    0xde3bf  1      OPC=nop            
                                                                                     
.size _ZNSt12__basic_fileIcE6xsputnEPKci, .-_ZNSt12__basic_fileIcE6xsputnEPKci

