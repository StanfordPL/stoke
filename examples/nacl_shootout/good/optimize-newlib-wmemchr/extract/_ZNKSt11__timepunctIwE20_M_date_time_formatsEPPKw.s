  .text
  .globl _ZNKSt11__timepunctIwE20_M_date_time_formatsEPPKw
  .type _ZNKSt11__timepunctIwE20_M_date_time_formatsEPPKw, @function

#! file-offset 0xf11c0
#! rip-offset  0xb11c0
#! capacity    64 bytes

# Text                                               #  Line  RIP      Bytes  Opcode              
._ZNKSt11__timepunctIwE20_M_date_time_formatsEPPKw:  #        0xb11c0  0      OPC=<label>         
  movl %edi, %edi                                    #  1     0xb11c0  2      OPC=movl_r32_r32    
  movl %esi, %esi                                    #  2     0xb11c2  2      OPC=movl_r32_r32    
  movl %edi, %edi                                    #  3     0xb11c4  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                        #  4     0xb11c6  5      OPC=movl_r32_m32    
  popq %r11                                          #  5     0xb11cb  2      OPC=popq_r64_1      
  movl %eax, %eax                                    #  6     0xb11cd  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rax,1), %edx                       #  7     0xb11cf  5      OPC=movl_r32_m32    
  movl %esi, %esi                                    #  8     0xb11d4  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rsi,1)                           #  9     0xb11d6  4      OPC=movl_m32_r32    
  nop                                                #  10    0xb11da  1      OPC=nop             
  nop                                                #  11    0xb11db  1      OPC=nop             
  nop                                                #  12    0xb11dc  1      OPC=nop             
  nop                                                #  13    0xb11dd  1      OPC=nop             
  nop                                                #  14    0xb11de  1      OPC=nop             
  nop                                                #  15    0xb11df  1      OPC=nop             
  movl %eax, %eax                                    #  16    0xb11e0  2      OPC=movl_r32_r32    
  movl 0x1c(%r15,%rax,1), %eax                       #  17    0xb11e2  5      OPC=movl_r32_m32    
  movl %esi, %esi                                    #  18    0xb11e7  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rsi,1)                        #  19    0xb11e9  5      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d                            #  20    0xb11ee  7      OPC=andl_r32_imm32  
  nop                                                #  21    0xb11f5  1      OPC=nop             
  nop                                                #  22    0xb11f6  1      OPC=nop             
  nop                                                #  23    0xb11f7  1      OPC=nop             
  nop                                                #  24    0xb11f8  1      OPC=nop             
  addq %r15, %r11                                    #  25    0xb11f9  3      OPC=addq_r64_r64    
  jmpq %r11                                          #  26    0xb11fc  3      OPC=jmpq_r64        
  nop                                                #  27    0xb11ff  1      OPC=nop             
  nop                                                #  28    0xb1200  1      OPC=nop             
  nop                                                #  29    0xb1201  1      OPC=nop             
  nop                                                #  30    0xb1202  1      OPC=nop             
  nop                                                #  31    0xb1203  1      OPC=nop             
  nop                                                #  32    0xb1204  1      OPC=nop             
  nop                                                #  33    0xb1205  1      OPC=nop             
  nop                                                #  34    0xb1206  1      OPC=nop             
                                                                                                  
.size _ZNKSt11__timepunctIwE20_M_date_time_formatsEPPKw, .-_ZNKSt11__timepunctIwE20_M_date_time_formatsEPPKw

