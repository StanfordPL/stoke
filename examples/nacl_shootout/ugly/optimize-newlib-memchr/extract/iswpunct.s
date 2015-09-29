  .text
  .globl iswpunct
  .type iswpunct, @function

#! file-offset 0x160380
#! rip-offset  0x120380
#! capacity    128 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.iswpunct:                 #        0x120380  0      OPC=<label>         
  pushq %rbx               #  1     0x120380  1      OPC=pushq_r64_1     
  movl %edi, %ebx          #  2     0x120381  2      OPC=movl_r32_r32    
  nop                      #  3     0x120383  1      OPC=nop             
  nop                      #  4     0x120384  1      OPC=nop             
  nop                      #  5     0x120385  1      OPC=nop             
  nop                      #  6     0x120386  1      OPC=nop             
  nop                      #  7     0x120387  1      OPC=nop             
  nop                      #  8     0x120388  1      OPC=nop             
  nop                      #  9     0x120389  1      OPC=nop             
  nop                      #  10    0x12038a  1      OPC=nop             
  nop                      #  11    0x12038b  1      OPC=nop             
  nop                      #  12    0x12038c  1      OPC=nop             
  nop                      #  13    0x12038d  1      OPC=nop             
  nop                      #  14    0x12038e  1      OPC=nop             
  nop                      #  15    0x12038f  1      OPC=nop             
  nop                      #  16    0x120390  1      OPC=nop             
  nop                      #  17    0x120391  1      OPC=nop             
  nop                      #  18    0x120392  1      OPC=nop             
  nop                      #  19    0x120393  1      OPC=nop             
  nop                      #  20    0x120394  1      OPC=nop             
  nop                      #  21    0x120395  1      OPC=nop             
  nop                      #  22    0x120396  1      OPC=nop             
  nop                      #  23    0x120397  1      OPC=nop             
  nop                      #  24    0x120398  1      OPC=nop             
  nop                      #  25    0x120399  1      OPC=nop             
  nop                      #  26    0x12039a  1      OPC=nop             
  callq .iswalnum          #  27    0x12039b  5      OPC=callq_label     
  movl %eax, %edx          #  28    0x1203a0  2      OPC=movl_r32_r32    
  xorl %eax, %eax          #  29    0x1203a2  2      OPC=xorl_r32_r32    
  testl %edx, %edx         #  30    0x1203a4  2      OPC=testl_r32_r32   
  je .L_1203c0             #  31    0x1203a6  2      OPC=je_label        
  popq %rbx                #  32    0x1203a8  1      OPC=popq_r64_1      
  popq %r11                #  33    0x1203a9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  34    0x1203ab  7      OPC=andl_r32_imm32  
  nop                      #  35    0x1203b2  1      OPC=nop             
  nop                      #  36    0x1203b3  1      OPC=nop             
  nop                      #  37    0x1203b4  1      OPC=nop             
  nop                      #  38    0x1203b5  1      OPC=nop             
  addq %r15, %r11          #  39    0x1203b6  3      OPC=addq_r64_r64    
  jmpq %r11                #  40    0x1203b9  3      OPC=jmpq_r64        
  nop                      #  41    0x1203bc  1      OPC=nop             
  nop                      #  42    0x1203bd  1      OPC=nop             
  nop                      #  43    0x1203be  1      OPC=nop             
  nop                      #  44    0x1203bf  1      OPC=nop             
  nop                      #  45    0x1203c0  1      OPC=nop             
  nop                      #  46    0x1203c1  1      OPC=nop             
  nop                      #  47    0x1203c2  1      OPC=nop             
  nop                      #  48    0x1203c3  1      OPC=nop             
  nop                      #  49    0x1203c4  1      OPC=nop             
  nop                      #  50    0x1203c5  1      OPC=nop             
  nop                      #  51    0x1203c6  1      OPC=nop             
.L_1203c0:                 #        0x1203c7  0      OPC=<label>         
  movl %ebx, %edi          #  52    0x1203c7  2      OPC=movl_r32_r32    
  nop                      #  53    0x1203c9  1      OPC=nop             
  nop                      #  54    0x1203ca  1      OPC=nop             
  nop                      #  55    0x1203cb  1      OPC=nop             
  nop                      #  56    0x1203cc  1      OPC=nop             
  nop                      #  57    0x1203cd  1      OPC=nop             
  nop                      #  58    0x1203ce  1      OPC=nop             
  nop                      #  59    0x1203cf  1      OPC=nop             
  nop                      #  60    0x1203d0  1      OPC=nop             
  nop                      #  61    0x1203d1  1      OPC=nop             
  nop                      #  62    0x1203d2  1      OPC=nop             
  nop                      #  63    0x1203d3  1      OPC=nop             
  nop                      #  64    0x1203d4  1      OPC=nop             
  nop                      #  65    0x1203d5  1      OPC=nop             
  nop                      #  66    0x1203d6  1      OPC=nop             
  nop                      #  67    0x1203d7  1      OPC=nop             
  nop                      #  68    0x1203d8  1      OPC=nop             
  nop                      #  69    0x1203d9  1      OPC=nop             
  nop                      #  70    0x1203da  1      OPC=nop             
  nop                      #  71    0x1203db  1      OPC=nop             
  nop                      #  72    0x1203dc  1      OPC=nop             
  nop                      #  73    0x1203dd  1      OPC=nop             
  nop                      #  74    0x1203de  1      OPC=nop             
  nop                      #  75    0x1203df  1      OPC=nop             
  nop                      #  76    0x1203e0  1      OPC=nop             
  nop                      #  77    0x1203e1  1      OPC=nop             
  callq .iswgraph          #  78    0x1203e2  5      OPC=callq_label     
  popq %rbx                #  79    0x1203e7  1      OPC=popq_r64_1      
  popq %r11                #  80    0x1203e8  2      OPC=popq_r64_1      
  testl %eax, %eax         #  81    0x1203ea  2      OPC=testl_r32_r32   
  setne %al                #  82    0x1203ec  3      OPC=setne_r8        
  movzbl %al, %eax         #  83    0x1203ef  3      OPC=movzbl_r32_r8   
  andl $0xffffffe0, %r11d  #  84    0x1203f2  7      OPC=andl_r32_imm32  
  nop                      #  85    0x1203f9  1      OPC=nop             
  nop                      #  86    0x1203fa  1      OPC=nop             
  nop                      #  87    0x1203fb  1      OPC=nop             
  nop                      #  88    0x1203fc  1      OPC=nop             
  addq %r15, %r11          #  89    0x1203fd  3      OPC=addq_r64_r64    
  jmpq %r11                #  90    0x120400  3      OPC=jmpq_r64        
  nop                      #  91    0x120403  1      OPC=nop             
  nop                      #  92    0x120404  1      OPC=nop             
  nop                      #  93    0x120405  1      OPC=nop             
  nop                      #  94    0x120406  1      OPC=nop             
  nop                      #  95    0x120407  1      OPC=nop             
  nop                      #  96    0x120408  1      OPC=nop             
  nop                      #  97    0x120409  1      OPC=nop             
  nop                      #  98    0x12040a  1      OPC=nop             
  nop                      #  99    0x12040b  1      OPC=nop             
  nop                      #  100   0x12040c  1      OPC=nop             
  nop                      #  101   0x12040d  1      OPC=nop             
                                                                         
.size iswpunct, .-iswpunct

