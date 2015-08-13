  .text
  .globl _ZNKSt11__timepunctIcE20_M_date_time_formatsEPPKc
  .type _ZNKSt11__timepunctIcE20_M_date_time_formatsEPPKc, @function

#! file-offset 0xb7f20
#! rip-offset  0x77f20
#! capacity    64 bytes

# Text                                               #  Line  RIP      Bytes  Opcode              
._ZNKSt11__timepunctIcE20_M_date_time_formatsEPPKc:  #        0x77f20  0      OPC=<label>         
  movl %edi, %edi                                    #  1     0x77f20  2      OPC=movl_r32_r32    
  movl %esi, %esi                                    #  2     0x77f22  2      OPC=movl_r32_r32    
  movl %edi, %edi                                    #  3     0x77f24  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                        #  4     0x77f26  5      OPC=movl_r32_m32    
  popq %r11                                          #  5     0x77f2b  2      OPC=popq_r64_1      
  movl %eax, %eax                                    #  6     0x77f2d  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rax,1), %edx                       #  7     0x77f2f  5      OPC=movl_r32_m32    
  movl %esi, %esi                                    #  8     0x77f34  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rsi,1)                           #  9     0x77f36  4      OPC=movl_m32_r32    
  nop                                                #  10    0x77f3a  1      OPC=nop             
  nop                                                #  11    0x77f3b  1      OPC=nop             
  nop                                                #  12    0x77f3c  1      OPC=nop             
  nop                                                #  13    0x77f3d  1      OPC=nop             
  nop                                                #  14    0x77f3e  1      OPC=nop             
  nop                                                #  15    0x77f3f  1      OPC=nop             
  movl %eax, %eax                                    #  16    0x77f40  2      OPC=movl_r32_r32    
  movl 0x1c(%r15,%rax,1), %eax                       #  17    0x77f42  5      OPC=movl_r32_m32    
  movl %esi, %esi                                    #  18    0x77f47  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rsi,1)                        #  19    0x77f49  5      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d                            #  20    0x77f4e  7      OPC=andl_r32_imm32  
  nop                                                #  21    0x77f55  1      OPC=nop             
  nop                                                #  22    0x77f56  1      OPC=nop             
  nop                                                #  23    0x77f57  1      OPC=nop             
  nop                                                #  24    0x77f58  1      OPC=nop             
  addq %r15, %r11                                    #  25    0x77f59  3      OPC=addq_r64_r64    
  jmpq %r11                                          #  26    0x77f5c  3      OPC=jmpq_r64        
  nop                                                #  27    0x77f5f  1      OPC=nop             
  nop                                                #  28    0x77f60  1      OPC=nop             
  nop                                                #  29    0x77f61  1      OPC=nop             
  nop                                                #  30    0x77f62  1      OPC=nop             
  nop                                                #  31    0x77f63  1      OPC=nop             
  nop                                                #  32    0x77f64  1      OPC=nop             
  nop                                                #  33    0x77f65  1      OPC=nop             
  nop                                                #  34    0x77f66  1      OPC=nop             
                                                                                                  
.size _ZNKSt11__timepunctIcE20_M_date_time_formatsEPPKc, .-_ZNKSt11__timepunctIcE20_M_date_time_formatsEPPKc

