  .text
  .globl _ZNSt13basic_ostreamIwSt11char_traitsIwEED2Ev
  .type _ZNSt13basic_ostreamIwSt11char_traitsIwEED2Ev, @function

#! file-offset 0xdd0a0
#! rip-offset  0x9d0a0
#! capacity    64 bytes

# Text                                           #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_ostreamIwSt11char_traitsIwEED2Ev:  #        0x9d0a0  0      OPC=<label>         
  movl %esi, %esi                                #  1     0x9d0a0  2      OPC=movl_r32_r32    
  movl %edi, %edi                                #  2     0x9d0a2  2      OPC=movl_r32_r32    
  movl %esi, %esi                                #  3     0x9d0a4  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                       #  4     0x9d0a6  4      OPC=movl_r32_m32    
  movl %edi, %edi                                #  5     0x9d0aa  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)                       #  6     0x9d0ac  4      OPC=movl_m32_r32    
  subl $0xc, %eax                                #  7     0x9d0b0  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                #  8     0x9d0b3  2      OPC=movl_r32_r32    
  addl (%r15,%rax,1), %edi                       #  9     0x9d0b5  4      OPC=addl_r32_m32    
  movl %esi, %esi                                #  10    0x9d0b9  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rsi,1), %eax                    #  11    0x9d0bb  5      OPC=movl_r32_m32    
  movl %edi, %edi                                #  12    0x9d0c0  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)                       #  13    0x9d0c2  4      OPC=movl_m32_r32    
  popq %r11                                      #  14    0x9d0c6  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                        #  15    0x9d0c8  7      OPC=andl_r32_imm32  
  nop                                            #  16    0x9d0cf  1      OPC=nop             
  nop                                            #  17    0x9d0d0  1      OPC=nop             
  nop                                            #  18    0x9d0d1  1      OPC=nop             
  nop                                            #  19    0x9d0d2  1      OPC=nop             
  addq %r15, %r11                                #  20    0x9d0d3  3      OPC=addq_r64_r64    
  jmpq %r11                                      #  21    0x9d0d6  3      OPC=jmpq_r64        
  nop                                            #  22    0x9d0d9  1      OPC=nop             
  nop                                            #  23    0x9d0da  1      OPC=nop             
  nop                                            #  24    0x9d0db  1      OPC=nop             
  nop                                            #  25    0x9d0dc  1      OPC=nop             
  nop                                            #  26    0x9d0dd  1      OPC=nop             
  nop                                            #  27    0x9d0de  1      OPC=nop             
  nop                                            #  28    0x9d0df  1      OPC=nop             
  nop                                            #  29    0x9d0e0  1      OPC=nop             
  nop                                            #  30    0x9d0e1  1      OPC=nop             
  nop                                            #  31    0x9d0e2  1      OPC=nop             
  nop                                            #  32    0x9d0e3  1      OPC=nop             
  nop                                            #  33    0x9d0e4  1      OPC=nop             
  nop                                            #  34    0x9d0e5  1      OPC=nop             
  nop                                            #  35    0x9d0e6  1      OPC=nop             
                                                                                              
.size _ZNSt13basic_ostreamIwSt11char_traitsIwEED2Ev, .-_ZNSt13basic_ostreamIwSt11char_traitsIwEED2Ev

