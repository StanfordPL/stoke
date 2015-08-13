  .text
  .globl _ZNSt15basic_streambufIcSt11char_traitsIcEE5sputcEc
  .type _ZNSt15basic_streambufIcSt11char_traitsIcEE5sputcEc, @function

#! file-offset 0xe9320
#! rip-offset  0xa9320
#! capacity    96 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIcSt11char_traitsIcEE5sputcEc:  #        0xa9320  0      OPC=<label>         
  movl %edi, %edi                                      #  1     0xa9320  2      OPC=movl_r32_r32    
  movl %edi, %edi                                      #  2     0xa9322  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rdi,1), %edx                         #  3     0xa9324  5      OPC=movl_r32_m32    
  movl %edi, %edi                                      #  4     0xa9329  2      OPC=movl_r32_r32    
  cmpl %edx, 0x18(%r15,%rdi,1)                         #  5     0xa932b  5      OPC=cmpl_m32_r32    
  jbe .L_a9360                                         #  6     0xa9330  2      OPC=jbe_label       
  movl %edx, %edx                                      #  7     0xa9332  2      OPC=movl_r32_r32    
  movb %sil, (%r15,%rdx,1)                             #  8     0xa9334  4      OPC=movb_m8_r8      
  movzbl %sil, %eax                                    #  9     0xa9338  4      OPC=movzbl_r32_r8   
  nop                                                  #  10    0xa933c  1      OPC=nop             
  nop                                                  #  11    0xa933d  1      OPC=nop             
  nop                                                  #  12    0xa933e  1      OPC=nop             
  nop                                                  #  13    0xa933f  1      OPC=nop             
  movl %edi, %edi                                      #  14    0xa9340  2      OPC=movl_r32_r32    
  addl $0x1, 0x14(%r15,%rdi,1)                         #  15    0xa9342  6      OPC=addl_m32_imm8   
  popq %r11                                            #  16    0xa9348  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                              #  17    0xa934a  7      OPC=andl_r32_imm32  
  nop                                                  #  18    0xa9351  1      OPC=nop             
  nop                                                  #  19    0xa9352  1      OPC=nop             
  nop                                                  #  20    0xa9353  1      OPC=nop             
  nop                                                  #  21    0xa9354  1      OPC=nop             
  addq %r15, %r11                                      #  22    0xa9355  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  23    0xa9358  3      OPC=jmpq_r64        
  nop                                                  #  24    0xa935b  1      OPC=nop             
  nop                                                  #  25    0xa935c  1      OPC=nop             
  nop                                                  #  26    0xa935d  1      OPC=nop             
  nop                                                  #  27    0xa935e  1      OPC=nop             
  nop                                                  #  28    0xa935f  1      OPC=nop             
  nop                                                  #  29    0xa9360  1      OPC=nop             
  nop                                                  #  30    0xa9361  1      OPC=nop             
  nop                                                  #  31    0xa9362  1      OPC=nop             
  nop                                                  #  32    0xa9363  1      OPC=nop             
  nop                                                  #  33    0xa9364  1      OPC=nop             
  nop                                                  #  34    0xa9365  1      OPC=nop             
  nop                                                  #  35    0xa9366  1      OPC=nop             
.L_a9360:                                              #        0xa9367  0      OPC=<label>         
  movl %edi, %edi                                      #  36    0xa9367  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %edx                             #  37    0xa9369  4      OPC=movl_r32_m32    
  movzbl %sil, %esi                                    #  38    0xa936d  4      OPC=movzbl_r32_r8   
  movl %edx, %edx                                      #  39    0xa9371  2      OPC=movl_r32_r32    
  movl 0x34(%r15,%rdx,1), %edx                         #  40    0xa9373  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %edx                               #  41    0xa9378  6      OPC=andl_r32_imm32  
  nop                                                  #  42    0xa937e  1      OPC=nop             
  nop                                                  #  43    0xa937f  1      OPC=nop             
  nop                                                  #  44    0xa9380  1      OPC=nop             
  addq %r15, %rdx                                      #  45    0xa9381  3      OPC=addq_r64_r64    
  jmpq %rdx                                            #  46    0xa9384  2      OPC=jmpq_r64        
  nop                                                  #  47    0xa9386  1      OPC=nop             
  nop                                                  #  48    0xa9387  1      OPC=nop             
  nop                                                  #  49    0xa9388  1      OPC=nop             
  nop                                                  #  50    0xa9389  1      OPC=nop             
  nop                                                  #  51    0xa938a  1      OPC=nop             
  nop                                                  #  52    0xa938b  1      OPC=nop             
  nop                                                  #  53    0xa938c  1      OPC=nop             
                                                                                                    
.size _ZNSt15basic_streambufIcSt11char_traitsIcEE5sputcEc, .-_ZNSt15basic_streambufIcSt11char_traitsIcEE5sputcEc

