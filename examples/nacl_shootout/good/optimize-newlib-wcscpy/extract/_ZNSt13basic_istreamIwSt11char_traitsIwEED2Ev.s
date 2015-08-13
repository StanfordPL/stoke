  .text
  .globl _ZNSt13basic_istreamIwSt11char_traitsIwEED2Ev
  .type _ZNSt13basic_istreamIwSt11char_traitsIwEED2Ev, @function

#! file-offset 0xa7000
#! rip-offset  0x67000
#! capacity    64 bytes

# Text                                           #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_istreamIwSt11char_traitsIwEED2Ev:  #        0x67000  0      OPC=<label>         
  movl %esi, %esi                                #  1     0x67000  2      OPC=movl_r32_r32    
  movl %edi, %edi                                #  2     0x67002  2      OPC=movl_r32_r32    
  movl %esi, %esi                                #  3     0x67004  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                       #  4     0x67006  4      OPC=movl_r32_m32    
  movl %esi, %esi                                #  5     0x6700a  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rsi,1), %edx                    #  6     0x6700c  5      OPC=movl_r32_m32    
  movl %edi, %edi                                #  7     0x67011  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)                       #  8     0x67013  4      OPC=movl_m32_r32    
  subl $0xc, %eax                                #  9     0x67017  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                #  10    0x6701a  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                       #  11    0x6701c  4      OPC=movl_r32_m32    
  movl %edi, %edi                                #  12    0x67020  2      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%rdi,1)                    #  13    0x67022  9      OPC=movl_m32_imm32  
  addl %edi, %eax                                #  14    0x6702b  2      OPC=addl_r32_r32    
  movl %eax, %eax                                #  15    0x6702d  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)                       #  16    0x6702f  4      OPC=movl_m32_r32    
  popq %r11                                      #  17    0x67033  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                        #  18    0x67035  7      OPC=andl_r32_imm32  
  nop                                            #  19    0x6703c  1      OPC=nop             
  nop                                            #  20    0x6703d  1      OPC=nop             
  nop                                            #  21    0x6703e  1      OPC=nop             
  nop                                            #  22    0x6703f  1      OPC=nop             
  addq %r15, %r11                                #  23    0x67040  3      OPC=addq_r64_r64    
  jmpq %r11                                      #  24    0x67043  3      OPC=jmpq_r64        
  nop                                            #  25    0x67046  1      OPC=nop             
                                                                                              
.size _ZNSt13basic_istreamIwSt11char_traitsIwEED2Ev, .-_ZNSt13basic_istreamIwSt11char_traitsIwEED2Ev

