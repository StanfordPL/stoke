  .text
  .globl run_knucleotide
  .type run_knucleotide, @function

#! file-offset 0x643a0
#! rip-offset  0x243a0
#! capacity    160 bytes

# Text                         #  Line  RIP      Bytes  Opcode                
.run_knucleotide:              #        0x243a0  0      OPC=<label>           
  subl $0x8, %esp              #  1     0x243a0  3      OPC=subl_r32_imm8     
  addq %r15, %rsp              #  2     0x243a3  3      OPC=addq_r64_r64      
  movl $0x1003ce57, %edx       #  3     0x243a6  5      OPC=movl_r32_imm32    
  movl 0x10054ddf(%rip), %esi  #  4     0x243ab  6      OPC=movl_r32_m32      
  movl 0x1004cd31(%rip), %edi  #  5     0x243b1  6      OPC=movl_r32_m32      
  nop                          #  6     0x243b7  1      OPC=nop               
  nop                          #  7     0x243b8  1      OPC=nop               
  nop                          #  8     0x243b9  1      OPC=nop               
  nop                          #  9     0x243ba  1      OPC=nop               
  callq .stringfile_open       #  10    0x243bb  5      OPC=callq_label       
  movl %eax, %edx              #  11    0x243c0  2      OPC=movl_r32_r32      
  movl %edx, 0x1004d05c(%rip)  #  12    0x243c2  6      OPC=movl_m32_r32      
  movl $0xffffffff, %eax       #  13    0x243c8  6      OPC=movl_r32_imm32_1  
  testq %rdx, %rdx             #  14    0x243ce  3      OPC=testq_r64_r64     
  je .L_24420                  #  15    0x243d1  2      OPC=je_label          
  nop                          #  16    0x243d3  1      OPC=nop               
  nop                          #  17    0x243d4  1      OPC=nop               
  nop                          #  18    0x243d5  1      OPC=nop               
  nop                          #  19    0x243d6  1      OPC=nop               
  nop                          #  20    0x243d7  1      OPC=nop               
  nop                          #  21    0x243d8  1      OPC=nop               
  nop                          #  22    0x243d9  1      OPC=nop               
  nop                          #  23    0x243da  1      OPC=nop               
  nop                          #  24    0x243db  1      OPC=nop               
  callq .knucleotide_main      #  25    0x243dc  5      OPC=callq_label       
  movl 0x1004d03e(%rip), %edi  #  26    0x243e1  6      OPC=movl_r32_m32      
  nop                          #  27    0x243e7  1      OPC=nop               
  nop                          #  28    0x243e8  1      OPC=nop               
  nop                          #  29    0x243e9  1      OPC=nop               
  nop                          #  30    0x243ea  1      OPC=nop               
  nop                          #  31    0x243eb  1      OPC=nop               
  nop                          #  32    0x243ec  1      OPC=nop               
  nop                          #  33    0x243ed  1      OPC=nop               
  nop                          #  34    0x243ee  1      OPC=nop               
  nop                          #  35    0x243ef  1      OPC=nop               
  nop                          #  36    0x243f0  1      OPC=nop               
  nop                          #  37    0x243f1  1      OPC=nop               
  nop                          #  38    0x243f2  1      OPC=nop               
  nop                          #  39    0x243f3  1      OPC=nop               
  nop                          #  40    0x243f4  1      OPC=nop               
  nop                          #  41    0x243f5  1      OPC=nop               
  nop                          #  42    0x243f6  1      OPC=nop               
  nop                          #  43    0x243f7  1      OPC=nop               
  nop                          #  44    0x243f8  1      OPC=nop               
  nop                          #  45    0x243f9  1      OPC=nop               
  nop                          #  46    0x243fa  1      OPC=nop               
  nop                          #  47    0x243fb  1      OPC=nop               
  callq .stringfile_close      #  48    0x243fc  5      OPC=callq_label       
  xorl %eax, %eax              #  49    0x24401  2      OPC=xorl_r32_r32      
  nop                          #  50    0x24403  1      OPC=nop               
  nop                          #  51    0x24404  1      OPC=nop               
  nop                          #  52    0x24405  1      OPC=nop               
  nop                          #  53    0x24406  1      OPC=nop               
  nop                          #  54    0x24407  1      OPC=nop               
  nop                          #  55    0x24408  1      OPC=nop               
  nop                          #  56    0x24409  1      OPC=nop               
  nop                          #  57    0x2440a  1      OPC=nop               
  nop                          #  58    0x2440b  1      OPC=nop               
  nop                          #  59    0x2440c  1      OPC=nop               
  nop                          #  60    0x2440d  1      OPC=nop               
  nop                          #  61    0x2440e  1      OPC=nop               
  nop                          #  62    0x2440f  1      OPC=nop               
  nop                          #  63    0x24410  1      OPC=nop               
  nop                          #  64    0x24411  1      OPC=nop               
  nop                          #  65    0x24412  1      OPC=nop               
  nop                          #  66    0x24413  1      OPC=nop               
  nop                          #  67    0x24414  1      OPC=nop               
  nop                          #  68    0x24415  1      OPC=nop               
  nop                          #  69    0x24416  1      OPC=nop               
  nop                          #  70    0x24417  1      OPC=nop               
  nop                          #  71    0x24418  1      OPC=nop               
  nop                          #  72    0x24419  1      OPC=nop               
  nop                          #  73    0x2441a  1      OPC=nop               
  nop                          #  74    0x2441b  1      OPC=nop               
  nop                          #  75    0x2441c  1      OPC=nop               
  nop                          #  76    0x2441d  1      OPC=nop               
  nop                          #  77    0x2441e  1      OPC=nop               
  nop                          #  78    0x2441f  1      OPC=nop               
  nop                          #  79    0x24420  1      OPC=nop               
.L_24420:                      #        0x24421  0      OPC=<label>           
  addl $0x8, %esp              #  80    0x24421  3      OPC=addl_r32_imm8     
  addq %r15, %rsp              #  81    0x24424  3      OPC=addq_r64_r64      
  popq %r11                    #  82    0x24427  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d      #  83    0x24429  7      OPC=andl_r32_imm32    
  nop                          #  84    0x24430  1      OPC=nop               
  nop                          #  85    0x24431  1      OPC=nop               
  nop                          #  86    0x24432  1      OPC=nop               
  nop                          #  87    0x24433  1      OPC=nop               
  addq %r15, %r11              #  88    0x24434  3      OPC=addq_r64_r64      
  jmpq %r11                    #  89    0x24437  3      OPC=jmpq_r64          
  nop                          #  90    0x2443a  1      OPC=nop               
  nop                          #  91    0x2443b  1      OPC=nop               
  nop                          #  92    0x2443c  1      OPC=nop               
  nop                          #  93    0x2443d  1      OPC=nop               
  nop                          #  94    0x2443e  1      OPC=nop               
  nop                          #  95    0x2443f  1      OPC=nop               
  nop                          #  96    0x24440  1      OPC=nop               
  nop                          #  97    0x24441  1      OPC=nop               
  nop                          #  98    0x24442  1      OPC=nop               
  nop                          #  99    0x24443  1      OPC=nop               
  nop                          #  100   0x24444  1      OPC=nop               
  nop                          #  101   0x24445  1      OPC=nop               
  nop                          #  102   0x24446  1      OPC=nop               
  nop                          #  103   0x24447  1      OPC=nop               
                                                                              
.size run_knucleotide, .-run_knucleotide

