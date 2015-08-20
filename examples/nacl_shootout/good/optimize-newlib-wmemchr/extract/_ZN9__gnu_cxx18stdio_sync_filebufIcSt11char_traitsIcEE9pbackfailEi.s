  .text
  .globl _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE9pbackfailEi
  .type _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE9pbackfailEi, @function

#! file-offset 0xdc280
#! rip-offset  0x9c280
#! capacity    128 bytes

# Text                                                                #  Line  RIP      Bytes  Opcode              
._ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE9pbackfailEi:  #        0x9c280  0      OPC=<label>         
  cmpl $0xffffffff, %esi                                              #  1     0x9c280  6      OPC=cmpl_r32_imm32  
  nop                                                                 #  2     0x9c286  1      OPC=nop             
  nop                                                                 #  3     0x9c287  1      OPC=nop             
  nop                                                                 #  4     0x9c288  1      OPC=nop             
  pushq %rbx                                                          #  5     0x9c289  1      OPC=pushq_r64_1     
  movl %esi, %eax                                                     #  6     0x9c28a  2      OPC=movl_r32_r32    
  movl %edi, %ebx                                                     #  7     0x9c28c  2      OPC=movl_r32_r32    
  je .L_9c2c0                                                         #  8     0x9c28e  2      OPC=je_label        
  movl %ebx, %ebx                                                     #  9     0x9c290  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rbx,1), %esi                                        #  10    0x9c292  5      OPC=movl_r32_m32    
  movl %eax, %edi                                                     #  11    0x9c297  2      OPC=movl_r32_r32    
  nop                                                                 #  12    0x9c299  1      OPC=nop             
  nop                                                                 #  13    0x9c29a  1      OPC=nop             
  nop                                                                 #  14    0x9c29b  1      OPC=nop             
  nop                                                                 #  15    0x9c29c  1      OPC=nop             
  nop                                                                 #  16    0x9c29d  1      OPC=nop             
  nop                                                                 #  17    0x9c29e  1      OPC=nop             
  nop                                                                 #  18    0x9c29f  1      OPC=nop             
  nop                                                                 #  19    0x9c2a0  1      OPC=nop             
  callq .ungetc                                                       #  20    0x9c2a1  5      OPC=callq_label     
.L_9c2a0:                                                             #        0x9c2a6  0      OPC=<label>         
  movl %ebx, %ebx                                                     #  21    0x9c2a6  2      OPC=movl_r32_r32    
  movl $0xffffffff, 0x24(%r15,%rbx,1)                                 #  22    0x9c2a8  9      OPC=movl_m32_imm32  
  popq %rbx                                                           #  23    0x9c2b1  1      OPC=popq_r64_1      
  popq %r11                                                           #  24    0x9c2b2  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                             #  25    0x9c2b4  7      OPC=andl_r32_imm32  
  nop                                                                 #  26    0x9c2bb  1      OPC=nop             
  nop                                                                 #  27    0x9c2bc  1      OPC=nop             
  nop                                                                 #  28    0x9c2bd  1      OPC=nop             
  nop                                                                 #  29    0x9c2be  1      OPC=nop             
  addq %r15, %r11                                                     #  30    0x9c2bf  3      OPC=addq_r64_r64    
  jmpq %r11                                                           #  31    0x9c2c2  3      OPC=jmpq_r64        
  nop                                                                 #  32    0x9c2c5  1      OPC=nop             
  nop                                                                 #  33    0x9c2c6  1      OPC=nop             
  nop                                                                 #  34    0x9c2c7  1      OPC=nop             
  nop                                                                 #  35    0x9c2c8  1      OPC=nop             
  nop                                                                 #  36    0x9c2c9  1      OPC=nop             
  nop                                                                 #  37    0x9c2ca  1      OPC=nop             
  nop                                                                 #  38    0x9c2cb  1      OPC=nop             
  nop                                                                 #  39    0x9c2cc  1      OPC=nop             
.L_9c2c0:                                                             #        0x9c2cd  0      OPC=<label>         
  movl %ebx, %ebx                                                     #  40    0x9c2cd  2      OPC=movl_r32_r32    
  movl 0x24(%r15,%rbx,1), %edi                                        #  41    0x9c2cf  5      OPC=movl_r32_m32    
  cmpl $0xffffffff, %edi                                              #  42    0x9c2d4  6      OPC=cmpl_r32_imm32  
  nop                                                                 #  43    0x9c2da  1      OPC=nop             
  nop                                                                 #  44    0x9c2db  1      OPC=nop             
  nop                                                                 #  45    0x9c2dc  1      OPC=nop             
  movl %edi, %eax                                                     #  46    0x9c2dd  2      OPC=movl_r32_r32    
  je .L_9c2a0                                                         #  47    0x9c2df  2      OPC=je_label        
  movl %ebx, %ebx                                                     #  48    0x9c2e1  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rbx,1), %esi                                        #  49    0x9c2e3  5      OPC=movl_r32_m32    
  nop                                                                 #  50    0x9c2e8  1      OPC=nop             
  nop                                                                 #  51    0x9c2e9  1      OPC=nop             
  nop                                                                 #  52    0x9c2ea  1      OPC=nop             
  nop                                                                 #  53    0x9c2eb  1      OPC=nop             
  nop                                                                 #  54    0x9c2ec  1      OPC=nop             
  nop                                                                 #  55    0x9c2ed  1      OPC=nop             
  callq .ungetc                                                       #  56    0x9c2ee  5      OPC=callq_label     
  movl %ebx, %ebx                                                     #  57    0x9c2f3  2      OPC=movl_r32_r32    
  movl $0xffffffff, 0x24(%r15,%rbx,1)                                 #  58    0x9c2f5  9      OPC=movl_m32_imm32  
  popq %rbx                                                           #  59    0x9c2fe  1      OPC=popq_r64_1      
  popq %r11                                                           #  60    0x9c2ff  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                             #  61    0x9c301  7      OPC=andl_r32_imm32  
  nop                                                                 #  62    0x9c308  1      OPC=nop             
  nop                                                                 #  63    0x9c309  1      OPC=nop             
  nop                                                                 #  64    0x9c30a  1      OPC=nop             
  nop                                                                 #  65    0x9c30b  1      OPC=nop             
  addq %r15, %r11                                                     #  66    0x9c30c  3      OPC=addq_r64_r64    
  jmpq %r11                                                           #  67    0x9c30f  3      OPC=jmpq_r64        
  nop                                                                 #  68    0x9c312  1      OPC=nop             
  nop                                                                 #  69    0x9c313  1      OPC=nop             
  nop                                                                 #  70    0x9c314  1      OPC=nop             
  nop                                                                 #  71    0x9c315  1      OPC=nop             
  nop                                                                 #  72    0x9c316  1      OPC=nop             
  nop                                                                 #  73    0x9c317  1      OPC=nop             
  nop                                                                 #  74    0x9c318  1      OPC=nop             
  nop                                                                 #  75    0x9c319  1      OPC=nop             
                                                                                                                   
.size _ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE9pbackfailEi, .-_ZN9__gnu_cxx18stdio_sync_filebufIcSt11char_traitsIcEE9pbackfailEi

