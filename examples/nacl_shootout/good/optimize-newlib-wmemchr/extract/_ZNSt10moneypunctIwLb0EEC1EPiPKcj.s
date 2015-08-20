  .text
  .globl _ZNSt10moneypunctIwLb0EEC1EPiPKcj
  .type _ZNSt10moneypunctIwLb0EEC1EPiPKcj, @function

#! file-offset 0xf7640
#! rip-offset  0xb7640
#! capacity    160 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIwLb0EEC1EPiPKcj:                                #        0xb7640  0      OPC=<label>         
  pushq %rbx                                                       #  1     0xb7640  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                                  #  2     0xb7641  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                                  #  3     0xb7643  2      OPC=movl_r32_r32    
  movl %esi, %esi                                                  #  4     0xb7645  2      OPC=movl_r32_r32    
  movl %edx, %edx                                                  #  5     0xb7647  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                  #  6     0xb7649  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                 #  7     0xb764b  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                  #  8     0xb764e  3      OPC=addq_r64_r64    
  testl %ecx, %ecx                                                 #  9     0xb7651  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                  #  10    0xb7653  2      OPC=movl_r32_r32    
  movl $0x1003c0c8, (%r15,%rbx,1)                                  #  11    0xb7655  8      OPC=movl_m32_imm32  
  setne %al                                                        #  12    0xb765d  3      OPC=setne_r8        
  movl %ebx, %ebx                                                  #  13    0xb7660  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                                      #  14    0xb7662  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                  #  15    0xb766b  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                                      #  16    0xb766d  5      OPC=movl_m32_r32    
  nop                                                              #  17    0xb7672  1      OPC=nop             
  nop                                                              #  18    0xb7673  1      OPC=nop             
  nop                                                              #  19    0xb7674  1      OPC=nop             
  nop                                                              #  20    0xb7675  1      OPC=nop             
  nop                                                              #  21    0xb7676  1      OPC=nop             
  nop                                                              #  22    0xb7677  1      OPC=nop             
  nop                                                              #  23    0xb7678  1      OPC=nop             
  nop                                                              #  24    0xb7679  1      OPC=nop             
  nop                                                              #  25    0xb767a  1      OPC=nop             
  callq ._ZNSt10moneypunctIwLb0EE24_M_initialize_moneypunctEPiPKc  #  26    0xb767b  5      OPC=callq_label     
  addl $0x10, %esp                                                 #  27    0xb7680  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                  #  28    0xb7683  3      OPC=addq_r64_r64    
  popq %rbx                                                        #  29    0xb7686  1      OPC=popq_r64_1      
  popq %r11                                                        #  30    0xb7687  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                          #  31    0xb7689  7      OPC=andl_r32_imm32  
  nop                                                              #  32    0xb7690  1      OPC=nop             
  nop                                                              #  33    0xb7691  1      OPC=nop             
  nop                                                              #  34    0xb7692  1      OPC=nop             
  nop                                                              #  35    0xb7693  1      OPC=nop             
  addq %r15, %r11                                                  #  36    0xb7694  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  37    0xb7697  3      OPC=jmpq_r64        
  nop                                                              #  38    0xb769a  1      OPC=nop             
  nop                                                              #  39    0xb769b  1      OPC=nop             
  nop                                                              #  40    0xb769c  1      OPC=nop             
  nop                                                              #  41    0xb769d  1      OPC=nop             
  nop                                                              #  42    0xb769e  1      OPC=nop             
  nop                                                              #  43    0xb769f  1      OPC=nop             
  nop                                                              #  44    0xb76a0  1      OPC=nop             
  nop                                                              #  45    0xb76a1  1      OPC=nop             
  nop                                                              #  46    0xb76a2  1      OPC=nop             
  nop                                                              #  47    0xb76a3  1      OPC=nop             
  nop                                                              #  48    0xb76a4  1      OPC=nop             
  nop                                                              #  49    0xb76a5  1      OPC=nop             
  nop                                                              #  50    0xb76a6  1      OPC=nop             
  movl %ebx, %edi                                                  #  51    0xb76a7  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                             #  52    0xb76a9  4      OPC=movl_m32_r32    
  nop                                                              #  53    0xb76ad  1      OPC=nop             
  nop                                                              #  54    0xb76ae  1      OPC=nop             
  nop                                                              #  55    0xb76af  1      OPC=nop             
  nop                                                              #  56    0xb76b0  1      OPC=nop             
  nop                                                              #  57    0xb76b1  1      OPC=nop             
  nop                                                              #  58    0xb76b2  1      OPC=nop             
  nop                                                              #  59    0xb76b3  1      OPC=nop             
  nop                                                              #  60    0xb76b4  1      OPC=nop             
  nop                                                              #  61    0xb76b5  1      OPC=nop             
  nop                                                              #  62    0xb76b6  1      OPC=nop             
  nop                                                              #  63    0xb76b7  1      OPC=nop             
  nop                                                              #  64    0xb76b8  1      OPC=nop             
  nop                                                              #  65    0xb76b9  1      OPC=nop             
  nop                                                              #  66    0xb76ba  1      OPC=nop             
  nop                                                              #  67    0xb76bb  1      OPC=nop             
  nop                                                              #  68    0xb76bc  1      OPC=nop             
  nop                                                              #  69    0xb76bd  1      OPC=nop             
  nop                                                              #  70    0xb76be  1      OPC=nop             
  nop                                                              #  71    0xb76bf  1      OPC=nop             
  nop                                                              #  72    0xb76c0  1      OPC=nop             
  nop                                                              #  73    0xb76c1  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                                    #  74    0xb76c2  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                             #  75    0xb76c7  4      OPC=movl_r32_m32    
  movl %eax, %edi                                                  #  76    0xb76cb  2      OPC=movl_r32_r32    
  nop                                                              #  77    0xb76cd  1      OPC=nop             
  nop                                                              #  78    0xb76ce  1      OPC=nop             
  nop                                                              #  79    0xb76cf  1      OPC=nop             
  nop                                                              #  80    0xb76d0  1      OPC=nop             
  nop                                                              #  81    0xb76d1  1      OPC=nop             
  nop                                                              #  82    0xb76d2  1      OPC=nop             
  nop                                                              #  83    0xb76d3  1      OPC=nop             
  nop                                                              #  84    0xb76d4  1      OPC=nop             
  nop                                                              #  85    0xb76d5  1      OPC=nop             
  nop                                                              #  86    0xb76d6  1      OPC=nop             
  nop                                                              #  87    0xb76d7  1      OPC=nop             
  nop                                                              #  88    0xb76d8  1      OPC=nop             
  nop                                                              #  89    0xb76d9  1      OPC=nop             
  nop                                                              #  90    0xb76da  1      OPC=nop             
  nop                                                              #  91    0xb76db  1      OPC=nop             
  nop                                                              #  92    0xb76dc  1      OPC=nop             
  nop                                                              #  93    0xb76dd  1      OPC=nop             
  nop                                                              #  94    0xb76de  1      OPC=nop             
  nop                                                              #  95    0xb76df  1      OPC=nop             
  nop                                                              #  96    0xb76e0  1      OPC=nop             
  nop                                                              #  97    0xb76e1  1      OPC=nop             
  callq ._Unwind_Resume                                            #  98    0xb76e2  5      OPC=callq_label     
                                                                                                                
.size _ZNSt10moneypunctIwLb0EEC1EPiPKcj, .-_ZNSt10moneypunctIwLb0EEC1EPiPKcj

