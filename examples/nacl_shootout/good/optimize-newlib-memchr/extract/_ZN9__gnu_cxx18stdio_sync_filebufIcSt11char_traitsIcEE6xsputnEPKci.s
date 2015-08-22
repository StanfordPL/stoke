  .text
  .globl _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE6xsputnEPKci
  .type _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE6xsputnEPKci, @function

#! file-offset 0xdc1a0
#! rip-offset  0x9c1a0
#! capacity    32 bytes

# Text                                                                #  Line  RIP      Bytes  Opcode              
._ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE6xsputnEPKci:  #        0x9c1a0  0      OPC=<label>         
  movl %edi, %eax                                                     #  1     0x9c1a0  2      OPC=movl_r32_r32    
  movl %esi, %edi                                                     #  2     0x9c1a2  2      OPC=movl_r32_r32    
  movl $0x1, %esi                                                     #  3     0x9c1a4  5      OPC=movl_r32_imm32  
  movl %eax, %eax                                                     #  4     0x9c1a9  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rax,1), %ecx                                        #  5     0x9c1ab  5      OPC=movl_r32_m32    
  jmpq .fwrite                                                        #  6     0x9c1b0  5      OPC=jmpq_label_1    
  nop                                                                 #  7     0x9c1b5  1      OPC=nop             
  nop                                                                 #  8     0x9c1b6  1      OPC=nop             
  nop                                                                 #  9     0x9c1b7  1      OPC=nop             
  nop                                                                 #  10    0x9c1b8  1      OPC=nop             
  nop                                                                 #  11    0x9c1b9  1      OPC=nop             
  nop                                                                 #  12    0x9c1ba  1      OPC=nop             
  nop                                                                 #  13    0x9c1bb  1      OPC=nop             
  nop                                                                 #  14    0x9c1bc  1      OPC=nop             
  nop                                                                 #  15    0x9c1bd  1      OPC=nop             
  nop                                                                 #  16    0x9c1be  1      OPC=nop             
  nop                                                                 #  17    0x9c1bf  1      OPC=nop             
                                                                                                                   
.size _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE6xsputnEPKci, .-_ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE6xsputnEPKci

