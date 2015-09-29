  .text
  .globl _ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE9pbackfailEj
  .type _ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE9pbackfailEj, @function

#! file-offset 0xdc6e0
#! rip-offset  0x9c6e0
#! capacity    128 bytes

# Text                                                                #  Line  RIP      Bytes  Opcode              
._ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE9pbackfailEj:  #        0x9c6e0  0      OPC=<label>         
  cmpl $0xffffffff, %esi                                              #  1     0x9c6e0  6      OPC=cmpl_r32_imm32  
  nop                                                                 #  2     0x9c6e6  1      OPC=nop             
  nop                                                                 #  3     0x9c6e7  1      OPC=nop             
  nop                                                                 #  4     0x9c6e8  1      OPC=nop             
  pushq %rbx                                                          #  5     0x9c6e9  1      OPC=pushq_r64_1     
  movl %esi, %eax                                                     #  6     0x9c6ea  2      OPC=movl_r32_r32    
  movl %edi, %ebx                                                     #  7     0x9c6ec  2      OPC=movl_r32_r32    
  je .L_9c720                                                         #  8     0x9c6ee  2      OPC=je_label        
  movl %ebx, %ebx                                                     #  9     0x9c6f0  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rbx,1), %esi                                        #  10    0x9c6f2  5      OPC=movl_r32_m32    
  movl %eax, %edi                                                     #  11    0x9c6f7  2      OPC=movl_r32_r32    
  nop                                                                 #  12    0x9c6f9  1      OPC=nop             
  nop                                                                 #  13    0x9c6fa  1      OPC=nop             
  nop                                                                 #  14    0x9c6fb  1      OPC=nop             
  nop                                                                 #  15    0x9c6fc  1      OPC=nop             
  nop                                                                 #  16    0x9c6fd  1      OPC=nop             
  nop                                                                 #  17    0x9c6fe  1      OPC=nop             
  nop                                                                 #  18    0x9c6ff  1      OPC=nop             
  nop                                                                 #  19    0x9c700  1      OPC=nop             
  callq .ungetwc                                                      #  20    0x9c701  5      OPC=callq_label     
.L_9c700:                                                             #        0x9c706  0      OPC=<label>         
  movl %ebx, %ebx                                                     #  21    0x9c706  2      OPC=movl_r32_r32    
  movl $0xffffffff, 0x24(%r15,%rbx,1)                                 #  22    0x9c708  9      OPC=movl_m32_imm32  
  popq %rbx                                                           #  23    0x9c711  1      OPC=popq_r64_1      
  popq %r11                                                           #  24    0x9c712  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                             #  25    0x9c714  7      OPC=andl_r32_imm32  
  nop                                                                 #  26    0x9c71b  1      OPC=nop             
  nop                                                                 #  27    0x9c71c  1      OPC=nop             
  nop                                                                 #  28    0x9c71d  1      OPC=nop             
  nop                                                                 #  29    0x9c71e  1      OPC=nop             
  addq %r15, %r11                                                     #  30    0x9c71f  3      OPC=addq_r64_r64    
  jmpq %r11                                                           #  31    0x9c722  3      OPC=jmpq_r64        
  nop                                                                 #  32    0x9c725  1      OPC=nop             
  nop                                                                 #  33    0x9c726  1      OPC=nop             
  nop                                                                 #  34    0x9c727  1      OPC=nop             
  nop                                                                 #  35    0x9c728  1      OPC=nop             
  nop                                                                 #  36    0x9c729  1      OPC=nop             
  nop                                                                 #  37    0x9c72a  1      OPC=nop             
  nop                                                                 #  38    0x9c72b  1      OPC=nop             
  nop                                                                 #  39    0x9c72c  1      OPC=nop             
.L_9c720:                                                             #        0x9c72d  0      OPC=<label>         
  movl %ebx, %ebx                                                     #  40    0x9c72d  2      OPC=movl_r32_r32    
  movl 0x24(%r15,%rbx,1), %edi                                        #  41    0x9c72f  5      OPC=movl_r32_m32    
  cmpl $0xffffffff, %edi                                              #  42    0x9c734  6      OPC=cmpl_r32_imm32  
  nop                                                                 #  43    0x9c73a  1      OPC=nop             
  nop                                                                 #  44    0x9c73b  1      OPC=nop             
  nop                                                                 #  45    0x9c73c  1      OPC=nop             
  movl %edi, %eax                                                     #  46    0x9c73d  2      OPC=movl_r32_r32    
  je .L_9c700                                                         #  47    0x9c73f  2      OPC=je_label        
  movl %ebx, %ebx                                                     #  48    0x9c741  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rbx,1), %esi                                        #  49    0x9c743  5      OPC=movl_r32_m32    
  nop                                                                 #  50    0x9c748  1      OPC=nop             
  nop                                                                 #  51    0x9c749  1      OPC=nop             
  nop                                                                 #  52    0x9c74a  1      OPC=nop             
  nop                                                                 #  53    0x9c74b  1      OPC=nop             
  nop                                                                 #  54    0x9c74c  1      OPC=nop             
  nop                                                                 #  55    0x9c74d  1      OPC=nop             
  callq .ungetwc                                                      #  56    0x9c74e  5      OPC=callq_label     
  movl %ebx, %ebx                                                     #  57    0x9c753  2      OPC=movl_r32_r32    
  movl $0xffffffff, 0x24(%r15,%rbx,1)                                 #  58    0x9c755  9      OPC=movl_m32_imm32  
  popq %rbx                                                           #  59    0x9c75e  1      OPC=popq_r64_1      
  popq %r11                                                           #  60    0x9c75f  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                             #  61    0x9c761  7      OPC=andl_r32_imm32  
  nop                                                                 #  62    0x9c768  1      OPC=nop             
  nop                                                                 #  63    0x9c769  1      OPC=nop             
  nop                                                                 #  64    0x9c76a  1      OPC=nop             
  nop                                                                 #  65    0x9c76b  1      OPC=nop             
  addq %r15, %r11                                                     #  66    0x9c76c  3      OPC=addq_r64_r64    
  jmpq %r11                                                           #  67    0x9c76f  3      OPC=jmpq_r64        
  nop                                                                 #  68    0x9c772  1      OPC=nop             
  nop                                                                 #  69    0x9c773  1      OPC=nop             
  nop                                                                 #  70    0x9c774  1      OPC=nop             
  nop                                                                 #  71    0x9c775  1      OPC=nop             
  nop                                                                 #  72    0x9c776  1      OPC=nop             
  nop                                                                 #  73    0x9c777  1      OPC=nop             
  nop                                                                 #  74    0x9c778  1      OPC=nop             
  nop                                                                 #  75    0x9c779  1      OPC=nop             
                                                                                                                   
.size _ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE9pbackfailEj, .-_ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE9pbackfailEj

