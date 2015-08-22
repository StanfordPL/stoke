  .text
  .globl _ZNSs7_M_leakEv
  .type _ZNSs7_M_leakEv, @function

#! file-offset 0xef4a0
#! rip-offset  0xaf4a0
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
._ZNSs7_M_leakEv:              #        0xaf4a0  0      OPC=<label>         
  movl %edi, %edi              #  1     0xaf4a0  2      OPC=movl_r32_r32    
  movl %edi, %edi              #  2     0xaf4a2  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax     #  3     0xaf4a4  4      OPC=movl_r32_m32    
  subl $0xc, %eax              #  4     0xaf4a8  3      OPC=subl_r32_imm8   
  movl %eax, %eax              #  5     0xaf4ab  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %r8d  #  6     0xaf4ad  5      OPC=movl_r32_m32    
  testl %r8d, %r8d             #  7     0xaf4b2  3      OPC=testl_r32_r32   
  js .L_af4c0                  #  8     0xaf4b5  2      OPC=js_label        
  jmpq ._ZNSs12_M_leak_hardEv  #  9     0xaf4b7  5      OPC=jmpq_label_1    
  nop                          #  10    0xaf4bc  1      OPC=nop             
  nop                          #  11    0xaf4bd  1      OPC=nop             
  nop                          #  12    0xaf4be  1      OPC=nop             
  nop                          #  13    0xaf4bf  1      OPC=nop             
.L_af4c0:                      #        0xaf4c0  0      OPC=<label>         
  popq %r11                    #  14    0xaf4c0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  15    0xaf4c2  7      OPC=andl_r32_imm32  
  nop                          #  16    0xaf4c9  1      OPC=nop             
  nop                          #  17    0xaf4ca  1      OPC=nop             
  nop                          #  18    0xaf4cb  1      OPC=nop             
  nop                          #  19    0xaf4cc  1      OPC=nop             
  addq %r15, %r11              #  20    0xaf4cd  3      OPC=addq_r64_r64    
  jmpq %r11                    #  21    0xaf4d0  3      OPC=jmpq_r64        
  nop                          #  22    0xaf4d3  1      OPC=nop             
  nop                          #  23    0xaf4d4  1      OPC=nop             
  nop                          #  24    0xaf4d5  1      OPC=nop             
  nop                          #  25    0xaf4d6  1      OPC=nop             
  nop                          #  26    0xaf4d7  1      OPC=nop             
  nop                          #  27    0xaf4d8  1      OPC=nop             
  nop                          #  28    0xaf4d9  1      OPC=nop             
  nop                          #  29    0xaf4da  1      OPC=nop             
  nop                          #  30    0xaf4db  1      OPC=nop             
  nop                          #  31    0xaf4dc  1      OPC=nop             
  nop                          #  32    0xaf4dd  1      OPC=nop             
  nop                          #  33    0xaf4de  1      OPC=nop             
  nop                          #  34    0xaf4df  1      OPC=nop             
  nop                          #  35    0xaf4e0  1      OPC=nop             
  nop                          #  36    0xaf4e1  1      OPC=nop             
  nop                          #  37    0xaf4e2  1      OPC=nop             
  nop                          #  38    0xaf4e3  1      OPC=nop             
  nop                          #  39    0xaf4e4  1      OPC=nop             
  nop                          #  40    0xaf4e5  1      OPC=nop             
  nop                          #  41    0xaf4e6  1      OPC=nop             
                                                                            
.size _ZNSs7_M_leakEv, .-_ZNSs7_M_leakEv

