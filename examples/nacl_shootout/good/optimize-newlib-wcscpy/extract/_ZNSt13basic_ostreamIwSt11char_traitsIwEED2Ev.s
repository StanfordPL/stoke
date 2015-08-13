  .text
  .globl _ZNSt13basic_ostreamIwSt11char_traitsIwEED2Ev
  .type _ZNSt13basic_ostreamIwSt11char_traitsIwEED2Ev, @function

#! file-offset 0xdcda0
#! rip-offset  0x9cda0
#! capacity    64 bytes

# Text                                           #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_ostreamIwSt11char_traitsIwEED2Ev:  #        0x9cda0  0      OPC=<label>         
  movl %esi, %esi                                #  1     0x9cda0  2      OPC=movl_r32_r32    
  movl %edi, %edi                                #  2     0x9cda2  2      OPC=movl_r32_r32    
  movl %esi, %esi                                #  3     0x9cda4  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                       #  4     0x9cda6  4      OPC=movl_r32_m32    
  movl %edi, %edi                                #  5     0x9cdaa  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)                       #  6     0x9cdac  4      OPC=movl_m32_r32    
  subl $0xc, %eax                                #  7     0x9cdb0  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                #  8     0x9cdb3  2      OPC=movl_r32_r32    
  addl (%r15,%rax,1), %edi                       #  9     0x9cdb5  4      OPC=addl_r32_m32    
  movl %esi, %esi                                #  10    0x9cdb9  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rsi,1), %eax                    #  11    0x9cdbb  5      OPC=movl_r32_m32    
  movl %edi, %edi                                #  12    0x9cdc0  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)                       #  13    0x9cdc2  4      OPC=movl_m32_r32    
  popq %r11                                      #  14    0x9cdc6  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                        #  15    0x9cdc8  7      OPC=andl_r32_imm32  
  nop                                            #  16    0x9cdcf  1      OPC=nop             
  nop                                            #  17    0x9cdd0  1      OPC=nop             
  nop                                            #  18    0x9cdd1  1      OPC=nop             
  nop                                            #  19    0x9cdd2  1      OPC=nop             
  addq %r15, %r11                                #  20    0x9cdd3  3      OPC=addq_r64_r64    
  jmpq %r11                                      #  21    0x9cdd6  3      OPC=jmpq_r64        
  nop                                            #  22    0x9cdd9  1      OPC=nop             
  nop                                            #  23    0x9cdda  1      OPC=nop             
  nop                                            #  24    0x9cddb  1      OPC=nop             
  nop                                            #  25    0x9cddc  1      OPC=nop             
  nop                                            #  26    0x9cddd  1      OPC=nop             
  nop                                            #  27    0x9cdde  1      OPC=nop             
  nop                                            #  28    0x9cddf  1      OPC=nop             
  nop                                            #  29    0x9cde0  1      OPC=nop             
  nop                                            #  30    0x9cde1  1      OPC=nop             
  nop                                            #  31    0x9cde2  1      OPC=nop             
  nop                                            #  32    0x9cde3  1      OPC=nop             
  nop                                            #  33    0x9cde4  1      OPC=nop             
  nop                                            #  34    0x9cde5  1      OPC=nop             
  nop                                            #  35    0x9cde6  1      OPC=nop             
                                                                                              
.size _ZNSt13basic_ostreamIwSt11char_traitsIwEED2Ev, .-_ZNSt13basic_ostreamIwSt11char_traitsIwEED2Ev

