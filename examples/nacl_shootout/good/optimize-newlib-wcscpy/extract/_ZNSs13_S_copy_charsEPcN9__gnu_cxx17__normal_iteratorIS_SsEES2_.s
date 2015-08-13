  .text
  .globl _ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIS_SsEES2_
  .type _ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIS_SsEES2_, @function

#! file-offset 0xebde0
#! rip-offset  0xabde0
#! capacity    64 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIS_SsEES2_:  #        0xabde0  0      OPC=<label>         
  movl %esi, %esi                                                  #  1     0xabde0  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                  #  2     0xabde2  2      OPC=movl_r32_r32    
  subl %esi, %edx                                                  #  3     0xabde4  2      OPC=subl_r32_r32    
  cmpl $0x1, %edx                                                  #  4     0xabde6  3      OPC=cmpl_r32_imm8   
  je .L_abe00                                                      #  5     0xabde9  2      OPC=je_label        
  jmpq .memcpy                                                     #  6     0xabdeb  5      OPC=jmpq_label_1    
  nop                                                              #  7     0xabdf0  1      OPC=nop             
  nop                                                              #  8     0xabdf1  1      OPC=nop             
  nop                                                              #  9     0xabdf2  1      OPC=nop             
  nop                                                              #  10    0xabdf3  1      OPC=nop             
  nop                                                              #  11    0xabdf4  1      OPC=nop             
  nop                                                              #  12    0xabdf5  1      OPC=nop             
  nop                                                              #  13    0xabdf6  1      OPC=nop             
  nop                                                              #  14    0xabdf7  1      OPC=nop             
  nop                                                              #  15    0xabdf8  1      OPC=nop             
  nop                                                              #  16    0xabdf9  1      OPC=nop             
  nop                                                              #  17    0xabdfa  1      OPC=nop             
  nop                                                              #  18    0xabdfb  1      OPC=nop             
  nop                                                              #  19    0xabdfc  1      OPC=nop             
  nop                                                              #  20    0xabdfd  1      OPC=nop             
  nop                                                              #  21    0xabdfe  1      OPC=nop             
  nop                                                              #  22    0xabdff  1      OPC=nop             
.L_abe00:                                                          #        0xabe00  0      OPC=<label>         
  movl %esi, %esi                                                  #  23    0xabe00  2      OPC=movl_r32_r32    
  movzbl (%r15,%rsi,1), %eax                                       #  24    0xabe02  5      OPC=movzbl_r32_m8   
  popq %r11                                                        #  25    0xabe07  2      OPC=popq_r64_1      
  movl %edi, %edi                                                  #  26    0xabe09  2      OPC=movl_r32_r32    
  movb %al, (%r15,%rdi,1)                                          #  27    0xabe0b  4      OPC=movb_m8_r8      
  andl $0xffffffe0, %r11d                                          #  28    0xabe0f  7      OPC=andl_r32_imm32  
  nop                                                              #  29    0xabe16  1      OPC=nop             
  nop                                                              #  30    0xabe17  1      OPC=nop             
  nop                                                              #  31    0xabe18  1      OPC=nop             
  nop                                                              #  32    0xabe19  1      OPC=nop             
  addq %r15, %r11                                                  #  33    0xabe1a  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  34    0xabe1d  3      OPC=jmpq_r64        
  nop                                                              #  35    0xabe20  1      OPC=nop             
  nop                                                              #  36    0xabe21  1      OPC=nop             
  nop                                                              #  37    0xabe22  1      OPC=nop             
  nop                                                              #  38    0xabe23  1      OPC=nop             
  nop                                                              #  39    0xabe24  1      OPC=nop             
  nop                                                              #  40    0xabe25  1      OPC=nop             
  nop                                                              #  41    0xabe26  1      OPC=nop             
                                                                                                                
.size _ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIS_SsEES2_, .-_ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIS_SsEES2_

