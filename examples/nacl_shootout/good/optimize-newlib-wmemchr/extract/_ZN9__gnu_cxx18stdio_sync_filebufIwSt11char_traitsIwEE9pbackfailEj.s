  .text
  .globl _ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE9pbackfailEj
  .type _ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE9pbackfailEj, @function

#! file-offset 0xdbfc0
#! rip-offset  0x9bfc0
#! capacity    128 bytes

# Text                                                                #  Line  RIP      Bytes  Opcode              
._ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE9pbackfailEj:  #        0x9bfc0  0      OPC=<label>         
  cmpl $0xffffffff, %esi                                              #  1     0x9bfc0  6      OPC=cmpl_r32_imm32  
  nop                                                                 #  2     0x9bfc6  1      OPC=nop             
  nop                                                                 #  3     0x9bfc7  1      OPC=nop             
  nop                                                                 #  4     0x9bfc8  1      OPC=nop             
  pushq %rbx                                                          #  5     0x9bfc9  1      OPC=pushq_r64_1     
  movl %esi, %eax                                                     #  6     0x9bfca  2      OPC=movl_r32_r32    
  movl %edi, %ebx                                                     #  7     0x9bfcc  2      OPC=movl_r32_r32    
  je .L_9c000                                                         #  8     0x9bfce  2      OPC=je_label        
  movl %ebx, %ebx                                                     #  9     0x9bfd0  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rbx,1), %esi                                        #  10    0x9bfd2  5      OPC=movl_r32_m32    
  movl %eax, %edi                                                     #  11    0x9bfd7  2      OPC=movl_r32_r32    
  nop                                                                 #  12    0x9bfd9  1      OPC=nop             
  nop                                                                 #  13    0x9bfda  1      OPC=nop             
  nop                                                                 #  14    0x9bfdb  1      OPC=nop             
  nop                                                                 #  15    0x9bfdc  1      OPC=nop             
  nop                                                                 #  16    0x9bfdd  1      OPC=nop             
  nop                                                                 #  17    0x9bfde  1      OPC=nop             
  nop                                                                 #  18    0x9bfdf  1      OPC=nop             
  nop                                                                 #  19    0x9bfe0  1      OPC=nop             
  callq .ungetwc                                                      #  20    0x9bfe1  5      OPC=callq_label     
.L_9bfe0:                                                             #        0x9bfe6  0      OPC=<label>         
  movl %ebx, %ebx                                                     #  21    0x9bfe6  2      OPC=movl_r32_r32    
  movl $0xffffffff, 0x24(%r15,%rbx,1)                                 #  22    0x9bfe8  9      OPC=movl_m32_imm32  
  popq %rbx                                                           #  23    0x9bff1  1      OPC=popq_r64_1      
  popq %r11                                                           #  24    0x9bff2  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                             #  25    0x9bff4  7      OPC=andl_r32_imm32  
  nop                                                                 #  26    0x9bffb  1      OPC=nop             
  nop                                                                 #  27    0x9bffc  1      OPC=nop             
  nop                                                                 #  28    0x9bffd  1      OPC=nop             
  nop                                                                 #  29    0x9bffe  1      OPC=nop             
  addq %r15, %r11                                                     #  30    0x9bfff  3      OPC=addq_r64_r64    
  jmpq %r11                                                           #  31    0x9c002  3      OPC=jmpq_r64        
  nop                                                                 #  32    0x9c005  1      OPC=nop             
  nop                                                                 #  33    0x9c006  1      OPC=nop             
  nop                                                                 #  34    0x9c007  1      OPC=nop             
  nop                                                                 #  35    0x9c008  1      OPC=nop             
  nop                                                                 #  36    0x9c009  1      OPC=nop             
  nop                                                                 #  37    0x9c00a  1      OPC=nop             
  nop                                                                 #  38    0x9c00b  1      OPC=nop             
  nop                                                                 #  39    0x9c00c  1      OPC=nop             
.L_9c000:                                                             #        0x9c00d  0      OPC=<label>         
  movl %ebx, %ebx                                                     #  40    0x9c00d  2      OPC=movl_r32_r32    
  movl 0x24(%r15,%rbx,1), %edi                                        #  41    0x9c00f  5      OPC=movl_r32_m32    
  cmpl $0xffffffff, %edi                                              #  42    0x9c014  6      OPC=cmpl_r32_imm32  
  nop                                                                 #  43    0x9c01a  1      OPC=nop             
  nop                                                                 #  44    0x9c01b  1      OPC=nop             
  nop                                                                 #  45    0x9c01c  1      OPC=nop             
  movl %edi, %eax                                                     #  46    0x9c01d  2      OPC=movl_r32_r32    
  je .L_9bfe0                                                         #  47    0x9c01f  2      OPC=je_label        
  movl %ebx, %ebx                                                     #  48    0x9c021  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rbx,1), %esi                                        #  49    0x9c023  5      OPC=movl_r32_m32    
  nop                                                                 #  50    0x9c028  1      OPC=nop             
  nop                                                                 #  51    0x9c029  1      OPC=nop             
  nop                                                                 #  52    0x9c02a  1      OPC=nop             
  nop                                                                 #  53    0x9c02b  1      OPC=nop             
  nop                                                                 #  54    0x9c02c  1      OPC=nop             
  nop                                                                 #  55    0x9c02d  1      OPC=nop             
  callq .ungetwc                                                      #  56    0x9c02e  5      OPC=callq_label     
  movl %ebx, %ebx                                                     #  57    0x9c033  2      OPC=movl_r32_r32    
  movl $0xffffffff, 0x24(%r15,%rbx,1)                                 #  58    0x9c035  9      OPC=movl_m32_imm32  
  popq %rbx                                                           #  59    0x9c03e  1      OPC=popq_r64_1      
  popq %r11                                                           #  60    0x9c03f  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                             #  61    0x9c041  7      OPC=andl_r32_imm32  
  nop                                                                 #  62    0x9c048  1      OPC=nop             
  nop                                                                 #  63    0x9c049  1      OPC=nop             
  nop                                                                 #  64    0x9c04a  1      OPC=nop             
  nop                                                                 #  65    0x9c04b  1      OPC=nop             
  addq %r15, %r11                                                     #  66    0x9c04c  3      OPC=addq_r64_r64    
  jmpq %r11                                                           #  67    0x9c04f  3      OPC=jmpq_r64        
  nop                                                                 #  68    0x9c052  1      OPC=nop             
  nop                                                                 #  69    0x9c053  1      OPC=nop             
  nop                                                                 #  70    0x9c054  1      OPC=nop             
  nop                                                                 #  71    0x9c055  1      OPC=nop             
  nop                                                                 #  72    0x9c056  1      OPC=nop             
  nop                                                                 #  73    0x9c057  1      OPC=nop             
  nop                                                                 #  74    0x9c058  1      OPC=nop             
  nop                                                                 #  75    0x9c059  1      OPC=nop             
                                                                                                                   
.size _ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE9pbackfailEj, .-_ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE9pbackfailEj

