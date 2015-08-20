  .text
  .globl _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE6xsputnEPKci
  .type _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE6xsputnEPKci, @function

#! file-offset 0xdba80
#! rip-offset  0x9ba80
#! capacity    32 bytes

# Text                                                                #  Line  RIP      Bytes  Opcode              
._ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE6xsputnEPKci:  #        0x9ba80  0      OPC=<label>         
  movl %edi, %eax                                                     #  1     0x9ba80  2      OPC=movl_r32_r32    
  movl %esi, %edi                                                     #  2     0x9ba82  2      OPC=movl_r32_r32    
  movl $0x1, %esi                                                     #  3     0x9ba84  5      OPC=movl_r32_imm32  
  movl %eax, %eax                                                     #  4     0x9ba89  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rax,1), %ecx                                        #  5     0x9ba8b  5      OPC=movl_r32_m32    
  jmpq .fwrite                                                        #  6     0x9ba90  5      OPC=jmpq_label_1    
  nop                                                                 #  7     0x9ba95  1      OPC=nop             
  nop                                                                 #  8     0x9ba96  1      OPC=nop             
  nop                                                                 #  9     0x9ba97  1      OPC=nop             
  nop                                                                 #  10    0x9ba98  1      OPC=nop             
  nop                                                                 #  11    0x9ba99  1      OPC=nop             
  nop                                                                 #  12    0x9ba9a  1      OPC=nop             
  nop                                                                 #  13    0x9ba9b  1      OPC=nop             
  nop                                                                 #  14    0x9ba9c  1      OPC=nop             
  nop                                                                 #  15    0x9ba9d  1      OPC=nop             
  nop                                                                 #  16    0x9ba9e  1      OPC=nop             
  nop                                                                 #  17    0x9ba9f  1      OPC=nop             
                                                                                                                   
.size _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE6xsputnEPKci, .-_ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE6xsputnEPKci

