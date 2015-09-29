  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwS3_S3_
  .type _ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwS3_S3_, @function

#! file-offset 0x1175c0
#! rip-offset  0xd75c0
#! capacity    64 bytes

# Text                                                     #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwS3_S3_:  #        0xd75c0  0      OPC=<label>         
  movl %esi, %esi                                          #  1     0xd75c0  2      OPC=movl_r32_r32    
  movl %edi, %edi                                          #  2     0xd75c2  2      OPC=movl_r32_r32    
  subl %esi, %edx                                          #  3     0xd75c4  2      OPC=subl_r32_r32    
  sarl $0x2, %edx                                          #  4     0xd75c6  3      OPC=sarl_r32_imm8   
  cmpl $0x1, %edx                                          #  5     0xd75c9  3      OPC=cmpl_r32_imm8   
  je .L_d75e0                                              #  6     0xd75cc  2      OPC=je_label        
  jmpq .wmemcpy                                            #  7     0xd75ce  5      OPC=jmpq_label_1    
  nop                                                      #  8     0xd75d3  1      OPC=nop             
  nop                                                      #  9     0xd75d4  1      OPC=nop             
  nop                                                      #  10    0xd75d5  1      OPC=nop             
  nop                                                      #  11    0xd75d6  1      OPC=nop             
  nop                                                      #  12    0xd75d7  1      OPC=nop             
  nop                                                      #  13    0xd75d8  1      OPC=nop             
  nop                                                      #  14    0xd75d9  1      OPC=nop             
  nop                                                      #  15    0xd75da  1      OPC=nop             
  nop                                                      #  16    0xd75db  1      OPC=nop             
  nop                                                      #  17    0xd75dc  1      OPC=nop             
  nop                                                      #  18    0xd75dd  1      OPC=nop             
  nop                                                      #  19    0xd75de  1      OPC=nop             
  nop                                                      #  20    0xd75df  1      OPC=nop             
.L_d75e0:                                                  #        0xd75e0  0      OPC=<label>         
  popq %r11                                                #  21    0xd75e0  2      OPC=popq_r64_1      
  movl %esi, %esi                                          #  22    0xd75e2  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                                 #  23    0xd75e4  4      OPC=movl_r32_m32    
  movl %edi, %edi                                          #  24    0xd75e8  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)                                 #  25    0xd75ea  4      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d                                  #  26    0xd75ee  7      OPC=andl_r32_imm32  
  nop                                                      #  27    0xd75f5  1      OPC=nop             
  nop                                                      #  28    0xd75f6  1      OPC=nop             
  nop                                                      #  29    0xd75f7  1      OPC=nop             
  nop                                                      #  30    0xd75f8  1      OPC=nop             
  addq %r15, %r11                                          #  31    0xd75f9  3      OPC=addq_r64_r64    
  jmpq %r11                                                #  32    0xd75fc  3      OPC=jmpq_r64        
  nop                                                      #  33    0xd75ff  1      OPC=nop             
  nop                                                      #  34    0xd7600  1      OPC=nop             
  nop                                                      #  35    0xd7601  1      OPC=nop             
  nop                                                      #  36    0xd7602  1      OPC=nop             
  nop                                                      #  37    0xd7603  1      OPC=nop             
  nop                                                      #  38    0xd7604  1      OPC=nop             
  nop                                                      #  39    0xd7605  1      OPC=nop             
  nop                                                      #  40    0xd7606  1      OPC=nop             
                                                                                                        
.size _ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwS3_S3_, .-_ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwS3_S3_

