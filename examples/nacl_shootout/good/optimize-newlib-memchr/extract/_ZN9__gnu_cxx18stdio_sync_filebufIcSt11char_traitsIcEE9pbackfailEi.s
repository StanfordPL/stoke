  .text
  .globl _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE9pbackfailEi
  .type _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE9pbackfailEi, @function

#! file-offset 0xdc9a0
#! rip-offset  0x9c9a0
#! capacity    128 bytes

# Text                                                                #  Line  RIP      Bytes  Opcode              
._ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE9pbackfailEi:  #        0x9c9a0  0      OPC=<label>         
  cmpl $0xffffffff, %esi                                              #  1     0x9c9a0  6      OPC=cmpl_r32_imm32  
  nop                                                                 #  2     0x9c9a6  1      OPC=nop             
  nop                                                                 #  3     0x9c9a7  1      OPC=nop             
  nop                                                                 #  4     0x9c9a8  1      OPC=nop             
  pushq %rbx                                                          #  5     0x9c9a9  1      OPC=pushq_r64_1     
  movl %esi, %eax                                                     #  6     0x9c9aa  2      OPC=movl_r32_r32    
  movl %edi, %ebx                                                     #  7     0x9c9ac  2      OPC=movl_r32_r32    
  je .L_9c9e0                                                         #  8     0x9c9ae  2      OPC=je_label        
  movl %ebx, %ebx                                                     #  9     0x9c9b0  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rbx,1), %esi                                        #  10    0x9c9b2  5      OPC=movl_r32_m32    
  movl %eax, %edi                                                     #  11    0x9c9b7  2      OPC=movl_r32_r32    
  nop                                                                 #  12    0x9c9b9  1      OPC=nop             
  nop                                                                 #  13    0x9c9ba  1      OPC=nop             
  nop                                                                 #  14    0x9c9bb  1      OPC=nop             
  nop                                                                 #  15    0x9c9bc  1      OPC=nop             
  nop                                                                 #  16    0x9c9bd  1      OPC=nop             
  nop                                                                 #  17    0x9c9be  1      OPC=nop             
  nop                                                                 #  18    0x9c9bf  1      OPC=nop             
  nop                                                                 #  19    0x9c9c0  1      OPC=nop             
  callq .ungetc                                                       #  20    0x9c9c1  5      OPC=callq_label     
.L_9c9c0:                                                             #        0x9c9c6  0      OPC=<label>         
  movl %ebx, %ebx                                                     #  21    0x9c9c6  2      OPC=movl_r32_r32    
  movl $0xffffffff, 0x24(%r15,%rbx,1)                                 #  22    0x9c9c8  9      OPC=movl_m32_imm32  
  popq %rbx                                                           #  23    0x9c9d1  1      OPC=popq_r64_1      
  popq %r11                                                           #  24    0x9c9d2  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                             #  25    0x9c9d4  7      OPC=andl_r32_imm32  
  nop                                                                 #  26    0x9c9db  1      OPC=nop             
  nop                                                                 #  27    0x9c9dc  1      OPC=nop             
  nop                                                                 #  28    0x9c9dd  1      OPC=nop             
  nop                                                                 #  29    0x9c9de  1      OPC=nop             
  addq %r15, %r11                                                     #  30    0x9c9df  3      OPC=addq_r64_r64    
  jmpq %r11                                                           #  31    0x9c9e2  3      OPC=jmpq_r64        
  nop                                                                 #  32    0x9c9e5  1      OPC=nop             
  nop                                                                 #  33    0x9c9e6  1      OPC=nop             
  nop                                                                 #  34    0x9c9e7  1      OPC=nop             
  nop                                                                 #  35    0x9c9e8  1      OPC=nop             
  nop                                                                 #  36    0x9c9e9  1      OPC=nop             
  nop                                                                 #  37    0x9c9ea  1      OPC=nop             
  nop                                                                 #  38    0x9c9eb  1      OPC=nop             
  nop                                                                 #  39    0x9c9ec  1      OPC=nop             
.L_9c9e0:                                                             #        0x9c9ed  0      OPC=<label>         
  movl %ebx, %ebx                                                     #  40    0x9c9ed  2      OPC=movl_r32_r32    
  movl 0x24(%r15,%rbx,1), %edi                                        #  41    0x9c9ef  5      OPC=movl_r32_m32    
  cmpl $0xffffffff, %edi                                              #  42    0x9c9f4  6      OPC=cmpl_r32_imm32  
  nop                                                                 #  43    0x9c9fa  1      OPC=nop             
  nop                                                                 #  44    0x9c9fb  1      OPC=nop             
  nop                                                                 #  45    0x9c9fc  1      OPC=nop             
  movl %edi, %eax                                                     #  46    0x9c9fd  2      OPC=movl_r32_r32    
  je .L_9c9c0                                                         #  47    0x9c9ff  2      OPC=je_label        
  movl %ebx, %ebx                                                     #  48    0x9ca01  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rbx,1), %esi                                        #  49    0x9ca03  5      OPC=movl_r32_m32    
  nop                                                                 #  50    0x9ca08  1      OPC=nop             
  nop                                                                 #  51    0x9ca09  1      OPC=nop             
  nop                                                                 #  52    0x9ca0a  1      OPC=nop             
  nop                                                                 #  53    0x9ca0b  1      OPC=nop             
  nop                                                                 #  54    0x9ca0c  1      OPC=nop             
  nop                                                                 #  55    0x9ca0d  1      OPC=nop             
  callq .ungetc                                                       #  56    0x9ca0e  5      OPC=callq_label     
  movl %ebx, %ebx                                                     #  57    0x9ca13  2      OPC=movl_r32_r32    
  movl $0xffffffff, 0x24(%r15,%rbx,1)                                 #  58    0x9ca15  9      OPC=movl_m32_imm32  
  popq %rbx                                                           #  59    0x9ca1e  1      OPC=popq_r64_1      
  popq %r11                                                           #  60    0x9ca1f  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                             #  61    0x9ca21  7      OPC=andl_r32_imm32  
  nop                                                                 #  62    0x9ca28  1      OPC=nop             
  nop                                                                 #  63    0x9ca29  1      OPC=nop             
  nop                                                                 #  64    0x9ca2a  1      OPC=nop             
  nop                                                                 #  65    0x9ca2b  1      OPC=nop             
  addq %r15, %r11                                                     #  66    0x9ca2c  3      OPC=addq_r64_r64    
  jmpq %r11                                                           #  67    0x9ca2f  3      OPC=jmpq_r64        
  nop                                                                 #  68    0x9ca32  1      OPC=nop             
  nop                                                                 #  69    0x9ca33  1      OPC=nop             
  nop                                                                 #  70    0x9ca34  1      OPC=nop             
  nop                                                                 #  71    0x9ca35  1      OPC=nop             
  nop                                                                 #  72    0x9ca36  1      OPC=nop             
  nop                                                                 #  73    0x9ca37  1      OPC=nop             
  nop                                                                 #  74    0x9ca38  1      OPC=nop             
  nop                                                                 #  75    0x9ca39  1      OPC=nop             
                                                                                                                   
.size _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE9pbackfailEi, .-_ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE9pbackfailEi

