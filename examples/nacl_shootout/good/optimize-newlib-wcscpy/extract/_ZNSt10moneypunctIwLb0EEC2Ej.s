  .text
  .globl _ZNSt10moneypunctIwLb0EEC2Ej
  .type _ZNSt10moneypunctIwLb0EEC2Ej, @function

#! file-offset 0xf7660
#! rip-offset  0xb7660
#! capacity    160 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIwLb0EEC2Ej:                                     #        0xb7660  0      OPC=<label>         
  pushq %rbx                                                       #  1     0xb7660  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                                  #  2     0xb7661  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                                  #  3     0xb7663  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                  #  4     0xb7665  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                 #  5     0xb7667  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                  #  6     0xb766a  3      OPC=addq_r64_r64    
  testl %esi, %esi                                                 #  7     0xb766d  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                  #  8     0xb766f  2      OPC=movl_r32_r32    
  movl $0x1003c0c8, (%r15,%rbx,1)                                  #  9     0xb7671  8      OPC=movl_m32_imm32  
  setne %al                                                        #  10    0xb7679  3      OPC=setne_r8        
  nop                                                              #  11    0xb767c  1      OPC=nop             
  nop                                                              #  12    0xb767d  1      OPC=nop             
  nop                                                              #  13    0xb767e  1      OPC=nop             
  nop                                                              #  14    0xb767f  1      OPC=nop             
  movl %ebx, %ebx                                                  #  15    0xb7680  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                                      #  16    0xb7682  9      OPC=movl_m32_imm32  
  xorl %edx, %edx                                                  #  17    0xb768b  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                                                  #  18    0xb768d  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                                      #  19    0xb768f  5      OPC=movl_m32_r32    
  xorl %esi, %esi                                                  #  20    0xb7694  2      OPC=xorl_r32_r32    
  nop                                                              #  21    0xb7696  1      OPC=nop             
  nop                                                              #  22    0xb7697  1      OPC=nop             
  nop                                                              #  23    0xb7698  1      OPC=nop             
  nop                                                              #  24    0xb7699  1      OPC=nop             
  nop                                                              #  25    0xb769a  1      OPC=nop             
  callq ._ZNSt10moneypunctIwLb0EE24_M_initialize_moneypunctEPiPKc  #  26    0xb769b  5      OPC=callq_label     
  addl $0x10, %esp                                                 #  27    0xb76a0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                  #  28    0xb76a3  3      OPC=addq_r64_r64    
  popq %rbx                                                        #  29    0xb76a6  1      OPC=popq_r64_1      
  popq %r11                                                        #  30    0xb76a7  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                          #  31    0xb76a9  7      OPC=andl_r32_imm32  
  nop                                                              #  32    0xb76b0  1      OPC=nop             
  nop                                                              #  33    0xb76b1  1      OPC=nop             
  nop                                                              #  34    0xb76b2  1      OPC=nop             
  nop                                                              #  35    0xb76b3  1      OPC=nop             
  addq %r15, %r11                                                  #  36    0xb76b4  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  37    0xb76b7  3      OPC=jmpq_r64        
  nop                                                              #  38    0xb76ba  1      OPC=nop             
  nop                                                              #  39    0xb76bb  1      OPC=nop             
  nop                                                              #  40    0xb76bc  1      OPC=nop             
  nop                                                              #  41    0xb76bd  1      OPC=nop             
  nop                                                              #  42    0xb76be  1      OPC=nop             
  nop                                                              #  43    0xb76bf  1      OPC=nop             
  nop                                                              #  44    0xb76c0  1      OPC=nop             
  nop                                                              #  45    0xb76c1  1      OPC=nop             
  nop                                                              #  46    0xb76c2  1      OPC=nop             
  nop                                                              #  47    0xb76c3  1      OPC=nop             
  nop                                                              #  48    0xb76c4  1      OPC=nop             
  nop                                                              #  49    0xb76c5  1      OPC=nop             
  nop                                                              #  50    0xb76c6  1      OPC=nop             
  movl %ebx, %edi                                                  #  51    0xb76c7  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                             #  52    0xb76c9  4      OPC=movl_m32_r32    
  nop                                                              #  53    0xb76cd  1      OPC=nop             
  nop                                                              #  54    0xb76ce  1      OPC=nop             
  nop                                                              #  55    0xb76cf  1      OPC=nop             
  nop                                                              #  56    0xb76d0  1      OPC=nop             
  nop                                                              #  57    0xb76d1  1      OPC=nop             
  nop                                                              #  58    0xb76d2  1      OPC=nop             
  nop                                                              #  59    0xb76d3  1      OPC=nop             
  nop                                                              #  60    0xb76d4  1      OPC=nop             
  nop                                                              #  61    0xb76d5  1      OPC=nop             
  nop                                                              #  62    0xb76d6  1      OPC=nop             
  nop                                                              #  63    0xb76d7  1      OPC=nop             
  nop                                                              #  64    0xb76d8  1      OPC=nop             
  nop                                                              #  65    0xb76d9  1      OPC=nop             
  nop                                                              #  66    0xb76da  1      OPC=nop             
  nop                                                              #  67    0xb76db  1      OPC=nop             
  nop                                                              #  68    0xb76dc  1      OPC=nop             
  nop                                                              #  69    0xb76dd  1      OPC=nop             
  nop                                                              #  70    0xb76de  1      OPC=nop             
  nop                                                              #  71    0xb76df  1      OPC=nop             
  nop                                                              #  72    0xb76e0  1      OPC=nop             
  nop                                                              #  73    0xb76e1  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                                    #  74    0xb76e2  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                             #  75    0xb76e7  4      OPC=movl_r32_m32    
  movl %eax, %edi                                                  #  76    0xb76eb  2      OPC=movl_r32_r32    
  nop                                                              #  77    0xb76ed  1      OPC=nop             
  nop                                                              #  78    0xb76ee  1      OPC=nop             
  nop                                                              #  79    0xb76ef  1      OPC=nop             
  nop                                                              #  80    0xb76f0  1      OPC=nop             
  nop                                                              #  81    0xb76f1  1      OPC=nop             
  nop                                                              #  82    0xb76f2  1      OPC=nop             
  nop                                                              #  83    0xb76f3  1      OPC=nop             
  nop                                                              #  84    0xb76f4  1      OPC=nop             
  nop                                                              #  85    0xb76f5  1      OPC=nop             
  nop                                                              #  86    0xb76f6  1      OPC=nop             
  nop                                                              #  87    0xb76f7  1      OPC=nop             
  nop                                                              #  88    0xb76f8  1      OPC=nop             
  nop                                                              #  89    0xb76f9  1      OPC=nop             
  nop                                                              #  90    0xb76fa  1      OPC=nop             
  nop                                                              #  91    0xb76fb  1      OPC=nop             
  nop                                                              #  92    0xb76fc  1      OPC=nop             
  nop                                                              #  93    0xb76fd  1      OPC=nop             
  nop                                                              #  94    0xb76fe  1      OPC=nop             
  nop                                                              #  95    0xb76ff  1      OPC=nop             
  nop                                                              #  96    0xb7700  1      OPC=nop             
  nop                                                              #  97    0xb7701  1      OPC=nop             
  callq ._Unwind_Resume                                            #  98    0xb7702  5      OPC=callq_label     
                                                                                                                
.size _ZNSt10moneypunctIwLb0EEC2Ej, .-_ZNSt10moneypunctIwLb0EEC2Ej

