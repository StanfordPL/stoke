  .text
  .globl _ZNSt11logic_errorC1ERKSs
  .type _ZNSt11logic_errorC1ERKSs, @function

#! file-offset 0x129180
#! rip-offset  0xe9180
#! capacity    128 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt11logic_errorC1ERKSs:        #        0xe9180  0      OPC=<label>         
  pushq %rbx                       #  1     0xe9180  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xe9181  2      OPC=movl_r32_r32    
  movl %esi, %esi                  #  3     0xe9183  2      OPC=movl_r32_r32    
  leal 0x4(%rbx), %edi             #  4     0xe9185  3      OPC=leal_r32_m16    
  subl $0x10, %esp                 #  5     0xe9188  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  6     0xe918b  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                  #  7     0xe918e  2      OPC=movl_r32_r32    
  movl $0x1003db28, (%r15,%rbx,1)  #  8     0xe9190  8      OPC=movl_m32_imm32  
  nop                              #  9     0xe9198  1      OPC=nop             
  nop                              #  10    0xe9199  1      OPC=nop             
  nop                              #  11    0xe919a  1      OPC=nop             
  callq ._ZNSsC1ERKSs              #  12    0xe919b  5      OPC=callq_label     
  addl $0x10, %esp                 #  13    0xe91a0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  14    0xe91a3  3      OPC=addq_r64_r64    
  popq %rbx                        #  15    0xe91a6  1      OPC=popq_r64_1      
  popq %r11                        #  16    0xe91a7  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d          #  17    0xe91a9  7      OPC=andl_r32_imm32  
  nop                              #  18    0xe91b0  1      OPC=nop             
  nop                              #  19    0xe91b1  1      OPC=nop             
  nop                              #  20    0xe91b2  1      OPC=nop             
  nop                              #  21    0xe91b3  1      OPC=nop             
  addq %r15, %r11                  #  22    0xe91b4  3      OPC=addq_r64_r64    
  jmpq %r11                        #  23    0xe91b7  3      OPC=jmpq_r64        
  nop                              #  24    0xe91ba  1      OPC=nop             
  nop                              #  25    0xe91bb  1      OPC=nop             
  nop                              #  26    0xe91bc  1      OPC=nop             
  nop                              #  27    0xe91bd  1      OPC=nop             
  nop                              #  28    0xe91be  1      OPC=nop             
  nop                              #  29    0xe91bf  1      OPC=nop             
  nop                              #  30    0xe91c0  1      OPC=nop             
  nop                              #  31    0xe91c1  1      OPC=nop             
  nop                              #  32    0xe91c2  1      OPC=nop             
  nop                              #  33    0xe91c3  1      OPC=nop             
  nop                              #  34    0xe91c4  1      OPC=nop             
  nop                              #  35    0xe91c5  1      OPC=nop             
  nop                              #  36    0xe91c6  1      OPC=nop             
  movl %ebx, %edi                  #  37    0xe91c7  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)             #  38    0xe91c9  4      OPC=movl_m32_r32    
  nop                              #  39    0xe91cd  1      OPC=nop             
  nop                              #  40    0xe91ce  1      OPC=nop             
  nop                              #  41    0xe91cf  1      OPC=nop             
  nop                              #  42    0xe91d0  1      OPC=nop             
  nop                              #  43    0xe91d1  1      OPC=nop             
  nop                              #  44    0xe91d2  1      OPC=nop             
  nop                              #  45    0xe91d3  1      OPC=nop             
  nop                              #  46    0xe91d4  1      OPC=nop             
  nop                              #  47    0xe91d5  1      OPC=nop             
  nop                              #  48    0xe91d6  1      OPC=nop             
  nop                              #  49    0xe91d7  1      OPC=nop             
  nop                              #  50    0xe91d8  1      OPC=nop             
  nop                              #  51    0xe91d9  1      OPC=nop             
  nop                              #  52    0xe91da  1      OPC=nop             
  nop                              #  53    0xe91db  1      OPC=nop             
  nop                              #  54    0xe91dc  1      OPC=nop             
  nop                              #  55    0xe91dd  1      OPC=nop             
  nop                              #  56    0xe91de  1      OPC=nop             
  nop                              #  57    0xe91df  1      OPC=nop             
  nop                              #  58    0xe91e0  1      OPC=nop             
  nop                              #  59    0xe91e1  1      OPC=nop             
  callq ._ZNSt9exceptionD2Ev       #  60    0xe91e2  5      OPC=callq_label     
  movl 0x8(%rsp), %eax             #  61    0xe91e7  4      OPC=movl_r32_m32    
  movl %eax, %edi                  #  62    0xe91eb  2      OPC=movl_r32_r32    
  nop                              #  63    0xe91ed  1      OPC=nop             
  nop                              #  64    0xe91ee  1      OPC=nop             
  nop                              #  65    0xe91ef  1      OPC=nop             
  nop                              #  66    0xe91f0  1      OPC=nop             
  nop                              #  67    0xe91f1  1      OPC=nop             
  nop                              #  68    0xe91f2  1      OPC=nop             
  nop                              #  69    0xe91f3  1      OPC=nop             
  nop                              #  70    0xe91f4  1      OPC=nop             
  nop                              #  71    0xe91f5  1      OPC=nop             
  nop                              #  72    0xe91f6  1      OPC=nop             
  nop                              #  73    0xe91f7  1      OPC=nop             
  nop                              #  74    0xe91f8  1      OPC=nop             
  nop                              #  75    0xe91f9  1      OPC=nop             
  nop                              #  76    0xe91fa  1      OPC=nop             
  nop                              #  77    0xe91fb  1      OPC=nop             
  nop                              #  78    0xe91fc  1      OPC=nop             
  nop                              #  79    0xe91fd  1      OPC=nop             
  nop                              #  80    0xe91fe  1      OPC=nop             
  nop                              #  81    0xe91ff  1      OPC=nop             
  nop                              #  82    0xe9200  1      OPC=nop             
  nop                              #  83    0xe9201  1      OPC=nop             
  callq ._Unwind_Resume            #  84    0xe9202  5      OPC=callq_label     
                                                                                
.size _ZNSt11logic_errorC1ERKSs, .-_ZNSt11logic_errorC1ERKSs

