  .text
  .globl _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE6xsputnEPKci
  .type _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE6xsputnEPKci, @function

#! file-offset 0xdb780
#! rip-offset  0x9b780
#! capacity    32 bytes

# Text                                                                #  Line  RIP      Bytes  Opcode              
._ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE6xsputnEPKci:  #        0x9b780  0      OPC=<label>         
  movl %edi, %eax                                                     #  1     0x9b780  2      OPC=movl_r32_r32    
  movl %esi, %edi                                                     #  2     0x9b782  2      OPC=movl_r32_r32    
  movl $0x1, %esi                                                     #  3     0x9b784  5      OPC=movl_r32_imm32  
  movl %eax, %eax                                                     #  4     0x9b789  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rax,1), %ecx                                        #  5     0x9b78b  5      OPC=movl_r32_m32    
  jmpq .fwrite                                                        #  6     0x9b790  5      OPC=jmpq_label_1    
  nop                                                                 #  7     0x9b795  1      OPC=nop             
  nop                                                                 #  8     0x9b796  1      OPC=nop             
  nop                                                                 #  9     0x9b797  1      OPC=nop             
  nop                                                                 #  10    0x9b798  1      OPC=nop             
  nop                                                                 #  11    0x9b799  1      OPC=nop             
  nop                                                                 #  12    0x9b79a  1      OPC=nop             
  nop                                                                 #  13    0x9b79b  1      OPC=nop             
  nop                                                                 #  14    0x9b79c  1      OPC=nop             
  nop                                                                 #  15    0x9b79d  1      OPC=nop             
  nop                                                                 #  16    0x9b79e  1      OPC=nop             
  nop                                                                 #  17    0x9b79f  1      OPC=nop             
                                                                                                                   
.size _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE6xsputnEPKci, .-_ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE6xsputnEPKci

