  .text
  .globl _ZNSs7_M_leakEv
  .type _ZNSs7_M_leakEv, @function

#! file-offset 0xeed80
#! rip-offset  0xaed80
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
._ZNSs7_M_leakEv:              #        0xaed80  0      OPC=<label>         
  movl %edi, %edi              #  1     0xaed80  2      OPC=movl_r32_r32    
  movl %edi, %edi              #  2     0xaed82  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax     #  3     0xaed84  4      OPC=movl_r32_m32    
  subl $0xc, %eax              #  4     0xaed88  3      OPC=subl_r32_imm8   
  movl %eax, %eax              #  5     0xaed8b  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %r8d  #  6     0xaed8d  5      OPC=movl_r32_m32    
  testl %r8d, %r8d             #  7     0xaed92  3      OPC=testl_r32_r32   
  js .L_aeda0                  #  8     0xaed95  2      OPC=js_label        
  jmpq ._ZNSs12_M_leak_hardEv  #  9     0xaed97  5      OPC=jmpq_label_1    
  nop                          #  10    0xaed9c  1      OPC=nop             
  nop                          #  11    0xaed9d  1      OPC=nop             
  nop                          #  12    0xaed9e  1      OPC=nop             
  nop                          #  13    0xaed9f  1      OPC=nop             
.L_aeda0:                      #        0xaeda0  0      OPC=<label>         
  popq %r11                    #  14    0xaeda0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  15    0xaeda2  7      OPC=andl_r32_imm32  
  nop                          #  16    0xaeda9  1      OPC=nop             
  nop                          #  17    0xaedaa  1      OPC=nop             
  nop                          #  18    0xaedab  1      OPC=nop             
  nop                          #  19    0xaedac  1      OPC=nop             
  addq %r15, %r11              #  20    0xaedad  3      OPC=addq_r64_r64    
  jmpq %r11                    #  21    0xaedb0  3      OPC=jmpq_r64        
  nop                          #  22    0xaedb3  1      OPC=nop             
  nop                          #  23    0xaedb4  1      OPC=nop             
  nop                          #  24    0xaedb5  1      OPC=nop             
  nop                          #  25    0xaedb6  1      OPC=nop             
  nop                          #  26    0xaedb7  1      OPC=nop             
  nop                          #  27    0xaedb8  1      OPC=nop             
  nop                          #  28    0xaedb9  1      OPC=nop             
  nop                          #  29    0xaedba  1      OPC=nop             
  nop                          #  30    0xaedbb  1      OPC=nop             
  nop                          #  31    0xaedbc  1      OPC=nop             
  nop                          #  32    0xaedbd  1      OPC=nop             
  nop                          #  33    0xaedbe  1      OPC=nop             
  nop                          #  34    0xaedbf  1      OPC=nop             
  nop                          #  35    0xaedc0  1      OPC=nop             
  nop                          #  36    0xaedc1  1      OPC=nop             
  nop                          #  37    0xaedc2  1      OPC=nop             
  nop                          #  38    0xaedc3  1      OPC=nop             
  nop                          #  39    0xaedc4  1      OPC=nop             
  nop                          #  40    0xaedc5  1      OPC=nop             
  nop                          #  41    0xaedc6  1      OPC=nop             
                                                                            
.size _ZNSs7_M_leakEv, .-_ZNSs7_M_leakEv

