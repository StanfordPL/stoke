  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE6lengthEv
  .type _ZNKSbIwSt11char_traitsIwESaIwEE6lengthEv, @function

#! file-offset 0x1153e0
#! rip-offset  0xd53e0
#! capacity    32 bytes

# Text                                       #  Line  RIP      Bytes  Opcode              
._ZNKSbIwSt11char_traitsIwESaIwEE6lengthEv:  #        0xd53e0  0      OPC=<label>         
  movl %edi, %edi                            #  1     0xd53e0  2      OPC=movl_r32_r32    
  movl %edi, %edi                            #  2     0xd53e2  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                   #  3     0xd53e4  4      OPC=movl_r32_m32    
  popq %r11                                  #  4     0xd53e8  2      OPC=popq_r64_1      
  subl $0xc, %eax                            #  5     0xd53ea  3      OPC=subl_r32_imm8   
  movl %eax, %eax                            #  6     0xd53ed  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                   #  7     0xd53ef  4      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d                    #  8     0xd53f3  7      OPC=andl_r32_imm32  
  nop                                        #  9     0xd53fa  1      OPC=nop             
  nop                                        #  10    0xd53fb  1      OPC=nop             
  nop                                        #  11    0xd53fc  1      OPC=nop             
  nop                                        #  12    0xd53fd  1      OPC=nop             
  addq %r15, %r11                            #  13    0xd53fe  3      OPC=addq_r64_r64    
  jmpq %r11                                  #  14    0xd5401  3      OPC=jmpq_r64        
  nop                                        #  15    0xd5404  1      OPC=nop             
  nop                                        #  16    0xd5405  1      OPC=nop             
  nop                                        #  17    0xd5406  1      OPC=nop             
                                                                                          
.size _ZNKSbIwSt11char_traitsIwESaIwEE6lengthEv, .-_ZNKSbIwSt11char_traitsIwESaIwEE6lengthEv

