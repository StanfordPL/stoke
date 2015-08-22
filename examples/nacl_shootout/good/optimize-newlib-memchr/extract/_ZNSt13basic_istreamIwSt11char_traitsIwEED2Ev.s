  .text
  .globl _ZNSt13basic_istreamIwSt11char_traitsIwEED2Ev
  .type _ZNSt13basic_istreamIwSt11char_traitsIwEED2Ev, @function

#! file-offset 0xa7a20
#! rip-offset  0x67a20
#! capacity    64 bytes

# Text                                           #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_istreamIwSt11char_traitsIwEED2Ev:  #        0x67a20  0      OPC=<label>         
  movl %esi, %esi                                #  1     0x67a20  2      OPC=movl_r32_r32    
  movl %edi, %edi                                #  2     0x67a22  2      OPC=movl_r32_r32    
  movl %esi, %esi                                #  3     0x67a24  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                       #  4     0x67a26  4      OPC=movl_r32_m32    
  movl %esi, %esi                                #  5     0x67a2a  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rsi,1), %edx                    #  6     0x67a2c  5      OPC=movl_r32_m32    
  movl %edi, %edi                                #  7     0x67a31  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)                       #  8     0x67a33  4      OPC=movl_m32_r32    
  subl $0xc, %eax                                #  9     0x67a37  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                #  10    0x67a3a  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                       #  11    0x67a3c  4      OPC=movl_r32_m32    
  movl %edi, %edi                                #  12    0x67a40  2      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%rdi,1)                    #  13    0x67a42  9      OPC=movl_m32_imm32  
  addl %edi, %eax                                #  14    0x67a4b  2      OPC=addl_r32_r32    
  movl %eax, %eax                                #  15    0x67a4d  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)                       #  16    0x67a4f  4      OPC=movl_m32_r32    
  popq %r11                                      #  17    0x67a53  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                        #  18    0x67a55  7      OPC=andl_r32_imm32  
  nop                                            #  19    0x67a5c  1      OPC=nop             
  nop                                            #  20    0x67a5d  1      OPC=nop             
  nop                                            #  21    0x67a5e  1      OPC=nop             
  nop                                            #  22    0x67a5f  1      OPC=nop             
  addq %r15, %r11                                #  23    0x67a60  3      OPC=addq_r64_r64    
  jmpq %r11                                      #  24    0x67a63  3      OPC=jmpq_r64        
  nop                                            #  25    0x67a66  1      OPC=nop             
                                                                                              
.size _ZNSt13basic_istreamIwSt11char_traitsIwEED2Ev, .-_ZNSt13basic_istreamIwSt11char_traitsIwEED2Ev

