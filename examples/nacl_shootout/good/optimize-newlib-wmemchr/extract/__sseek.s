  .text
  .globl __sseek
  .type __sseek, @function

#! file-offset 0x166540
#! rip-offset  0x126540
#! capacity    128 bytes

# Text                            #  Line  RIP       Bytes  Opcode              
.__sseek:                         #        0x126540  0      OPC=<label>         
  pushq %rbx                      #  1     0x126540  1      OPC=pushq_r64_1     
  movl %esi, %ebx                 #  2     0x126541  2      OPC=movl_r32_r32    
  movslq %edx, %rsi               #  3     0x126543  3      OPC=movslq_r64_r32  
  movl %ebx, %ebx                 #  4     0x126546  2      OPC=movl_r32_r32    
  movswl 0xe(%r15,%rbx,1), %edi   #  5     0x126548  6      OPC=movswl_r32_m16  
  movl %ecx, %edx                 #  6     0x12654e  2      OPC=movl_r32_r32    
  nop                             #  7     0x126550  1      OPC=nop             
  nop                             #  8     0x126551  1      OPC=nop             
  nop                             #  9     0x126552  1      OPC=nop             
  nop                             #  10    0x126553  1      OPC=nop             
  nop                             #  11    0x126554  1      OPC=nop             
  nop                             #  12    0x126555  1      OPC=nop             
  nop                             #  13    0x126556  1      OPC=nop             
  nop                             #  14    0x126557  1      OPC=nop             
  nop                             #  15    0x126558  1      OPC=nop             
  nop                             #  16    0x126559  1      OPC=nop             
  nop                             #  17    0x12655a  1      OPC=nop             
  callq .lseek                    #  18    0x12655b  5      OPC=callq_label     
  cmpq $0xff, %rax                #  19    0x126560  4      OPC=cmpq_r64_imm8   
  je .L_1265a0                    #  20    0x126564  2      OPC=je_label        
  movl %ebx, %ebx                 #  21    0x126566  2      OPC=movl_r32_r32    
  orw $0x1000, 0xc(%r15,%rbx,1)   #  22    0x126568  8      OPC=orw_m16_imm16   
  movl %ebx, %ebx                 #  23    0x126570  2      OPC=movl_r32_r32    
  movq %rax, 0x50(%r15,%rbx,1)    #  24    0x126572  5      OPC=movq_m64_r64    
  popq %rbx                       #  25    0x126577  1      OPC=popq_r64_1      
  popq %r11                       #  26    0x126578  2      OPC=popq_r64_1      
  nop                             #  27    0x12657a  1      OPC=nop             
  nop                             #  28    0x12657b  1      OPC=nop             
  nop                             #  29    0x12657c  1      OPC=nop             
  nop                             #  30    0x12657d  1      OPC=nop             
  nop                             #  31    0x12657e  1      OPC=nop             
  nop                             #  32    0x12657f  1      OPC=nop             
  andl $0xffffffe0, %r11d         #  33    0x126580  7      OPC=andl_r32_imm32  
  nop                             #  34    0x126587  1      OPC=nop             
  nop                             #  35    0x126588  1      OPC=nop             
  nop                             #  36    0x126589  1      OPC=nop             
  nop                             #  37    0x12658a  1      OPC=nop             
  addq %r15, %r11                 #  38    0x12658b  3      OPC=addq_r64_r64    
  jmpq %r11                       #  39    0x12658e  3      OPC=jmpq_r64        
  nop                             #  40    0x126591  1      OPC=nop             
  nop                             #  41    0x126592  1      OPC=nop             
  nop                             #  42    0x126593  1      OPC=nop             
  nop                             #  43    0x126594  1      OPC=nop             
  nop                             #  44    0x126595  1      OPC=nop             
  nop                             #  45    0x126596  1      OPC=nop             
  nop                             #  46    0x126597  1      OPC=nop             
  nop                             #  47    0x126598  1      OPC=nop             
  nop                             #  48    0x126599  1      OPC=nop             
  nop                             #  49    0x12659a  1      OPC=nop             
  nop                             #  50    0x12659b  1      OPC=nop             
  nop                             #  51    0x12659c  1      OPC=nop             
  nop                             #  52    0x12659d  1      OPC=nop             
  nop                             #  53    0x12659e  1      OPC=nop             
  nop                             #  54    0x12659f  1      OPC=nop             
  nop                             #  55    0x1265a0  1      OPC=nop             
  nop                             #  56    0x1265a1  1      OPC=nop             
  nop                             #  57    0x1265a2  1      OPC=nop             
  nop                             #  58    0x1265a3  1      OPC=nop             
  nop                             #  59    0x1265a4  1      OPC=nop             
  nop                             #  60    0x1265a5  1      OPC=nop             
  nop                             #  61    0x1265a6  1      OPC=nop             
.L_1265a0:                        #        0x1265a7  0      OPC=<label>         
  movl %ebx, %ebx                 #  62    0x1265a7  2      OPC=movl_r32_r32    
  andw $0xefff, 0xc(%r15,%rbx,1)  #  63    0x1265a9  8      OPC=andw_m16_imm16  
  popq %rbx                       #  64    0x1265b1  1      OPC=popq_r64_1      
  popq %r11                       #  65    0x1265b2  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d         #  66    0x1265b4  7      OPC=andl_r32_imm32  
  nop                             #  67    0x1265bb  1      OPC=nop             
  nop                             #  68    0x1265bc  1      OPC=nop             
  nop                             #  69    0x1265bd  1      OPC=nop             
  nop                             #  70    0x1265be  1      OPC=nop             
  addq %r15, %r11                 #  71    0x1265bf  3      OPC=addq_r64_r64    
  jmpq %r11                       #  72    0x1265c2  3      OPC=jmpq_r64        
  nop                             #  73    0x1265c5  1      OPC=nop             
  nop                             #  74    0x1265c6  1      OPC=nop             
  nop                             #  75    0x1265c7  1      OPC=nop             
  nop                             #  76    0x1265c8  1      OPC=nop             
  nop                             #  77    0x1265c9  1      OPC=nop             
  nop                             #  78    0x1265ca  1      OPC=nop             
  nop                             #  79    0x1265cb  1      OPC=nop             
  nop                             #  80    0x1265cc  1      OPC=nop             
  nop                             #  81    0x1265cd  1      OPC=nop             
                                                                                
.size __sseek, .-__sseek

