  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE11_M_disjunctEPKw
  .type _ZNKSbIwSt11char_traitsIwESaIwEE11_M_disjunctEPKw, @function

#! file-offset 0x115240
#! rip-offset  0xd5240
#! capacity    96 bytes

# Text                                               #  Line  RIP      Bytes  Opcode              
._ZNKSbIwSt11char_traitsIwESaIwEE11_M_disjunctEPKw:  #        0xd5240  0      OPC=<label>         
  movl %edi, %edi                                    #  1     0xd5240  2      OPC=movl_r32_r32    
  movl %esi, %esi                                    #  2     0xd5242  2      OPC=movl_r32_r32    
  movl $0x1, %eax                                    #  3     0xd5244  5      OPC=movl_r32_imm32  
  movl %edi, %edi                                    #  4     0xd5249  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %edx                           #  5     0xd524b  4      OPC=movl_r32_m32    
  cmpl %esi, %edx                                    #  6     0xd524f  2      OPC=cmpl_r32_r32    
  ja .L_d5280                                        #  7     0xd5251  2      OPC=ja_label        
  leal -0xc(%rdx), %eax                              #  8     0xd5253  3      OPC=leal_r32_m16    
  movl %eax, %eax                                    #  9     0xd5256  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                           #  10    0xd5258  4      OPC=movl_r32_m32    
  leal (%rdx,%rax,4), %edx                           #  11    0xd525c  3      OPC=leal_r32_m16    
  nop                                                #  12    0xd525f  1      OPC=nop             
  cmpl %esi, %edx                                    #  13    0xd5260  2      OPC=cmpl_r32_r32    
  setb %al                                           #  14    0xd5262  3      OPC=setb_r8         
  nop                                                #  15    0xd5265  1      OPC=nop             
  nop                                                #  16    0xd5266  1      OPC=nop             
  nop                                                #  17    0xd5267  1      OPC=nop             
  nop                                                #  18    0xd5268  1      OPC=nop             
  nop                                                #  19    0xd5269  1      OPC=nop             
  nop                                                #  20    0xd526a  1      OPC=nop             
  nop                                                #  21    0xd526b  1      OPC=nop             
  nop                                                #  22    0xd526c  1      OPC=nop             
  nop                                                #  23    0xd526d  1      OPC=nop             
  nop                                                #  24    0xd526e  1      OPC=nop             
  nop                                                #  25    0xd526f  1      OPC=nop             
  nop                                                #  26    0xd5270  1      OPC=nop             
  nop                                                #  27    0xd5271  1      OPC=nop             
  nop                                                #  28    0xd5272  1      OPC=nop             
  nop                                                #  29    0xd5273  1      OPC=nop             
  nop                                                #  30    0xd5274  1      OPC=nop             
  nop                                                #  31    0xd5275  1      OPC=nop             
  nop                                                #  32    0xd5276  1      OPC=nop             
  nop                                                #  33    0xd5277  1      OPC=nop             
  nop                                                #  34    0xd5278  1      OPC=nop             
  nop                                                #  35    0xd5279  1      OPC=nop             
  nop                                                #  36    0xd527a  1      OPC=nop             
  nop                                                #  37    0xd527b  1      OPC=nop             
  nop                                                #  38    0xd527c  1      OPC=nop             
  nop                                                #  39    0xd527d  1      OPC=nop             
  nop                                                #  40    0xd527e  1      OPC=nop             
  nop                                                #  41    0xd527f  1      OPC=nop             
.L_d5280:                                            #        0xd5280  0      OPC=<label>         
  popq %r11                                          #  42    0xd5280  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                            #  43    0xd5282  7      OPC=andl_r32_imm32  
  nop                                                #  44    0xd5289  1      OPC=nop             
  nop                                                #  45    0xd528a  1      OPC=nop             
  nop                                                #  46    0xd528b  1      OPC=nop             
  nop                                                #  47    0xd528c  1      OPC=nop             
  addq %r15, %r11                                    #  48    0xd528d  3      OPC=addq_r64_r64    
  jmpq %r11                                          #  49    0xd5290  3      OPC=jmpq_r64        
  nop                                                #  50    0xd5293  1      OPC=nop             
  nop                                                #  51    0xd5294  1      OPC=nop             
  nop                                                #  52    0xd5295  1      OPC=nop             
  nop                                                #  53    0xd5296  1      OPC=nop             
  nop                                                #  54    0xd5297  1      OPC=nop             
  nop                                                #  55    0xd5298  1      OPC=nop             
  nop                                                #  56    0xd5299  1      OPC=nop             
  nop                                                #  57    0xd529a  1      OPC=nop             
  nop                                                #  58    0xd529b  1      OPC=nop             
  nop                                                #  59    0xd529c  1      OPC=nop             
  nop                                                #  60    0xd529d  1      OPC=nop             
  nop                                                #  61    0xd529e  1      OPC=nop             
  nop                                                #  62    0xd529f  1      OPC=nop             
  nop                                                #  63    0xd52a0  1      OPC=nop             
  nop                                                #  64    0xd52a1  1      OPC=nop             
  nop                                                #  65    0xd52a2  1      OPC=nop             
  nop                                                #  66    0xd52a3  1      OPC=nop             
  nop                                                #  67    0xd52a4  1      OPC=nop             
  nop                                                #  68    0xd52a5  1      OPC=nop             
  nop                                                #  69    0xd52a6  1      OPC=nop             
                                                                                                  
.size _ZNKSbIwSt11char_traitsIwESaIwEE11_M_disjunctEPKw, .-_ZNKSbIwSt11char_traitsIwESaIwEE11_M_disjunctEPKw

