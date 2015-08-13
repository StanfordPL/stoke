  .text
  .globl _ZNSs7_M_leakEv
  .type _ZNSs7_M_leakEv, @function

#! file-offset 0xeea80
#! rip-offset  0xaea80
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
._ZNSs7_M_leakEv:              #        0xaea80  0      OPC=<label>         
  movl %edi, %edi              #  1     0xaea80  2      OPC=movl_r32_r32    
  movl %edi, %edi              #  2     0xaea82  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax     #  3     0xaea84  4      OPC=movl_r32_m32    
  subl $0xc, %eax              #  4     0xaea88  3      OPC=subl_r32_imm8   
  movl %eax, %eax              #  5     0xaea8b  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %r8d  #  6     0xaea8d  5      OPC=movl_r32_m32    
  testl %r8d, %r8d             #  7     0xaea92  3      OPC=testl_r32_r32   
  js .L_aeaa0                  #  8     0xaea95  2      OPC=js_label        
  jmpq ._ZNSs12_M_leak_hardEv  #  9     0xaea97  5      OPC=jmpq_label_1    
  nop                          #  10    0xaea9c  1      OPC=nop             
  nop                          #  11    0xaea9d  1      OPC=nop             
  nop                          #  12    0xaea9e  1      OPC=nop             
  nop                          #  13    0xaea9f  1      OPC=nop             
.L_aeaa0:                      #        0xaeaa0  0      OPC=<label>         
  popq %r11                    #  14    0xaeaa0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  15    0xaeaa2  7      OPC=andl_r32_imm32  
  nop                          #  16    0xaeaa9  1      OPC=nop             
  nop                          #  17    0xaeaaa  1      OPC=nop             
  nop                          #  18    0xaeaab  1      OPC=nop             
  nop                          #  19    0xaeaac  1      OPC=nop             
  addq %r15, %r11              #  20    0xaeaad  3      OPC=addq_r64_r64    
  jmpq %r11                    #  21    0xaeab0  3      OPC=jmpq_r64        
  nop                          #  22    0xaeab3  1      OPC=nop             
  nop                          #  23    0xaeab4  1      OPC=nop             
  nop                          #  24    0xaeab5  1      OPC=nop             
  nop                          #  25    0xaeab6  1      OPC=nop             
  nop                          #  26    0xaeab7  1      OPC=nop             
  nop                          #  27    0xaeab8  1      OPC=nop             
  nop                          #  28    0xaeab9  1      OPC=nop             
  nop                          #  29    0xaeaba  1      OPC=nop             
  nop                          #  30    0xaeabb  1      OPC=nop             
  nop                          #  31    0xaeabc  1      OPC=nop             
  nop                          #  32    0xaeabd  1      OPC=nop             
  nop                          #  33    0xaeabe  1      OPC=nop             
  nop                          #  34    0xaeabf  1      OPC=nop             
  nop                          #  35    0xaeac0  1      OPC=nop             
  nop                          #  36    0xaeac1  1      OPC=nop             
  nop                          #  37    0xaeac2  1      OPC=nop             
  nop                          #  38    0xaeac3  1      OPC=nop             
  nop                          #  39    0xaeac4  1      OPC=nop             
  nop                          #  40    0xaeac5  1      OPC=nop             
  nop                          #  41    0xaeac6  1      OPC=nop             
                                                                            
.size _ZNSs7_M_leakEv, .-_ZNSs7_M_leakEv

