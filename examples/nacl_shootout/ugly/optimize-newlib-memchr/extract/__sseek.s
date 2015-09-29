  .text
  .globl __sseek
  .type __sseek, @function

#! file-offset 0x166c60
#! rip-offset  0x126c60
#! capacity    128 bytes

# Text                            #  Line  RIP       Bytes  Opcode              
.__sseek:                         #        0x126c60  0      OPC=<label>         
  pushq %rbx                      #  1     0x126c60  1      OPC=pushq_r64_1     
  movl %esi, %ebx                 #  2     0x126c61  2      OPC=movl_r32_r32    
  movslq %edx, %rsi               #  3     0x126c63  3      OPC=movslq_r64_r32  
  movl %ebx, %ebx                 #  4     0x126c66  2      OPC=movl_r32_r32    
  movswl 0xe(%r15,%rbx,1), %edi   #  5     0x126c68  6      OPC=movswl_r32_m16  
  movl %ecx, %edx                 #  6     0x126c6e  2      OPC=movl_r32_r32    
  nop                             #  7     0x126c70  1      OPC=nop             
  nop                             #  8     0x126c71  1      OPC=nop             
  nop                             #  9     0x126c72  1      OPC=nop             
  nop                             #  10    0x126c73  1      OPC=nop             
  nop                             #  11    0x126c74  1      OPC=nop             
  nop                             #  12    0x126c75  1      OPC=nop             
  nop                             #  13    0x126c76  1      OPC=nop             
  nop                             #  14    0x126c77  1      OPC=nop             
  nop                             #  15    0x126c78  1      OPC=nop             
  nop                             #  16    0x126c79  1      OPC=nop             
  nop                             #  17    0x126c7a  1      OPC=nop             
  callq .lseek                    #  18    0x126c7b  5      OPC=callq_label     
  cmpq $0xff, %rax                #  19    0x126c80  4      OPC=cmpq_r64_imm8   
  je .L_126cc0                    #  20    0x126c84  2      OPC=je_label        
  movl %ebx, %ebx                 #  21    0x126c86  2      OPC=movl_r32_r32    
  orw $0x1000, 0xc(%r15,%rbx,1)   #  22    0x126c88  8      OPC=orw_m16_imm16   
  movl %ebx, %ebx                 #  23    0x126c90  2      OPC=movl_r32_r32    
  movq %rax, 0x50(%r15,%rbx,1)    #  24    0x126c92  5      OPC=movq_m64_r64    
  popq %rbx                       #  25    0x126c97  1      OPC=popq_r64_1      
  popq %r11                       #  26    0x126c98  2      OPC=popq_r64_1      
  nop                             #  27    0x126c9a  1      OPC=nop             
  nop                             #  28    0x126c9b  1      OPC=nop             
  nop                             #  29    0x126c9c  1      OPC=nop             
  nop                             #  30    0x126c9d  1      OPC=nop             
  nop                             #  31    0x126c9e  1      OPC=nop             
  nop                             #  32    0x126c9f  1      OPC=nop             
  andl $0xffffffe0, %r11d         #  33    0x126ca0  7      OPC=andl_r32_imm32  
  nop                             #  34    0x126ca7  1      OPC=nop             
  nop                             #  35    0x126ca8  1      OPC=nop             
  nop                             #  36    0x126ca9  1      OPC=nop             
  nop                             #  37    0x126caa  1      OPC=nop             
  addq %r15, %r11                 #  38    0x126cab  3      OPC=addq_r64_r64    
  jmpq %r11                       #  39    0x126cae  3      OPC=jmpq_r64        
  nop                             #  40    0x126cb1  1      OPC=nop             
  nop                             #  41    0x126cb2  1      OPC=nop             
  nop                             #  42    0x126cb3  1      OPC=nop             
  nop                             #  43    0x126cb4  1      OPC=nop             
  nop                             #  44    0x126cb5  1      OPC=nop             
  nop                             #  45    0x126cb6  1      OPC=nop             
  nop                             #  46    0x126cb7  1      OPC=nop             
  nop                             #  47    0x126cb8  1      OPC=nop             
  nop                             #  48    0x126cb9  1      OPC=nop             
  nop                             #  49    0x126cba  1      OPC=nop             
  nop                             #  50    0x126cbb  1      OPC=nop             
  nop                             #  51    0x126cbc  1      OPC=nop             
  nop                             #  52    0x126cbd  1      OPC=nop             
  nop                             #  53    0x126cbe  1      OPC=nop             
  nop                             #  54    0x126cbf  1      OPC=nop             
  nop                             #  55    0x126cc0  1      OPC=nop             
  nop                             #  56    0x126cc1  1      OPC=nop             
  nop                             #  57    0x126cc2  1      OPC=nop             
  nop                             #  58    0x126cc3  1      OPC=nop             
  nop                             #  59    0x126cc4  1      OPC=nop             
  nop                             #  60    0x126cc5  1      OPC=nop             
  nop                             #  61    0x126cc6  1      OPC=nop             
.L_126cc0:                        #        0x126cc7  0      OPC=<label>         
  movl %ebx, %ebx                 #  62    0x126cc7  2      OPC=movl_r32_r32    
  andw $0xefff, 0xc(%r15,%rbx,1)  #  63    0x126cc9  8      OPC=andw_m16_imm16  
  popq %rbx                       #  64    0x126cd1  1      OPC=popq_r64_1      
  popq %r11                       #  65    0x126cd2  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d         #  66    0x126cd4  7      OPC=andl_r32_imm32  
  nop                             #  67    0x126cdb  1      OPC=nop             
  nop                             #  68    0x126cdc  1      OPC=nop             
  nop                             #  69    0x126cdd  1      OPC=nop             
  nop                             #  70    0x126cde  1      OPC=nop             
  addq %r15, %r11                 #  71    0x126cdf  3      OPC=addq_r64_r64    
  jmpq %r11                       #  72    0x126ce2  3      OPC=jmpq_r64        
  nop                             #  73    0x126ce5  1      OPC=nop             
  nop                             #  74    0x126ce6  1      OPC=nop             
  nop                             #  75    0x126ce7  1      OPC=nop             
  nop                             #  76    0x126ce8  1      OPC=nop             
  nop                             #  77    0x126ce9  1      OPC=nop             
  nop                             #  78    0x126cea  1      OPC=nop             
  nop                             #  79    0x126ceb  1      OPC=nop             
  nop                             #  80    0x126cec  1      OPC=nop             
  nop                             #  81    0x126ced  1      OPC=nop             
                                                                                
.size __sseek, .-__sseek

