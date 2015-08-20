  .text
  .globl _ZNKSt11__timepunctIcE20_M_date_time_formatsEPPKc
  .type _ZNKSt11__timepunctIcE20_M_date_time_formatsEPPKc, @function

#! file-offset 0xb8220
#! rip-offset  0x78220
#! capacity    64 bytes

# Text                                               #  Line  RIP      Bytes  Opcode              
._ZNKSt11__timepunctIcE20_M_date_time_formatsEPPKc:  #        0x78220  0      OPC=<label>         
  movl %edi, %edi                                    #  1     0x78220  2      OPC=movl_r32_r32    
  movl %esi, %esi                                    #  2     0x78222  2      OPC=movl_r32_r32    
  movl %edi, %edi                                    #  3     0x78224  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                        #  4     0x78226  5      OPC=movl_r32_m32    
  popq %r11                                          #  5     0x7822b  2      OPC=popq_r64_1      
  movl %eax, %eax                                    #  6     0x7822d  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rax,1), %edx                       #  7     0x7822f  5      OPC=movl_r32_m32    
  movl %esi, %esi                                    #  8     0x78234  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rsi,1)                           #  9     0x78236  4      OPC=movl_m32_r32    
  nop                                                #  10    0x7823a  1      OPC=nop             
  nop                                                #  11    0x7823b  1      OPC=nop             
  nop                                                #  12    0x7823c  1      OPC=nop             
  nop                                                #  13    0x7823d  1      OPC=nop             
  nop                                                #  14    0x7823e  1      OPC=nop             
  nop                                                #  15    0x7823f  1      OPC=nop             
  movl %eax, %eax                                    #  16    0x78240  2      OPC=movl_r32_r32    
  movl 0x1c(%r15,%rax,1), %eax                       #  17    0x78242  5      OPC=movl_r32_m32    
  movl %esi, %esi                                    #  18    0x78247  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rsi,1)                        #  19    0x78249  5      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d                            #  20    0x7824e  7      OPC=andl_r32_imm32  
  nop                                                #  21    0x78255  1      OPC=nop             
  nop                                                #  22    0x78256  1      OPC=nop             
  nop                                                #  23    0x78257  1      OPC=nop             
  nop                                                #  24    0x78258  1      OPC=nop             
  addq %r15, %r11                                    #  25    0x78259  3      OPC=addq_r64_r64    
  jmpq %r11                                          #  26    0x7825c  3      OPC=jmpq_r64        
  nop                                                #  27    0x7825f  1      OPC=nop             
  nop                                                #  28    0x78260  1      OPC=nop             
  nop                                                #  29    0x78261  1      OPC=nop             
  nop                                                #  30    0x78262  1      OPC=nop             
  nop                                                #  31    0x78263  1      OPC=nop             
  nop                                                #  32    0x78264  1      OPC=nop             
  nop                                                #  33    0x78265  1      OPC=nop             
  nop                                                #  34    0x78266  1      OPC=nop             
                                                                                                  
.size _ZNKSt11__timepunctIcE20_M_date_time_formatsEPPKc, .-_ZNKSt11__timepunctIcE20_M_date_time_formatsEPPKc

