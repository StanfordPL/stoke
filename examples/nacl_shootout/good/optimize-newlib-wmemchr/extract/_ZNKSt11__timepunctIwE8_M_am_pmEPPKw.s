  .text
  .globl _ZNKSt11__timepunctIwE8_M_am_pmEPPKw
  .type _ZNKSt11__timepunctIwE8_M_am_pmEPPKw, @function

#! file-offset 0xf1220
#! rip-offset  0xb1220
#! capacity    64 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNKSt11__timepunctIwE8_M_am_pmEPPKw:  #        0xb1220  0      OPC=<label>         
  movl %edi, %edi                       #  1     0xb1220  2      OPC=movl_r32_r32    
  movl %esi, %esi                       #  2     0xb1222  2      OPC=movl_r32_r32    
  movl %edi, %edi                       #  3     0xb1224  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax           #  4     0xb1226  5      OPC=movl_r32_m32    
  popq %r11                             #  5     0xb122b  2      OPC=popq_r64_1      
  movl %eax, %eax                       #  6     0xb122d  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rax,1), %edx          #  7     0xb122f  5      OPC=movl_r32_m32    
  movl %esi, %esi                       #  8     0xb1234  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rsi,1)              #  9     0xb1236  4      OPC=movl_m32_r32    
  nop                                   #  10    0xb123a  1      OPC=nop             
  nop                                   #  11    0xb123b  1      OPC=nop             
  nop                                   #  12    0xb123c  1      OPC=nop             
  nop                                   #  13    0xb123d  1      OPC=nop             
  nop                                   #  14    0xb123e  1      OPC=nop             
  nop                                   #  15    0xb123f  1      OPC=nop             
  movl %eax, %eax                       #  16    0xb1240  2      OPC=movl_r32_r32    
  movl 0x24(%r15,%rax,1), %eax          #  17    0xb1242  5      OPC=movl_r32_m32    
  movl %esi, %esi                       #  18    0xb1247  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rsi,1)           #  19    0xb1249  5      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d               #  20    0xb124e  7      OPC=andl_r32_imm32  
  nop                                   #  21    0xb1255  1      OPC=nop             
  nop                                   #  22    0xb1256  1      OPC=nop             
  nop                                   #  23    0xb1257  1      OPC=nop             
  nop                                   #  24    0xb1258  1      OPC=nop             
  addq %r15, %r11                       #  25    0xb1259  3      OPC=addq_r64_r64    
  jmpq %r11                             #  26    0xb125c  3      OPC=jmpq_r64        
  nop                                   #  27    0xb125f  1      OPC=nop             
  nop                                   #  28    0xb1260  1      OPC=nop             
  nop                                   #  29    0xb1261  1      OPC=nop             
  nop                                   #  30    0xb1262  1      OPC=nop             
  nop                                   #  31    0xb1263  1      OPC=nop             
  nop                                   #  32    0xb1264  1      OPC=nop             
  nop                                   #  33    0xb1265  1      OPC=nop             
  nop                                   #  34    0xb1266  1      OPC=nop             
                                                                                     
.size _ZNKSt11__timepunctIwE8_M_am_pmEPPKw, .-_ZNKSt11__timepunctIwE8_M_am_pmEPPKw

