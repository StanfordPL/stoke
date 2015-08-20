  .text
  .globl _ZNSt13basic_istreamIwSt11char_traitsIwEED2Ev
  .type _ZNSt13basic_istreamIwSt11char_traitsIwEED2Ev, @function

#! file-offset 0xa7300
#! rip-offset  0x67300
#! capacity    64 bytes

# Text                                           #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_istreamIwSt11char_traitsIwEED2Ev:  #        0x67300  0      OPC=<label>         
  movl %esi, %esi                                #  1     0x67300  2      OPC=movl_r32_r32    
  movl %edi, %edi                                #  2     0x67302  2      OPC=movl_r32_r32    
  movl %esi, %esi                                #  3     0x67304  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                       #  4     0x67306  4      OPC=movl_r32_m32    
  movl %esi, %esi                                #  5     0x6730a  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rsi,1), %edx                    #  6     0x6730c  5      OPC=movl_r32_m32    
  movl %edi, %edi                                #  7     0x67311  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)                       #  8     0x67313  4      OPC=movl_m32_r32    
  subl $0xc, %eax                                #  9     0x67317  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                #  10    0x6731a  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                       #  11    0x6731c  4      OPC=movl_r32_m32    
  movl %edi, %edi                                #  12    0x67320  2      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%rdi,1)                    #  13    0x67322  9      OPC=movl_m32_imm32  
  addl %edi, %eax                                #  14    0x6732b  2      OPC=addl_r32_r32    
  movl %eax, %eax                                #  15    0x6732d  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)                       #  16    0x6732f  4      OPC=movl_m32_r32    
  popq %r11                                      #  17    0x67333  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                        #  18    0x67335  7      OPC=andl_r32_imm32  
  nop                                            #  19    0x6733c  1      OPC=nop             
  nop                                            #  20    0x6733d  1      OPC=nop             
  nop                                            #  21    0x6733e  1      OPC=nop             
  nop                                            #  22    0x6733f  1      OPC=nop             
  addq %r15, %r11                                #  23    0x67340  3      OPC=addq_r64_r64    
  jmpq %r11                                      #  24    0x67343  3      OPC=jmpq_r64        
  nop                                            #  25    0x67346  1      OPC=nop             
                                                                                              
.size _ZNSt13basic_istreamIwSt11char_traitsIwEED2Ev, .-_ZNSt13basic_istreamIwSt11char_traitsIwEED2Ev

