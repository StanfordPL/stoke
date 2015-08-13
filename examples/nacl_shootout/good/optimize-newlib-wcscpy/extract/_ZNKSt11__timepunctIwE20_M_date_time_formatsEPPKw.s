  .text
  .globl _ZNKSt11__timepunctIwE20_M_date_time_formatsEPPKw
  .type _ZNKSt11__timepunctIwE20_M_date_time_formatsEPPKw, @function

#! file-offset 0xf0ec0
#! rip-offset  0xb0ec0
#! capacity    64 bytes

# Text                                               #  Line  RIP      Bytes  Opcode              
._ZNKSt11__timepunctIwE20_M_date_time_formatsEPPKw:  #        0xb0ec0  0      OPC=<label>         
  movl %edi, %edi                                    #  1     0xb0ec0  2      OPC=movl_r32_r32    
  movl %esi, %esi                                    #  2     0xb0ec2  2      OPC=movl_r32_r32    
  movl %edi, %edi                                    #  3     0xb0ec4  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                        #  4     0xb0ec6  5      OPC=movl_r32_m32    
  popq %r11                                          #  5     0xb0ecb  2      OPC=popq_r64_1      
  movl %eax, %eax                                    #  6     0xb0ecd  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rax,1), %edx                       #  7     0xb0ecf  5      OPC=movl_r32_m32    
  movl %esi, %esi                                    #  8     0xb0ed4  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rsi,1)                           #  9     0xb0ed6  4      OPC=movl_m32_r32    
  nop                                                #  10    0xb0eda  1      OPC=nop             
  nop                                                #  11    0xb0edb  1      OPC=nop             
  nop                                                #  12    0xb0edc  1      OPC=nop             
  nop                                                #  13    0xb0edd  1      OPC=nop             
  nop                                                #  14    0xb0ede  1      OPC=nop             
  nop                                                #  15    0xb0edf  1      OPC=nop             
  movl %eax, %eax                                    #  16    0xb0ee0  2      OPC=movl_r32_r32    
  movl 0x1c(%r15,%rax,1), %eax                       #  17    0xb0ee2  5      OPC=movl_r32_m32    
  movl %esi, %esi                                    #  18    0xb0ee7  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rsi,1)                        #  19    0xb0ee9  5      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d                            #  20    0xb0eee  7      OPC=andl_r32_imm32  
  nop                                                #  21    0xb0ef5  1      OPC=nop             
  nop                                                #  22    0xb0ef6  1      OPC=nop             
  nop                                                #  23    0xb0ef7  1      OPC=nop             
  nop                                                #  24    0xb0ef8  1      OPC=nop             
  addq %r15, %r11                                    #  25    0xb0ef9  3      OPC=addq_r64_r64    
  jmpq %r11                                          #  26    0xb0efc  3      OPC=jmpq_r64        
  nop                                                #  27    0xb0eff  1      OPC=nop             
  nop                                                #  28    0xb0f00  1      OPC=nop             
  nop                                                #  29    0xb0f01  1      OPC=nop             
  nop                                                #  30    0xb0f02  1      OPC=nop             
  nop                                                #  31    0xb0f03  1      OPC=nop             
  nop                                                #  32    0xb0f04  1      OPC=nop             
  nop                                                #  33    0xb0f05  1      OPC=nop             
  nop                                                #  34    0xb0f06  1      OPC=nop             
                                                                                                  
.size _ZNKSt11__timepunctIwE20_M_date_time_formatsEPPKw, .-_ZNKSt11__timepunctIwE20_M_date_time_formatsEPPKw

