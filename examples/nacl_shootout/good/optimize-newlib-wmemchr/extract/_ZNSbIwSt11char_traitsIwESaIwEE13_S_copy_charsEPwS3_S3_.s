  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwS3_S3_
  .type _ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwS3_S3_, @function

#! file-offset 0x116ea0
#! rip-offset  0xd6ea0
#! capacity    64 bytes

# Text                                                     #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwS3_S3_:  #        0xd6ea0  0      OPC=<label>         
  movl %esi, %esi                                          #  1     0xd6ea0  2      OPC=movl_r32_r32    
  movl %edi, %edi                                          #  2     0xd6ea2  2      OPC=movl_r32_r32    
  subl %esi, %edx                                          #  3     0xd6ea4  2      OPC=subl_r32_r32    
  sarl $0x2, %edx                                          #  4     0xd6ea6  3      OPC=sarl_r32_imm8   
  cmpl $0x1, %edx                                          #  5     0xd6ea9  3      OPC=cmpl_r32_imm8   
  je .L_d6ec0                                              #  6     0xd6eac  2      OPC=je_label        
  jmpq .wmemcpy                                            #  7     0xd6eae  5      OPC=jmpq_label_1    
  nop                                                      #  8     0xd6eb3  1      OPC=nop             
  nop                                                      #  9     0xd6eb4  1      OPC=nop             
  nop                                                      #  10    0xd6eb5  1      OPC=nop             
  nop                                                      #  11    0xd6eb6  1      OPC=nop             
  nop                                                      #  12    0xd6eb7  1      OPC=nop             
  nop                                                      #  13    0xd6eb8  1      OPC=nop             
  nop                                                      #  14    0xd6eb9  1      OPC=nop             
  nop                                                      #  15    0xd6eba  1      OPC=nop             
  nop                                                      #  16    0xd6ebb  1      OPC=nop             
  nop                                                      #  17    0xd6ebc  1      OPC=nop             
  nop                                                      #  18    0xd6ebd  1      OPC=nop             
  nop                                                      #  19    0xd6ebe  1      OPC=nop             
  nop                                                      #  20    0xd6ebf  1      OPC=nop             
.L_d6ec0:                                                  #        0xd6ec0  0      OPC=<label>         
  popq %r11                                                #  21    0xd6ec0  2      OPC=popq_r64_1      
  movl %esi, %esi                                          #  22    0xd6ec2  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                                 #  23    0xd6ec4  4      OPC=movl_r32_m32    
  movl %edi, %edi                                          #  24    0xd6ec8  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)                                 #  25    0xd6eca  4      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d                                  #  26    0xd6ece  7      OPC=andl_r32_imm32  
  nop                                                      #  27    0xd6ed5  1      OPC=nop             
  nop                                                      #  28    0xd6ed6  1      OPC=nop             
  nop                                                      #  29    0xd6ed7  1      OPC=nop             
  nop                                                      #  30    0xd6ed8  1      OPC=nop             
  addq %r15, %r11                                          #  31    0xd6ed9  3      OPC=addq_r64_r64    
  jmpq %r11                                                #  32    0xd6edc  3      OPC=jmpq_r64        
  nop                                                      #  33    0xd6edf  1      OPC=nop             
  nop                                                      #  34    0xd6ee0  1      OPC=nop             
  nop                                                      #  35    0xd6ee1  1      OPC=nop             
  nop                                                      #  36    0xd6ee2  1      OPC=nop             
  nop                                                      #  37    0xd6ee3  1      OPC=nop             
  nop                                                      #  38    0xd6ee4  1      OPC=nop             
  nop                                                      #  39    0xd6ee5  1      OPC=nop             
  nop                                                      #  40    0xd6ee6  1      OPC=nop             
                                                                                                        
.size _ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwS3_S3_, .-_ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwS3_S3_

