  .text
  .globl _ZNKSt11__timepunctIcE20_M_date_time_formatsEPPKc
  .type _ZNKSt11__timepunctIcE20_M_date_time_formatsEPPKc, @function

#! file-offset 0xb8940
#! rip-offset  0x78940
#! capacity    64 bytes

# Text                                               #  Line  RIP      Bytes  Opcode              
._ZNKSt11__timepunctIcE20_M_date_time_formatsEPPKc:  #        0x78940  0      OPC=<label>         
  movl %edi, %edi                                    #  1     0x78940  2      OPC=movl_r32_r32    
  movl %esi, %esi                                    #  2     0x78942  2      OPC=movl_r32_r32    
  movl %edi, %edi                                    #  3     0x78944  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                        #  4     0x78946  5      OPC=movl_r32_m32    
  popq %r11                                          #  5     0x7894b  2      OPC=popq_r64_1      
  movl %eax, %eax                                    #  6     0x7894d  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rax,1), %edx                       #  7     0x7894f  5      OPC=movl_r32_m32    
  movl %esi, %esi                                    #  8     0x78954  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rsi,1)                           #  9     0x78956  4      OPC=movl_m32_r32    
  nop                                                #  10    0x7895a  1      OPC=nop             
  nop                                                #  11    0x7895b  1      OPC=nop             
  nop                                                #  12    0x7895c  1      OPC=nop             
  nop                                                #  13    0x7895d  1      OPC=nop             
  nop                                                #  14    0x7895e  1      OPC=nop             
  nop                                                #  15    0x7895f  1      OPC=nop             
  movl %eax, %eax                                    #  16    0x78960  2      OPC=movl_r32_r32    
  movl 0x1c(%r15,%rax,1), %eax                       #  17    0x78962  5      OPC=movl_r32_m32    
  movl %esi, %esi                                    #  18    0x78967  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rsi,1)                        #  19    0x78969  5      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d                            #  20    0x7896e  7      OPC=andl_r32_imm32  
  nop                                                #  21    0x78975  1      OPC=nop             
  nop                                                #  22    0x78976  1      OPC=nop             
  nop                                                #  23    0x78977  1      OPC=nop             
  nop                                                #  24    0x78978  1      OPC=nop             
  addq %r15, %r11                                    #  25    0x78979  3      OPC=addq_r64_r64    
  jmpq %r11                                          #  26    0x7897c  3      OPC=jmpq_r64        
  nop                                                #  27    0x7897f  1      OPC=nop             
  nop                                                #  28    0x78980  1      OPC=nop             
  nop                                                #  29    0x78981  1      OPC=nop             
  nop                                                #  30    0x78982  1      OPC=nop             
  nop                                                #  31    0x78983  1      OPC=nop             
  nop                                                #  32    0x78984  1      OPC=nop             
  nop                                                #  33    0x78985  1      OPC=nop             
  nop                                                #  34    0x78986  1      OPC=nop             
                                                                                                  
.size _ZNKSt11__timepunctIcE20_M_date_time_formatsEPPKc, .-_ZNKSt11__timepunctIcE20_M_date_time_formatsEPPKc

