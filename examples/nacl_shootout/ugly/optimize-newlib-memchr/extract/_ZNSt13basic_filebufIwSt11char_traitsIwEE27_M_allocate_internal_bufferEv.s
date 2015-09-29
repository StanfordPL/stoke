  .text
  .globl _ZNSt13basic_filebufIwSt11char_traitsIwEE27_M_allocate_internal_bufferEv
  .type _ZNSt13basic_filebufIwSt11char_traitsIwEE27_M_allocate_internal_bufferEv, @function

#! file-offset 0x12b380
#! rip-offset  0xeb380
#! capacity    128 bytes

# Text                                                                      #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_filebufIwSt11char_traitsIwEE27_M_allocate_internal_bufferEv:  #        0xeb380  0      OPC=<label>         
  pushq %rbx                                                                #  1     0xeb380  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                           #  2     0xeb381  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                                           #  3     0xeb383  2      OPC=movl_r32_r32    
  cmpb $0x0, 0x60(%r15,%rbx,1)                                              #  4     0xeb385  6      OPC=cmpb_m8_imm8    
  jne .L_eb3a0                                                              #  5     0xeb38b  2      OPC=jne_label       
  movl %ebx, %ebx                                                           #  6     0xeb38d  2      OPC=movl_r32_r32    
  movl 0x58(%r15,%rbx,1), %eax                                              #  7     0xeb38f  5      OPC=movl_r32_m32    
  testl %eax, %eax                                                          #  8     0xeb394  2      OPC=testl_r32_r32   
  je .L_eb3c0                                                               #  9     0xeb396  2      OPC=je_label        
  nop                                                                       #  10    0xeb398  1      OPC=nop             
  nop                                                                       #  11    0xeb399  1      OPC=nop             
  nop                                                                       #  12    0xeb39a  1      OPC=nop             
  nop                                                                       #  13    0xeb39b  1      OPC=nop             
  nop                                                                       #  14    0xeb39c  1      OPC=nop             
  nop                                                                       #  15    0xeb39d  1      OPC=nop             
  nop                                                                       #  16    0xeb39e  1      OPC=nop             
  nop                                                                       #  17    0xeb39f  1      OPC=nop             
.L_eb3a0:                                                                   #        0xeb3a0  0      OPC=<label>         
  popq %rbx                                                                 #  18    0xeb3a0  1      OPC=popq_r64_1      
  popq %r11                                                                 #  19    0xeb3a1  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                   #  20    0xeb3a3  7      OPC=andl_r32_imm32  
  nop                                                                       #  21    0xeb3aa  1      OPC=nop             
  nop                                                                       #  22    0xeb3ab  1      OPC=nop             
  nop                                                                       #  23    0xeb3ac  1      OPC=nop             
  nop                                                                       #  24    0xeb3ad  1      OPC=nop             
  addq %r15, %r11                                                           #  25    0xeb3ae  3      OPC=addq_r64_r64    
  jmpq %r11                                                                 #  26    0xeb3b1  3      OPC=jmpq_r64        
  nop                                                                       #  27    0xeb3b4  1      OPC=nop             
  nop                                                                       #  28    0xeb3b5  1      OPC=nop             
  nop                                                                       #  29    0xeb3b6  1      OPC=nop             
  nop                                                                       #  30    0xeb3b7  1      OPC=nop             
  nop                                                                       #  31    0xeb3b8  1      OPC=nop             
  nop                                                                       #  32    0xeb3b9  1      OPC=nop             
  nop                                                                       #  33    0xeb3ba  1      OPC=nop             
  nop                                                                       #  34    0xeb3bb  1      OPC=nop             
  nop                                                                       #  35    0xeb3bc  1      OPC=nop             
  nop                                                                       #  36    0xeb3bd  1      OPC=nop             
  nop                                                                       #  37    0xeb3be  1      OPC=nop             
  nop                                                                       #  38    0xeb3bf  1      OPC=nop             
  nop                                                                       #  39    0xeb3c0  1      OPC=nop             
  nop                                                                       #  40    0xeb3c1  1      OPC=nop             
  nop                                                                       #  41    0xeb3c2  1      OPC=nop             
  nop                                                                       #  42    0xeb3c3  1      OPC=nop             
  nop                                                                       #  43    0xeb3c4  1      OPC=nop             
  nop                                                                       #  44    0xeb3c5  1      OPC=nop             
  nop                                                                       #  45    0xeb3c6  1      OPC=nop             
