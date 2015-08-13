  .text
  .globl __sseek
  .type __sseek, @function

#! file-offset 0x166240
#! rip-offset  0x126240
#! capacity    128 bytes

# Text                            #  Line  RIP       Bytes  Opcode              
.__sseek:                         #        0x126240  0      OPC=<label>         
  pushq %rbx                      #  1     0x126240  1      OPC=pushq_r64_1     
  movl %esi, %ebx                 #  2     0x126241  2      OPC=movl_r32_r32    
  movslq %edx, %rsi               #  3     0x126243  3      OPC=movslq_r64_r32  
  movl %ebx, %ebx                 #  4     0x126246  2      OPC=movl_r32_r32    
  movswl 0xe(%r15,%rbx,1), %edi   #  5     0x126248  6      OPC=movswl_r32_m16  
  movl %ecx, %edx                 #  6     0x12624e  2      OPC=movl_r32_r32    
  nop                             #  7     0x126250  1      OPC=nop             
  nop                             #  8     0x126251  1      OPC=nop             
  nop                             #  9     0x126252  1      OPC=nop             
  nop                             #  10    0x126253  1      OPC=nop             
  nop                             #  11    0x126254  1      OPC=nop             
  nop                             #  12    0x126255  1      OPC=nop             
  nop                             #  13    0x126256  1      OPC=nop             
  nop                             #  14    0x126257  1      OPC=nop             
  nop                             #  15    0x126258  1      OPC=nop             
  nop                             #  16    0x126259  1      OPC=nop             
  nop                             #  17    0x12625a  1      OPC=nop             
  callq .lseek                    #  18    0x12625b  5      OPC=callq_label     
  cmpq $0xff, %rax                #  19    0x126260  4      OPC=cmpq_r64_imm8   
  je .L_1262a0                    #  20    0x126264  2      OPC=je_label        
  movl %ebx, %ebx                 #  21    0x126266  2      OPC=movl_r32_r32    
  orw $0x1000, 0xc(%r15,%rbx,1)   #  22    0x126268  8      OPC=orw_m16_imm16   
  movl %ebx, %ebx                 #  23    0x126270  2      OPC=movl_r32_r32    
  movq %rax, 0x50(%r15,%rbx,1)    #  24    0x126272  5      OPC=movq_m64_r64    
  popq %rbx                       #  25    0x126277  1      OPC=popq_r64_1      
  popq %r11                       #  26    0x126278  2      OPC=popq_r64_1      
  nop                             #  27    0x12627a  1      OPC=nop             
  nop                             #  28    0x12627b  1      OPC=nop             
  nop                             #  29    0x12627c  1      OPC=nop             
  nop                             #  30    0x12627d  1      OPC=nop             
  nop                             #  31    0x12627e  1      OPC=nop             
  nop                             #  32    0x12627f  1      OPC=nop             
  andl $0xffffffe0, %r11d         #  33    0x126280  7      OPC=andl_r32_imm32  
  nop                             #  34    0x126287  1      OPC=nop             
  nop                             #  35    0x126288  1      OPC=nop             
  nop                             #  36    0x126289  1      OPC=nop             
  nop                             #  37    0x12628a  1      OPC=nop             
  addq %r15, %r11                 #  38    0x12628b  3      OPC=addq_r64_r64    
  jmpq %r11                       #  39    0x12628e  3      OPC=jmpq_r64        
  nop                             #  40    0x126291  1      OPC=nop             
  nop                             #  41    0x126292  1      OPC=nop             
  nop                             #  42    0x126293  1      OPC=nop             
  nop                             #  43    0x126294  1      OPC=nop             
  nop                             #  44    0x126295  1      OPC=nop             
  nop                             #  45    0x126296  1      OPC=nop             
  nop                             #  46    0x126297  1      OPC=nop             
  nop                             #  47    0x126298  1      OPC=nop             
  nop                             #  48    0x126299  1      OPC=nop             
  nop                             #  49    0x12629a  1      OPC=nop             
  nop                             #  50    0x12629b  1      OPC=nop             
  nop                             #  51    0x12629c  1      OPC=nop             
  nop                             #  52    0x12629d  1      OPC=nop             
  nop                             #  53    0x12629e  1      OPC=nop             
  nop                             #  54    0x12629f  1      OPC=nop             
  nop                             #  55    0x1262a0  1      OPC=nop             
  nop                             #  56    0x1262a1  1      OPC=nop             
  nop                             #  57    0x1262a2  1      OPC=nop             
  nop                             #  58    0x1262a3  1      OPC=nop             
  nop                             #  59    0x1262a4  1      OPC=nop             
  nop                             #  60    0x1262a5  1      OPC=nop             
  nop                             #  61    0x1262a6  1      OPC=nop             
.L_1262a0:                        #        0x1262a7  0      OPC=<label>         
  movl %ebx, %ebx                 #  62    0x1262a7  2      OPC=movl_r32_r32    
  andw $0xefff, 0xc(%r15,%rbx,1)  #  63    0x1262a9  8      OPC=andw_m16_imm16  
  popq %rbx                       #  64    0x1262b1  1      OPC=popq_r64_1      
  popq %r11                       #  65    0x1262b2  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d         #  66    0x1262b4  7      OPC=andl_r32_imm32  
  nop                             #  67    0x1262bb  1      OPC=nop             
  nop                             #  68    0x1262bc  1      OPC=nop             
  nop                             #  69    0x1262bd  1      OPC=nop             
  nop                             #  70    0x1262be  1      OPC=nop             
  addq %r15, %r11                 #  71    0x1262bf  3      OPC=addq_r64_r64    
  jmpq %r11                       #  72    0x1262c2  3      OPC=jmpq_r64        
  nop                             #  73    0x1262c5  1      OPC=nop             
  nop                             #  74    0x1262c6  1      OPC=nop             
  nop                             #  75    0x1262c7  1      OPC=nop             
  nop                             #  76    0x1262c8  1      OPC=nop             
  nop                             #  77    0x1262c9  1      OPC=nop             
  nop                             #  78    0x1262ca  1      OPC=nop             
  nop                             #  79    0x1262cb  1      OPC=nop             
  nop                             #  80    0x1262cc  1      OPC=nop             
  nop                             #  81    0x1262cd  1      OPC=nop             
                                                                                
.size __sseek, .-__sseek

