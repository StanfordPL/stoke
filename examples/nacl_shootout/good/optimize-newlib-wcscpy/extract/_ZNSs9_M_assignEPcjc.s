  .text
  .globl _ZNSs9_M_assignEPcjc
  .type _ZNSs9_M_assignEPcjc, @function

#! file-offset 0xeaf20
#! rip-offset  0xaaf20
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
._ZNSs9_M_assignEPcjc:     #        0xaaf20  0      OPC=<label>         
  cmpl $0x1, %esi          #  1     0xaaf20  3      OPC=cmpl_r32_imm8   
  movl %edi, %edi          #  2     0xaaf23  2      OPC=movl_r32_r32    
  je .L_aaf40              #  3     0xaaf25  2      OPC=je_label        
  movsbl %dl, %eax         #  4     0xaaf27  3      OPC=movsbl_r32_r8   
  movl %esi, %edx          #  5     0xaaf2a  2      OPC=movl_r32_r32    
  movl %eax, %esi          #  6     0xaaf2c  2      OPC=movl_r32_r32    
  jmpq .memset             #  7     0xaaf2e  5      OPC=jmpq_label_1    
  nop                      #  8     0xaaf33  1      OPC=nop             
  nop                      #  9     0xaaf34  1      OPC=nop             
  nop                      #  10    0xaaf35  1      OPC=nop             
  nop                      #  11    0xaaf36  1      OPC=nop             
  nop                      #  12    0xaaf37  1      OPC=nop             
  nop                      #  13    0xaaf38  1      OPC=nop             
  nop                      #  14    0xaaf39  1      OPC=nop             
  nop                      #  15    0xaaf3a  1      OPC=nop             
  nop                      #  16    0xaaf3b  1      OPC=nop             
  nop                      #  17    0xaaf3c  1      OPC=nop             
  nop                      #  18    0xaaf3d  1      OPC=nop             
  nop                      #  19    0xaaf3e  1      OPC=nop             
  nop                      #  20    0xaaf3f  1      OPC=nop             
.L_aaf40:                  #        0xaaf40  0      OPC=<label>         
  popq %r11                #  21    0xaaf40  2      OPC=popq_r64_1      
  movl %edi, %edi          #  22    0xaaf42  2      OPC=movl_r32_r32    
  movb %dl, (%r15,%rdi,1)  #  23    0xaaf44  4      OPC=movb_m8_r8      
  andl $0xffffffe0, %r11d  #  24    0xaaf48  7      OPC=andl_r32_imm32  
  nop                      #  25    0xaaf4f  1      OPC=nop             
  nop                      #  26    0xaaf50  1      OPC=nop             
  nop                      #  27    0xaaf51  1      OPC=nop             
  nop                      #  28    0xaaf52  1      OPC=nop             
  addq %r15, %r11          #  29    0xaaf53  3      OPC=addq_r64_r64    
  jmpq %r11                #  30    0xaaf56  3      OPC=jmpq_r64        
  nop                      #  31    0xaaf59  1      OPC=nop             
  nop                      #  32    0xaaf5a  1      OPC=nop             
  nop                      #  33    0xaaf5b  1      OPC=nop             
  nop                      #  34    0xaaf5c  1      OPC=nop             
  nop                      #  35    0xaaf5d  1      OPC=nop             
  nop                      #  36    0xaaf5e  1      OPC=nop             
  nop                      #  37    0xaaf5f  1      OPC=nop             
  nop                      #  38    0xaaf60  1      OPC=nop             
  nop                      #  39    0xaaf61  1      OPC=nop             
  nop                      #  40    0xaaf62  1      OPC=nop             
  nop                      #  41    0xaaf63  1      OPC=nop             
  nop                      #  42    0xaaf64  1      OPC=nop             
  nop                      #  43    0xaaf65  1      OPC=nop             
  nop                      #  44    0xaaf66  1      OPC=nop             
                                                                        
.size _ZNSs9_M_assignEPcjc, .-_ZNSs9_M_assignEPcjc

