  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwS3_S3_
  .type _ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwS3_S3_, @function

#! file-offset 0x116ba0
#! rip-offset  0xd6ba0
#! capacity    64 bytes

# Text                                                     #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwS3_S3_:  #        0xd6ba0  0      OPC=<label>         
  movl %esi, %esi                                          #  1     0xd6ba0  2      OPC=movl_r32_r32    
  movl %edi, %edi                                          #  2     0xd6ba2  2      OPC=movl_r32_r32    
  subl %esi, %edx                                          #  3     0xd6ba4  2      OPC=subl_r32_r32    
  sarl $0x2, %edx                                          #  4     0xd6ba6  3      OPC=sarl_r32_imm8   
  cmpl $0x1, %edx                                          #  5     0xd6ba9  3      OPC=cmpl_r32_imm8   
  je .L_d6bc0                                              #  6     0xd6bac  2      OPC=je_label        
  jmpq .wmemcpy                                            #  7     0xd6bae  5      OPC=jmpq_label_1    
  nop                                                      #  8     0xd6bb3  1      OPC=nop             
  nop                                                      #  9     0xd6bb4  1      OPC=nop             
  nop                                                      #  10    0xd6bb5  1      OPC=nop             
  nop                                                      #  11    0xd6bb6  1      OPC=nop             
  nop                                                      #  12    0xd6bb7  1      OPC=nop             
  nop                                                      #  13    0xd6bb8  1      OPC=nop             
  nop                                                      #  14    0xd6bb9  1      OPC=nop             
  nop                                                      #  15    0xd6bba  1      OPC=nop             
  nop                                                      #  16    0xd6bbb  1      OPC=nop             
  nop                                                      #  17    0xd6bbc  1      OPC=nop             
  nop                                                      #  18    0xd6bbd  1      OPC=nop             
  nop                                                      #  19    0xd6bbe  1      OPC=nop             
  nop                                                      #  20    0xd6bbf  1      OPC=nop             
.L_d6bc0:                                                  #        0xd6bc0  0      OPC=<label>         
  popq %r11                                                #  21    0xd6bc0  2      OPC=popq_r64_1      
  movl %esi, %esi                                          #  22    0xd6bc2  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                                 #  23    0xd6bc4  4      OPC=movl_r32_m32    
  movl %edi, %edi                                          #  24    0xd6bc8  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)                                 #  25    0xd6bca  4      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d                                  #  26    0xd6bce  7      OPC=andl_r32_imm32  
  nop                                                      #  27    0xd6bd5  1      OPC=nop             
  nop                                                      #  28    0xd6bd6  1      OPC=nop             
  nop                                                      #  29    0xd6bd7  1      OPC=nop             
  nop                                                      #  30    0xd6bd8  1      OPC=nop             
  addq %r15, %r11                                          #  31    0xd6bd9  3      OPC=addq_r64_r64    
  jmpq %r11                                                #  32    0xd6bdc  3      OPC=jmpq_r64        
  nop                                                      #  33    0xd6bdf  1      OPC=nop             
  nop                                                      #  34    0xd6be0  1      OPC=nop             
  nop                                                      #  35    0xd6be1  1      OPC=nop             
  nop                                                      #  36    0xd6be2  1      OPC=nop             
  nop                                                      #  37    0xd6be3  1      OPC=nop             
  nop                                                      #  38    0xd6be4  1      OPC=nop             
  nop                                                      #  39    0xd6be5  1      OPC=nop             
  nop                                                      #  40    0xd6be6  1      OPC=nop             
                                                                                                        
.size _ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwS3_S3_, .-_ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwS3_S3_

