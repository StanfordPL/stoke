  .text
  .globl _ZNSt10moneypunctIwLb1EEC1Ej
  .type _ZNSt10moneypunctIwLb1EEC1Ej, @function

#! file-offset 0xf7180
#! rip-offset  0xb7180
#! capacity    160 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIwLb1EEC1Ej:                                     #        0xb7180  0      OPC=<label>         
  pushq %rbx                                                       #  1     0xb7180  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                                  #  2     0xb7181  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                                  #  3     0xb7183  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                  #  4     0xb7185  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                 #  5     0xb7187  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                  #  6     0xb718a  3      OPC=addq_r64_r64    
  testl %esi, %esi                                                 #  7     0xb718d  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                  #  8     0xb718f  2      OPC=movl_r32_r32    
  movl $0x1003c108, (%r15,%rbx,1)                                  #  9     0xb7191  8      OPC=movl_m32_imm32  
  setne %al                                                        #  10    0xb7199  3      OPC=setne_r8        
  nop                                                              #  11    0xb719c  1      OPC=nop             
  nop                                                              #  12    0xb719d  1      OPC=nop             
  nop                                                              #  13    0xb719e  1      OPC=nop             
  nop                                                              #  14    0xb719f  1      OPC=nop             
  movl %ebx, %ebx                                                  #  15    0xb71a0  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                                      #  16    0xb71a2  9      OPC=movl_m32_imm32  
  xorl %edx, %edx                                                  #  17    0xb71ab  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                                                  #  18    0xb71ad  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                                      #  19    0xb71af  5      OPC=movl_m32_r32    
  xorl %esi, %esi                                                  #  20    0xb71b4  2      OPC=xorl_r32_r32    
  nop                                                              #  21    0xb71b6  1      OPC=nop             
  nop                                                              #  22    0xb71b7  1      OPC=nop             
  nop                                                              #  23    0xb71b8  1      OPC=nop             
  nop                                                              #  24    0xb71b9  1      OPC=nop             
  nop                                                              #  25    0xb71ba  1      OPC=nop             
  callq ._ZNSt10moneypunctIwLb1EE24_M_initialize_moneypunctEPiPKc  #  26    0xb71bb  5      OPC=callq_label     
  addl $0x10, %esp                                                 #  27    0xb71c0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                  #  28    0xb71c3  3      OPC=addq_r64_r64    
  popq %rbx                                                        #  29    0xb71c6  1      OPC=popq_r64_1      
  popq %r11                                                        #  30    0xb71c7  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                          #  31    0xb71c9  7      OPC=andl_r32_imm32  
  nop                                                              #  32    0xb71d0  1      OPC=nop             
  nop                                                              #  33    0xb71d1  1      OPC=nop             
  nop                                                              #  34    0xb71d2  1      OPC=nop             
  nop                                                              #  35    0xb71d3  1      OPC=nop             
  addq %r15, %r11                                                  #  36    0xb71d4  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  37    0xb71d7  3      OPC=jmpq_r64        
  nop                                                              #  38    0xb71da  1      OPC=nop             
  nop                                                              #  39    0xb71db  1      OPC=nop             
  nop                                                              #  40    0xb71dc  1      OPC=nop             
  nop                                                              #  41    0xb71dd  1      OPC=nop             
  nop                                                              #  42    0xb71de  1      OPC=nop             
  nop                                                              #  43    0xb71df  1      OPC=nop             
  nop                                                              #  44    0xb71e0  1      OPC=nop             
  nop                                                              #  45    0xb71e1  1      OPC=nop             
  nop                                                              #  46    0xb71e2  1      OPC=nop             
  nop                                                              #  47    0xb71e3  1      OPC=nop             
  nop                                                              #  48    0xb71e4  1      OPC=nop             
  nop                                                              #  49    0xb71e5  1      OPC=nop             
  nop                                                              #  50    0xb71e6  1      OPC=nop             
  movl %ebx, %edi                                                  #  51    0xb71e7  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                             #  52    0xb71e9  4      OPC=movl_m32_r32    
  nop                                                              #  53    0xb71ed  1      OPC=nop             
  nop                                                              #  54    0xb71ee  1      OPC=nop             
  nop                                                              #  55    0xb71ef  1      OPC=nop             
  nop                                                              #  56    0xb71f0  1      OPC=nop             
  nop                                                              #  57    0xb71f1  1      OPC=nop             
  nop                                                              #  58    0xb71f2  1      OPC=nop             
  nop                                                              #  59    0xb71f3  1      OPC=nop             
  nop                                                              #  60    0xb71f4  1      OPC=nop             
  nop                                                              #  61    0xb71f5  1      OPC=nop             
  nop                                                              #  62    0xb71f6  1      OPC=nop             
  nop                                                              #  63    0xb71f7  1      OPC=nop             
  nop                                                              #  64    0xb71f8  1      OPC=nop             
  nop                                                              #  65    0xb71f9  1      OPC=nop             
  nop                                                              #  66    0xb71fa  1      OPC=nop             
  nop                                                              #  67    0xb71fb  1      OPC=nop             
  nop                                                              #  68    0xb71fc  1      OPC=nop             
  nop                                                              #  69    0xb71fd  1      OPC=nop             
  nop                                                              #  70    0xb71fe  1      OPC=nop             
  nop                                                              #  71    0xb71ff  1      OPC=nop             
  nop                                                              #  72    0xb7200  1      OPC=nop             
  nop                                                              #  73    0xb7201  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                                    #  74    0xb7202  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                             #  75    0xb7207  4      OPC=movl_r32_m32    
  movl %eax, %edi                                                  #  76    0xb720b  2      OPC=movl_r32_r32    
  nop                                                              #  77    0xb720d  1      OPC=nop             
  nop                                                              #  78    0xb720e  1      OPC=nop             
  nop                                                              #  79    0xb720f  1      OPC=nop             
  nop                                                              #  80    0xb7210  1      OPC=nop             
  nop                                                              #  81    0xb7211  1      OPC=nop             
  nop                                                              #  82    0xb7212  1      OPC=nop             
  nop                                                              #  83    0xb7213  1      OPC=nop             
  nop                                                              #  84    0xb7214  1      OPC=nop             
  nop                                                              #  85    0xb7215  1      OPC=nop             
  nop                                                              #  86    0xb7216  1      OPC=nop             
  nop                                                              #  87    0xb7217  1      OPC=nop             
  nop                                                              #  88    0xb7218  1      OPC=nop             
  nop                                                              #  89    0xb7219  1      OPC=nop             
  nop                                                              #  90    0xb721a  1      OPC=nop             
  nop                                                              #  91    0xb721b  1      OPC=nop             
  nop                                                              #  92    0xb721c  1      OPC=nop             
  nop                                                              #  93    0xb721d  1      OPC=nop             
  nop                                                              #  94    0xb721e  1      OPC=nop             
  nop                                                              #  95    0xb721f  1      OPC=nop             
  nop                                                              #  96    0xb7220  1      OPC=nop             
  nop                                                              #  97    0xb7221  1      OPC=nop             
  callq ._Unwind_Resume                                            #  98    0xb7222  5      OPC=callq_label     
                                                                                                                
.size _ZNSt10moneypunctIwLb1EEC1Ej, .-_ZNSt10moneypunctIwLb1EEC1Ej

