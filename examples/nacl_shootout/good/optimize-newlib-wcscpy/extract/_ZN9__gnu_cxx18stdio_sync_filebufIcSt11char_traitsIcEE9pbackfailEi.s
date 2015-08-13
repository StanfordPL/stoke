  .text
  .globl _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE9pbackfailEi
  .type _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE9pbackfailEi, @function

#! file-offset 0xdbf80
#! rip-offset  0x9bf80
#! capacity    128 bytes

# Text                                                                #  Line  RIP      Bytes  Opcode              
._ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE9pbackfailEi:  #        0x9bf80  0      OPC=<label>         
  cmpl $0xffffffff, %esi                                              #  1     0x9bf80  6      OPC=cmpl_r32_imm32  
  nop                                                                 #  2     0x9bf86  1      OPC=nop             
  nop                                                                 #  3     0x9bf87  1      OPC=nop             
  nop                                                                 #  4     0x9bf88  1      OPC=nop             
  pushq %rbx                                                          #  5     0x9bf89  1      OPC=pushq_r64_1     
  movl %esi, %eax                                                     #  6     0x9bf8a  2      OPC=movl_r32_r32    
  movl %edi, %ebx                                                     #  7     0x9bf8c  2      OPC=movl_r32_r32    
  je .L_9bfc0                                                         #  8     0x9bf8e  2      OPC=je_label        
  movl %ebx, %ebx                                                     #  9     0x9bf90  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rbx,1), %esi                                        #  10    0x9bf92  5      OPC=movl_r32_m32    
  movl %eax, %edi                                                     #  11    0x9bf97  2      OPC=movl_r32_r32    
  nop                                                                 #  12    0x9bf99  1      OPC=nop             
  nop                                                                 #  13    0x9bf9a  1      OPC=nop             
  nop                                                                 #  14    0x9bf9b  1      OPC=nop             
  nop                                                                 #  15    0x9bf9c  1      OPC=nop             
  nop                                                                 #  16    0x9bf9d  1      OPC=nop             
  nop                                                                 #  17    0x9bf9e  1      OPC=nop             
  nop                                                                 #  18    0x9bf9f  1      OPC=nop             
  nop                                                                 #  19    0x9bfa0  1      OPC=nop             
  callq .ungetc                                                       #  20    0x9bfa1  5      OPC=callq_label     
.L_9bfa0:                                                             #        0x9bfa6  0      OPC=<label>         
  movl %ebx, %ebx                                                     #  21    0x9bfa6  2      OPC=movl_r32_r32    
  movl $0xffffffff, 0x24(%r15,%rbx,1)                                 #  22    0x9bfa8  9      OPC=movl_m32_imm32  
  popq %rbx                                                           #  23    0x9bfb1  1      OPC=popq_r64_1      
  popq %r11                                                           #  24    0x9bfb2  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                             #  25    0x9bfb4  7      OPC=andl_r32_imm32  
  nop                                                                 #  26    0x9bfbb  1      OPC=nop             
  nop                                                                 #  27    0x9bfbc  1      OPC=nop             
  nop                                                                 #  28    0x9bfbd  1      OPC=nop             
  nop                                                                 #  29    0x9bfbe  1      OPC=nop             
  addq %r15, %r11                                                     #  30    0x9bfbf  3      OPC=addq_r64_r64    
  jmpq %r11                                                           #  31    0x9bfc2  3      OPC=jmpq_r64        
  nop                                                                 #  32    0x9bfc5  1      OPC=nop             
  nop                                                                 #  33    0x9bfc6  1      OPC=nop             
  nop                                                                 #  34    0x9bfc7  1      OPC=nop             
  nop                                                                 #  35    0x9bfc8  1      OPC=nop             
  nop                                                                 #  36    0x9bfc9  1      OPC=nop             
  nop                                                                 #  37    0x9bfca  1      OPC=nop             
  nop                                                                 #  38    0x9bfcb  1      OPC=nop             
  nop                                                                 #  39    0x9bfcc  1      OPC=nop             
.L_9bfc0:                                                             #        0x9bfcd  0      OPC=<label>         
  movl %ebx, %ebx                                                     #  40    0x9bfcd  2      OPC=movl_r32_r32    
  movl 0x24(%r15,%rbx,1), %edi                                        #  41    0x9bfcf  5      OPC=movl_r32_m32    
  cmpl $0xffffffff, %edi                                              #  42    0x9bfd4  6      OPC=cmpl_r32_imm32  
  nop                                                                 #  43    0x9bfda  1      OPC=nop             
  nop                                                                 #  44    0x9bfdb  1      OPC=nop             
  nop                                                                 #  45    0x9bfdc  1      OPC=nop             
  movl %edi, %eax                                                     #  46    0x9bfdd  2      OPC=movl_r32_r32    
  je .L_9bfa0                                                         #  47    0x9bfdf  2      OPC=je_label        
  movl %ebx, %ebx                                                     #  48    0x9bfe1  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rbx,1), %esi                                        #  49    0x9bfe3  5      OPC=movl_r32_m32    
  nop                                                                 #  50    0x9bfe8  1      OPC=nop             
  nop                                                                 #  51    0x9bfe9  1      OPC=nop             
  nop                                                                 #  52    0x9bfea  1      OPC=nop             
  nop                                                                 #  53    0x9bfeb  1      OPC=nop             
  nop                                                                 #  54    0x9bfec  1      OPC=nop             
  nop                                                                 #  55    0x9bfed  1      OPC=nop             
  callq .ungetc                                                       #  56    0x9bfee  5      OPC=callq_label     
  movl %ebx, %ebx                                                     #  57    0x9bff3  2      OPC=movl_r32_r32    
  movl $0xffffffff, 0x24(%r15,%rbx,1)                                 #  58    0x9bff5  9      OPC=movl_m32_imm32  
  popq %rbx                                                           #  59    0x9bffe  1      OPC=popq_r64_1      
  popq %r11                                                           #  60    0x9bfff  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                             #  61    0x9c001  7      OPC=andl_r32_imm32  
  nop                                                                 #  62    0x9c008  1      OPC=nop             
  nop                                                                 #  63    0x9c009  1      OPC=nop             
  nop                                                                 #  64    0x9c00a  1      OPC=nop             
  nop                                                                 #  65    0x9c00b  1      OPC=nop             
  addq %r15, %r11                                                     #  66    0x9c00c  3      OPC=addq_r64_r64    
  jmpq %r11                                                           #  67    0x9c00f  3      OPC=jmpq_r64        
  nop                                                                 #  68    0x9c012  1      OPC=nop             
  nop                                                                 #  69    0x9c013  1      OPC=nop             
  nop                                                                 #  70    0x9c014  1      OPC=nop             
  nop                                                                 #  71    0x9c015  1      OPC=nop             
  nop                                                                 #  72    0x9c016  1      OPC=nop             
  nop                                                                 #  73    0x9c017  1      OPC=nop             
  nop                                                                 #  74    0x9c018  1      OPC=nop             
  nop                                                                 #  75    0x9c019  1      OPC=nop             
                                                                                                                   
.size _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE9pbackfailEi, .-_ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE9pbackfailEi

