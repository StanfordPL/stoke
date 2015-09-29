  .text
  .globl _ZNKSt11__timepunctIwE20_M_date_time_formatsEPPKw
  .type _ZNKSt11__timepunctIwE20_M_date_time_formatsEPPKw, @function

#! file-offset 0xf18e0
#! rip-offset  0xb18e0
#! capacity    64 bytes

# Text                                               #  Line  RIP      Bytes  Opcode              
._ZNKSt11__timepunctIwE20_M_date_time_formatsEPPKw:  #        0xb18e0  0      OPC=<label>         
  movl %edi, %edi                                    #  1     0xb18e0  2      OPC=movl_r32_r32    
  movl %esi, %esi                                    #  2     0xb18e2  2      OPC=movl_r32_r32    
  movl %edi, %edi                                    #  3     0xb18e4  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                        #  4     0xb18e6  5      OPC=movl_r32_m32    
  popq %r11                                          #  5     0xb18eb  2      OPC=popq_r64_1      
  movl %eax, %eax                                    #  6     0xb18ed  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rax,1), %edx                       #  7     0xb18ef  5      OPC=movl_r32_m32    
  movl %esi, %esi                                    #  8     0xb18f4  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rsi,1)                           #  9     0xb18f6  4      OPC=movl_m32_r32    
  nop                                                #  10    0xb18fa  1      OPC=nop             
  nop                                                #  11    0xb18fb  1      OPC=nop             
  nop                                                #  12    0xb18fc  1      OPC=nop             
  nop                                                #  13    0xb18fd  1      OPC=nop             
  nop                                                #  14    0xb18fe  1      OPC=nop             
  nop                                                #  15    0xb18ff  1      OPC=nop             
  movl %eax, %eax                                    #  16    0xb1900  2      OPC=movl_r32_r32    
  movl 0x1c(%r15,%rax,1), %eax                       #  17    0xb1902  5      OPC=movl_r32_m32    
  movl %esi, %esi                                    #  18    0xb1907  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rsi,1)                        #  19    0xb1909  5      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d                            #  20    0xb190e  7      OPC=andl_r32_imm32  
  nop                                                #  21    0xb1915  1      OPC=nop             
  nop                                                #  22    0xb1916  1      OPC=nop             
  nop                                                #  23    0xb1917  1      OPC=nop             
  nop                                                #  24    0xb1918  1      OPC=nop             
  addq %r15, %r11                                    #  25    0xb1919  3      OPC=addq_r64_r64    
  jmpq %r11                                          #  26    0xb191c  3      OPC=jmpq_r64        
  nop                                                #  27    0xb191f  1      OPC=nop             
  nop                                                #  28    0xb1920  1      OPC=nop             
  nop                                                #  29    0xb1921  1      OPC=nop             
  nop                                                #  30    0xb1922  1      OPC=nop             
  nop                                                #  31    0xb1923  1      OPC=nop             
  nop                                                #  32    0xb1924  1      OPC=nop             
  nop                                                #  33    0xb1925  1      OPC=nop             
  nop                                                #  34    0xb1926  1      OPC=nop             
                                                                                                  
.size _ZNKSt11__timepunctIwE20_M_date_time_formatsEPPKw, .-_ZNKSt11__timepunctIwE20_M_date_time_formatsEPPKw

