  .text
  .globl run_knucleotide
  .type run_knucleotide, @function

#! file-offset 0x64920
#! rip-offset  0x24920
#! capacity    160 bytes

# Text                         #  Line  RIP      Bytes  Opcode                
.run_knucleotide:              #        0x24920  0      OPC=<label>           
  subl $0x8, %esp              #  1     0x24920  3      OPC=subl_r32_imm8     
  addq %r15, %rsp              #  2     0x24923  3      OPC=addq_r64_r64      
  movl $0x1003ce57, %edx       #  3     0x24926  5      OPC=movl_r32_imm32    
  movl 0x1005485f(%rip), %esi  #  4     0x2492b  6      OPC=movl_r32_m32      
  movl 0x1004c7b1(%rip), %edi  #  5     0x24931  6      OPC=movl_r32_m32      
  nop                          #  6     0x24937  1      OPC=nop               
  nop                          #  7     0x24938  1      OPC=nop               
  nop                          #  8     0x24939  1      OPC=nop               
  nop                          #  9     0x2493a  1      OPC=nop               
  callq .stringfile_open       #  10    0x2493b  5      OPC=callq_label       
  movl %eax, %edx              #  11    0x24940  2      OPC=movl_r32_r32      
  movl %edx, 0x1004cadc(%rip)  #  12    0x24942  6      OPC=movl_m32_r32      
  movl $0xffffffff, %eax       #  13    0x24948  6      OPC=movl_r32_imm32_1  
  testq %rdx, %rdx             #  14    0x2494e  3      OPC=testq_r64_r64     
  je .L_249a0                  #  15    0x24951  2      OPC=je_label          
  nop                          #  16    0x24953  1      OPC=nop               
  nop                          #  17    0x24954  1      OPC=nop               
  nop                          #  18    0x24955  1      OPC=nop               
  nop                          #  19    0x24956  1      OPC=nop               
  nop                          #  20    0x24957  1      OPC=nop               
  nop                          #  21    0x24958  1      OPC=nop               
  nop                          #  22    0x24959  1      OPC=nop               
  nop                          #  23    0x2495a  1      OPC=nop               
  nop                          #  24    0x2495b  1      OPC=nop               
  callq .knucleotide_main      #  25    0x2495c  5      OPC=callq_label       
  movl 0x1004cabe(%rip), %edi  #  26    0x24961  6      OPC=movl_r32_m32      
  nop                          #  27    0x24967  1      OPC=nop               
  nop                          #  28    0x24968  1      OPC=nop               
  nop                          #  29    0x24969  1      OPC=nop               
  nop                          #  30    0x2496a  1      OPC=nop               
  nop                          #  31    0x2496b  1      OPC=nop               
  nop                          #  32    0x2496c  1      OPC=nop               
  nop                          #  33    0x2496d  1      OPC=nop               
  nop                          #  34    0x2496e  1      OPC=nop               
  nop                          #  35    0x2496f  1      OPC=nop               
  nop                          #  36    0x24970  1      OPC=nop               
  nop                          #  37    0x24971  1      OPC=nop               
  nop                          #  38    0x24972  1      OPC=nop               
  nop                          #  39    0x24973  1      OPC=nop               
  nop                          #  40    0x24974  1      OPC=nop               
  nop                          #  41    0x24975  1      OPC=nop               
  nop                          #  42    0x24976  1      OPC=nop               
  nop                          #  43    0x24977  1      OPC=nop               
  nop                          #  44    0x24978  1      OPC=nop               
  nop                          #  45    0x24979  1      OPC=nop               
  nop                          #  46    0x2497a  1      OPC=nop               
  nop                          #  47    0x2497b  1      OPC=nop               
  callq .stringfile_close      #  48    0x2497c  5      OPC=callq_label       
  xorl %eax, %eax              #  49    0x24981  2      OPC=xorl_r32_r32      
  nop                          #  50    0x24983  1      OPC=nop               
  nop                          #  51    0x24984  1      OPC=nop               
  nop                          #  52    0x24985  1      OPC=nop               
  nop                          #  53    0x24986  1      OPC=nop               
  nop                          #  54    0x24987  1      OPC=nop               
  nop                          #  55    0x24988  1      OPC=nop               
  nop                          #  56    0x24989  1      OPC=nop               
  nop                          #  57    0x2498a  1      OPC=nop               
  nop                          #  58    0x2498b  1      OPC=nop               
  nop                          #  59    0x2498c  1      OPC=nop               
  nop                          #  60    0x2498d  1      OPC=nop               
  nop                          #  61    0x2498e  1      OPC=nop               
  nop                          #  62    0x2498f  1      OPC=nop               
  nop                          #  63    0x24990  1      OPC=nop               
  nop                          #  64    0x24991  1      OPC=nop               
  nop                          #  65    0x24992  1      OPC=nop               
  nop                          #  66    0x24993  1      OPC=nop               
  nop                          #  67    0x24994  1      OPC=nop               
  nop                          #  68    0x24995  1      OPC=nop               
  nop                          #  69    0x24996  1      OPC=nop               
  nop                          #  70    0x24997  1      OPC=nop               
  nop                          #  71    0x24998  1      OPC=nop               
  nop                          #  72    0x24999  1      OPC=nop               
  nop                          #  73    0x2499a  1      OPC=nop               
  nop                          #  74    0x2499b  1      OPC=nop               
  nop                          #  75    0x2499c  1      OPC=nop               
  nop                          #  76    0x2499d  1      OPC=nop               
  nop                          #  77    0x2499e  1      OPC=nop               
  nop                          #  78    0x2499f  1      OPC=nop               
  nop                          #  79    0x249a0  1      OPC=nop               
.L_249a0:                      #        0x249a1  0      OPC=<label>           
  addl $0x8, %esp              #  80    0x249a1  3      OPC=addl_r32_imm8     
  addq %r15, %rsp              #  81    0x249a4  3      OPC=addq_r64_r64      
  popq %r11                    #  82    0x249a7  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d      #  83    0x249a9  7      OPC=andl_r32_imm32    
  nop                          #  84    0x249b0  1      OPC=nop               
  nop                          #  85    0x249b1  1      OPC=nop               
  nop                          #  86    0x249b2  1      OPC=nop               
  nop                          #  87    0x249b3  1      OPC=nop               
  addq %r15, %r11              #  88    0x249b4  3      OPC=addq_r64_r64      
  jmpq %r11                    #  89    0x249b7  3      OPC=jmpq_r64          
  nop                          #  90    0x249ba  1      OPC=nop               
  nop                          #  91    0x249bb  1      OPC=nop               
  nop                          #  92    0x249bc  1      OPC=nop               
  nop                          #  93    0x249bd  1      OPC=nop               
  nop                          #  94    0x249be  1      OPC=nop               
  nop                          #  95    0x249bf  1      OPC=nop               
  nop                          #  96    0x249c0  1      OPC=nop               
  nop                          #  97    0x249c1  1      OPC=nop               
  nop                          #  98    0x249c2  1      OPC=nop               
  nop                          #  99    0x249c3  1      OPC=nop               
  nop                          #  100   0x249c4  1      OPC=nop               
  nop                          #  101   0x249c5  1      OPC=nop               
  nop                          #  102   0x249c6  1      OPC=nop               
  nop                          #  103   0x249c7  1      OPC=nop               
                                                                              
.size run_knucleotide, .-run_knucleotide

