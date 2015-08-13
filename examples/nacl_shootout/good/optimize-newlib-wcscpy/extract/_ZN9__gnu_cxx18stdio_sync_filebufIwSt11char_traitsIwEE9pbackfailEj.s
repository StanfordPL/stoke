  .text
  .globl _ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE9pbackfailEj
  .type _ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE9pbackfailEj, @function

#! file-offset 0xdbcc0
#! rip-offset  0x9bcc0
#! capacity    128 bytes

# Text                                                                #  Line  RIP      Bytes  Opcode              
._ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE9pbackfailEj:  #        0x9bcc0  0      OPC=<label>         
  cmpl $0xffffffff, %esi                                              #  1     0x9bcc0  6      OPC=cmpl_r32_imm32  
  nop                                                                 #  2     0x9bcc6  1      OPC=nop             
  nop                                                                 #  3     0x9bcc7  1      OPC=nop             
  nop                                                                 #  4     0x9bcc8  1      OPC=nop             
  pushq %rbx                                                          #  5     0x9bcc9  1      OPC=pushq_r64_1     
  movl %esi, %eax                                                     #  6     0x9bcca  2      OPC=movl_r32_r32    
  movl %edi, %ebx                                                     #  7     0x9bccc  2      OPC=movl_r32_r32    
  je .L_9bd00                                                         #  8     0x9bcce  2      OPC=je_label        
  movl %ebx, %ebx                                                     #  9     0x9bcd0  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rbx,1), %esi                                        #  10    0x9bcd2  5      OPC=movl_r32_m32    
  movl %eax, %edi                                                     #  11    0x9bcd7  2      OPC=movl_r32_r32    
  nop                                                                 #  12    0x9bcd9  1      OPC=nop             
  nop                                                                 #  13    0x9bcda  1      OPC=nop             
  nop                                                                 #  14    0x9bcdb  1      OPC=nop             
  nop                                                                 #  15    0x9bcdc  1      OPC=nop             
  nop                                                                 #  16    0x9bcdd  1      OPC=nop             
  nop                                                                 #  17    0x9bcde  1      OPC=nop             
  nop                                                                 #  18    0x9bcdf  1      OPC=nop             
  nop                                                                 #  19    0x9bce0  1      OPC=nop             
  callq .ungetwc                                                      #  20    0x9bce1  5      OPC=callq_label     
.L_9bce0:                                                             #        0x9bce6  0      OPC=<label>         
  movl %ebx, %ebx                                                     #  21    0x9bce6  2      OPC=movl_r32_r32    
  movl $0xffffffff, 0x24(%r15,%rbx,1)                                 #  22    0x9bce8  9      OPC=movl_m32_imm32  
  popq %rbx                                                           #  23    0x9bcf1  1      OPC=popq_r64_1      
  popq %r11                                                           #  24    0x9bcf2  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                             #  25    0x9bcf4  7      OPC=andl_r32_imm32  
  nop                                                                 #  26    0x9bcfb  1      OPC=nop             
  nop                                                                 #  27    0x9bcfc  1      OPC=nop             
  nop                                                                 #  28    0x9bcfd  1      OPC=nop             
  nop                                                                 #  29    0x9bcfe  1      OPC=nop             
  addq %r15, %r11                                                     #  30    0x9bcff  3      OPC=addq_r64_r64    
  jmpq %r11                                                           #  31    0x9bd02  3      OPC=jmpq_r64        
  nop                                                                 #  32    0x9bd05  1      OPC=nop             
  nop                                                                 #  33    0x9bd06  1      OPC=nop             
  nop                                                                 #  34    0x9bd07  1      OPC=nop             
  nop                                                                 #  35    0x9bd08  1      OPC=nop             
  nop                                                                 #  36    0x9bd09  1      OPC=nop             
  nop                                                                 #  37    0x9bd0a  1      OPC=nop             
  nop                                                                 #  38    0x9bd0b  1      OPC=nop             
  nop                                                                 #  39    0x9bd0c  1      OPC=nop             
.L_9bd00:                                                             #        0x9bd0d  0      OPC=<label>         
  movl %ebx, %ebx                                                     #  40    0x9bd0d  2      OPC=movl_r32_r32    
  movl 0x24(%r15,%rbx,1), %edi                                        #  41    0x9bd0f  5      OPC=movl_r32_m32    
  cmpl $0xffffffff, %edi                                              #  42    0x9bd14  6      OPC=cmpl_r32_imm32  
  nop                                                                 #  43    0x9bd1a  1      OPC=nop             
  nop                                                                 #  44    0x9bd1b  1      OPC=nop             
  nop                                                                 #  45    0x9bd1c  1      OPC=nop             
  movl %edi, %eax                                                     #  46    0x9bd1d  2      OPC=movl_r32_r32    
  je .L_9bce0                                                         #  47    0x9bd1f  2      OPC=je_label        
  movl %ebx, %ebx                                                     #  48    0x9bd21  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rbx,1), %esi                                        #  49    0x9bd23  5      OPC=movl_r32_m32    
  nop                                                                 #  50    0x9bd28  1      OPC=nop             
  nop                                                                 #  51    0x9bd29  1      OPC=nop             
  nop                                                                 #  52    0x9bd2a  1      OPC=nop             
  nop                                                                 #  53    0x9bd2b  1      OPC=nop             
  nop                                                                 #  54    0x9bd2c  1      OPC=nop             
  nop                                                                 #  55    0x9bd2d  1      OPC=nop             
  callq .ungetwc                                                      #  56    0x9bd2e  5      OPC=callq_label     
  movl %ebx, %ebx                                                     #  57    0x9bd33  2      OPC=movl_r32_r32    
  movl $0xffffffff, 0x24(%r15,%rbx,1)                                 #  58    0x9bd35  9      OPC=movl_m32_imm32  
  popq %rbx                                                           #  59    0x9bd3e  1      OPC=popq_r64_1      
  popq %r11                                                           #  60    0x9bd3f  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                             #  61    0x9bd41  7      OPC=andl_r32_imm32  
  nop                                                                 #  62    0x9bd48  1      OPC=nop             
  nop                                                                 #  63    0x9bd49  1      OPC=nop             
  nop                                                                 #  64    0x9bd4a  1      OPC=nop             
  nop                                                                 #  65    0x9bd4b  1      OPC=nop             
  addq %r15, %r11                                                     #  66    0x9bd4c  3      OPC=addq_r64_r64    
  jmpq %r11                                                           #  67    0x9bd4f  3      OPC=jmpq_r64        
  nop                                                                 #  68    0x9bd52  1      OPC=nop             
  nop                                                                 #  69    0x9bd53  1      OPC=nop             
  nop                                                                 #  70    0x9bd54  1      OPC=nop             
  nop                                                                 #  71    0x9bd55  1      OPC=nop             
  nop                                                                 #  72    0x9bd56  1      OPC=nop             
  nop                                                                 #  73    0x9bd57  1      OPC=nop             
  nop                                                                 #  74    0x9bd58  1      OPC=nop             
  nop                                                                 #  75    0x9bd59  1      OPC=nop             
                                                                                                                   
.size _ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE9pbackfailEj, .-_ZN9__gnu_cxx18stdio_sync_filebufIwSt11char_traitsIwEE9pbackfailEj

