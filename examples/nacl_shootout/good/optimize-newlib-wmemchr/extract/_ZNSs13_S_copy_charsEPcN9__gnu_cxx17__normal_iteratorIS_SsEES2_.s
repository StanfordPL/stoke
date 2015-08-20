  .text
  .globl _ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIS_SsEES2_
  .type _ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIS_SsEES2_, @function

#! file-offset 0xec0e0
#! rip-offset  0xac0e0
#! capacity    64 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIS_SsEES2_:  #        0xac0e0  0      OPC=<label>         
  movl %esi, %esi                                                  #  1     0xac0e0  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                  #  2     0xac0e2  2      OPC=movl_r32_r32    
  subl %esi, %edx                                                  #  3     0xac0e4  2      OPC=subl_r32_r32    
  cmpl $0x1, %edx                                                  #  4     0xac0e6  3      OPC=cmpl_r32_imm8   
  je .L_ac100                                                      #  5     0xac0e9  2      OPC=je_label        
  jmpq .memcpy                                                     #  6     0xac0eb  5      OPC=jmpq_label_1    
  nop                                                              #  7     0xac0f0  1      OPC=nop             
  nop                                                              #  8     0xac0f1  1      OPC=nop             
  nop                                                              #  9     0xac0f2  1      OPC=nop             
  nop                                                              #  10    0xac0f3  1      OPC=nop             
  nop                                                              #  11    0xac0f4  1      OPC=nop             
  nop                                                              #  12    0xac0f5  1      OPC=nop             
  nop                                                              #  13    0xac0f6  1      OPC=nop             
  nop                                                              #  14    0xac0f7  1      OPC=nop             
  nop                                                              #  15    0xac0f8  1      OPC=nop             
  nop                                                              #  16    0xac0f9  1      OPC=nop             
  nop                                                              #  17    0xac0fa  1      OPC=nop             
  nop                                                              #  18    0xac0fb  1      OPC=nop             
  nop                                                              #  19    0xac0fc  1      OPC=nop             
  nop                                                              #  20    0xac0fd  1      OPC=nop             
  nop                                                              #  21    0xac0fe  1      OPC=nop             
  nop                                                              #  22    0xac0ff  1      OPC=nop             
.L_ac100:                                                          #        0xac100  0      OPC=<label>         
  movl %esi, %esi                                                  #  23    0xac100  2      OPC=movl_r32_r32    
  movzbl (%r15,%rsi,1), %eax                                       #  24    0xac102  5      OPC=movzbl_r32_m8   
  popq %r11                                                        #  25    0xac107  2      OPC=popq_r64_1      
  movl %edi, %edi                                                  #  26    0xac109  2      OPC=movl_r32_r32    
  movb %al, (%r15,%rdi,1)                                          #  27    0xac10b  4      OPC=movb_m8_r8      
  andl $0xffffffe0, %r11d                                          #  28    0xac10f  7      OPC=andl_r32_imm32  
  nop                                                              #  29    0xac116  1      OPC=nop             
  nop                                                              #  30    0xac117  1      OPC=nop             
  nop                                                              #  31    0xac118  1      OPC=nop             
  nop                                                              #  32    0xac119  1      OPC=nop             
  addq %r15, %r11                                                  #  33    0xac11a  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  34    0xac11d  3      OPC=jmpq_r64        
  nop                                                              #  35    0xac120  1      OPC=nop             
  nop                                                              #  36    0xac121  1      OPC=nop             
  nop                                                              #  37    0xac122  1      OPC=nop             
  nop                                                              #  38    0xac123  1      OPC=nop             
  nop                                                              #  39    0xac124  1      OPC=nop             
  nop                                                              #  40    0xac125  1      OPC=nop             
  nop                                                              #  41    0xac126  1      OPC=nop             
                                                                                                                
.size _ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIS_SsEES2_, .-_ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIS_SsEES2_