.L_eb3c0:                                                                   #        0xeb3c7  0      OPC=<label>         
  movl %ebx, %ebx                                                           #  46    0xeb3c7  2      OPC=movl_r32_r32    
  movl 0x5c(%r15,%rbx,1), %edi                                              #  47    0xeb3c9  5      OPC=movl_r32_m32    
  shll $0x2, %edi                                                           #  48    0xeb3ce  3      OPC=shll_r32_imm8   
  xchgw %ax, %ax                                                            #  49    0xeb3d1  2      OPC=xchgw_ax_r16    
  nop                                                                       #  50    0xeb3d3  1      OPC=nop             
  nop                                                                       #  51    0xeb3d4  1      OPC=nop             
  nop                                                                       #  52    0xeb3d5  1      OPC=nop             
  nop                                                                       #  53    0xeb3d6  1      OPC=nop             
  nop                                                                       #  54    0xeb3d7  1      OPC=nop             
  nop                                                                       #  55    0xeb3d8  1      OPC=nop             
  nop                                                                       #  56    0xeb3d9  1      OPC=nop             
  nop                                                                       #  57    0xeb3da  1      OPC=nop             
  nop                                                                       #  58    0xeb3db  1      OPC=nop             
  nop                                                                       #  59    0xeb3dc  1      OPC=nop             
  nop                                                                       #  60    0xeb3dd  1      OPC=nop             
  nop                                                                       #  61    0xeb3de  1      OPC=nop             
  nop                                                                       #  62    0xeb3df  1      OPC=nop             
  nop                                                                       #  63    0xeb3e0  1      OPC=nop             
  nop                                                                       #  64    0xeb3e1  1      OPC=nop             
  callq ._Znaj                                                              #  65    0xeb3e2  5      OPC=callq_label     
  movl %ebx, %ebx                                                           #  66    0xeb3e7  2      OPC=movl_r32_r32    
  movb $0x1, 0x60(%r15,%rbx,1)                                              #  67    0xeb3e9  6      OPC=movb_m8_imm8    
  movl %ebx, %ebx                                                           #  68    0xeb3ef  2      OPC=movl_r32_r32    
  movl %eax, 0x58(%r15,%rbx,1)                                              #  69    0xeb3f1  5      OPC=movl_m32_r32    
  jmpq .L_eb3a0                                                             #  70    0xeb3f6  2      OPC=jmpq_label      
  nop                                                                       #  71    0xeb3f8  1      OPC=nop             
  nop                                                                       #  72    0xeb3f9  1      OPC=nop             
  nop                                                                       #  73    0xeb3fa  1      OPC=nop             
  nop                                                                       #  74    0xeb3fb  1      OPC=nop             
  nop                                                                       #  75    0xeb3fc  1      OPC=nop             
  nop                                                                       #  76    0xeb3fd  1      OPC=nop             
  nop                                                                       #  77    0xeb3fe  1      OPC=nop             
  nop                                                                       #  78    0xeb3ff  1      OPC=nop             
  nop                                                                       #  79    0xeb400  1      OPC=nop             
  nop                                                                       #  80    0xeb401  1      OPC=nop             
  nop                                                                       #  81    0xeb402  1      OPC=nop             
  nop                                                                       #  82    0xeb403  1      OPC=nop             
  nop                                                                       #  83    0xeb404  1      OPC=nop             
  nop                                                                       #  84    0xeb405  1      OPC=nop             
  nop                                                                       #  85    0xeb406  1      OPC=nop             
                                                                                                                         
.size _ZNSt13basic_filebufIwSt11char_traitsIwEE27_M_allocate_internal_bufferEv, .-_ZNSt13basic_filebufIwSt11char_traitsIwEE27_M_allocate_internal_bufferEv

