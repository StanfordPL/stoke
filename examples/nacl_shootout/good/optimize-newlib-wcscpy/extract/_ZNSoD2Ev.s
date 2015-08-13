  .text
  .globl _ZNSoD2Ev
  .type _ZNSoD2Ev, @function

#! file-offset 0xdcb40
#! rip-offset  0x9cb40
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
._ZNSoD2Ev:                    #        0x9cb40  0      OPC=<label>         
  movl %esi, %esi              #  1     0x9cb40  2      OPC=movl_r32_r32    
  movl %edi, %edi              #  2     0x9cb42  2      OPC=movl_r32_r32    
  movl %esi, %esi              #  3     0x9cb44  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax     #  4     0x9cb46  4      OPC=movl_r32_m32    
  movl %edi, %edi              #  5     0x9cb4a  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)     #  6     0x9cb4c  4      OPC=movl_m32_r32    
  subl $0xc, %eax              #  7     0x9cb50  3      OPC=subl_r32_imm8   
  movl %eax, %eax              #  8     0x9cb53  2      OPC=movl_r32_r32    
  addl (%r15,%rax,1), %edi     #  9     0x9cb55  4      OPC=addl_r32_m32    
  movl %esi, %esi              #  10    0x9cb59  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rsi,1), %eax  #  11    0x9cb5b  5      OPC=movl_r32_m32    
  movl %edi, %edi              #  12    0x9cb60  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)     #  13    0x9cb62  4      OPC=movl_m32_r32    
  popq %r11                    #  14    0x9cb66  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  15    0x9cb68  7      OPC=andl_r32_imm32  
  nop                          #  16    0x9cb6f  1      OPC=nop             
  nop                          #  17    0x9cb70  1      OPC=nop             
  nop                          #  18    0x9cb71  1      OPC=nop             
  nop                          #  19    0x9cb72  1      OPC=nop             
  addq %r15, %r11              #  20    0x9cb73  3      OPC=addq_r64_r64    
  jmpq %r11                    #  21    0x9cb76  3      OPC=jmpq_r64        
  nop                          #  22    0x9cb79  1      OPC=nop             
  nop                          #  23    0x9cb7a  1      OPC=nop             
  nop                          #  24    0x9cb7b  1      OPC=nop             
  nop                          #  25    0x9cb7c  1      OPC=nop             
  nop                          #  26    0x9cb7d  1      OPC=nop             
  nop                          #  27    0x9cb7e  1      OPC=nop             
  nop                          #  28    0x9cb7f  1      OPC=nop             
  nop                          #  29    0x9cb80  1      OPC=nop             
  nop                          #  30    0x9cb81  1      OPC=nop             
  nop                          #  31    0x9cb82  1      OPC=nop             
  nop                          #  32    0x9cb83  1      OPC=nop             
  nop                          #  33    0x9cb84  1      OPC=nop             
  nop                          #  34    0x9cb85  1      OPC=nop             
  nop                          #  35    0x9cb86  1      OPC=nop             
                                                                            
.size _ZNSoD2Ev, .-_ZNSoD2Ev

