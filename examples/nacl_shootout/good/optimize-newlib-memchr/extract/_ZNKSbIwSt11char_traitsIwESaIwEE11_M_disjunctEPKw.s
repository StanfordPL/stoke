  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE11_M_disjunctEPKw
  .type _ZNKSbIwSt11char_traitsIwESaIwEE11_M_disjunctEPKw, @function

#! file-offset 0x115c60
#! rip-offset  0xd5c60
#! capacity    96 bytes

# Text                                               #  Line  RIP      Bytes  Opcode              
._ZNKSbIwSt11char_traitsIwESaIwEE11_M_disjunctEPKw:  #        0xd5c60  0      OPC=<label>         
  movl %edi, %edi                                    #  1     0xd5c60  2      OPC=movl_r32_r32    
  movl %esi, %esi                                    #  2     0xd5c62  2      OPC=movl_r32_r32    
  movl $0x1, %eax                                    #  3     0xd5c64  5      OPC=movl_r32_imm32  
  movl %edi, %edi                                    #  4     0xd5c69  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %edx                           #  5     0xd5c6b  4      OPC=movl_r32_m32    
  cmpl %esi, %edx                                    #  6     0xd5c6f  2      OPC=cmpl_r32_r32    
  ja .L_d5ca0                                        #  7     0xd5c71  2      OPC=ja_label        
  leal -0xc(%rdx), %eax                              #  8     0xd5c73  3      OPC=leal_r32_m16    
  movl %eax, %eax                                    #  9     0xd5c76  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                           #  10    0xd5c78  4      OPC=movl_r32_m32    
  leal (%rdx,%rax,4), %edx                           #  11    0xd5c7c  3      OPC=leal_r32_m16    
  nop                                                #  12    0xd5c7f  1      OPC=nop             
  cmpl %esi, %edx                                    #  13    0xd5c80  2      OPC=cmpl_r32_r32    
  setb %al                                           #  14    0xd5c82  3      OPC=setb_r8         
  nop                                                #  15    0xd5c85  1      OPC=nop             
  nop                                                #  16    0xd5c86  1      OPC=nop             
  nop                                                #  17    0xd5c87  1      OPC=nop             
  nop                                                #  18    0xd5c88  1      OPC=nop             
  nop                                                #  19    0xd5c89  1      OPC=nop             
  nop                                                #  20    0xd5c8a  1      OPC=nop             
  nop                                                #  21    0xd5c8b  1      OPC=nop             
  nop                                                #  22    0xd5c8c  1      OPC=nop             
  nop                                                #  23    0xd5c8d  1      OPC=nop             
  nop                                                #  24    0xd5c8e  1      OPC=nop             
  nop                                                #  25    0xd5c8f  1      OPC=nop             
  nop                                                #  26    0xd5c90  1      OPC=nop             
  nop                                                #  27    0xd5c91  1      OPC=nop             
  nop                                                #  28    0xd5c92  1      OPC=nop             
  nop                                                #  29    0xd5c93  1      OPC=nop             
  nop                                                #  30    0xd5c94  1      OPC=nop             
  nop                                                #  31    0xd5c95  1      OPC=nop             
  nop                                                #  32    0xd5c96  1      OPC=nop             
  nop                                                #  33    0xd5c97  1      OPC=nop             
  nop                                                #  34    0xd5c98  1      OPC=nop             
  nop                                                #  35    0xd5c99  1      OPC=nop             
  nop                                                #  36    0xd5c9a  1      OPC=nop             
  nop                                                #  37    0xd5c9b  1      OPC=nop             
  nop                                                #  38    0xd5c9c  1      OPC=nop             
  nop                                                #  39    0xd5c9d  1      OPC=nop             
  nop                                                #  40    0xd5c9e  1      OPC=nop             
  nop                                                #  41    0xd5c9f  1      OPC=nop             
.L_d5ca0:                                            #        0xd5ca0  0      OPC=<label>         
  popq %r11                                          #  42    0xd5ca0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                            #  43    0xd5ca2  7      OPC=andl_r32_imm32  
  nop                                                #  44    0xd5ca9  1      OPC=nop             
  nop                                                #  45    0xd5caa  1      OPC=nop             
  nop                                                #  46    0xd5cab  1      OPC=nop             
  nop                                                #  47    0xd5cac  1      OPC=nop             
  addq %r15, %r11                                    #  48    0xd5cad  3      OPC=addq_r64_r64    
  jmpq %r11                                          #  49    0xd5cb0  3      OPC=jmpq_r64        
  nop                                                #  50    0xd5cb3  1      OPC=nop             
  nop                                                #  51    0xd5cb4  1      OPC=nop             
  nop                                                #  52    0xd5cb5  1      OPC=nop             
  nop                                                #  53    0xd5cb6  1      OPC=nop             
  nop                                                #  54    0xd5cb7  1      OPC=nop             
  nop                                                #  55    0xd5cb8  1      OPC=nop             
  nop                                                #  56    0xd5cb9  1      OPC=nop             
  nop                                                #  57    0xd5cba  1      OPC=nop             
  nop                                                #  58    0xd5cbb  1      OPC=nop             
  nop                                                #  59    0xd5cbc  1      OPC=nop             
  nop                                                #  60    0xd5cbd  1      OPC=nop             
  nop                                                #  61    0xd5cbe  1      OPC=nop             
  nop                                                #  62    0xd5cbf  1      OPC=nop             
  nop                                                #  63    0xd5cc0  1      OPC=nop             
  nop                                                #  64    0xd5cc1  1      OPC=nop             
  nop                                                #  65    0xd5cc2  1      OPC=nop             
  nop                                                #  66    0xd5cc3  1      OPC=nop             
  nop                                                #  67    0xd5cc4  1      OPC=nop             
  nop                                                #  68    0xd5cc5  1      OPC=nop             
  nop                                                #  69    0xd5cc6  1      OPC=nop             
                                                                                                  
.size _ZNKSbIwSt11char_traitsIwESaIwEE11_M_disjunctEPKw, .-_ZNKSbIwSt11char_traitsIwESaIwEE11_M_disjunctEPKw

