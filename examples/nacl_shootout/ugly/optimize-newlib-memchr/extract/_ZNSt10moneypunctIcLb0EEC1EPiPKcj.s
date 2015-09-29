  .text
  .globl _ZNSt10moneypunctIcLb0EEC1EPiPKcj
  .type _ZNSt10moneypunctIcLb0EEC1EPiPKcj, @function

#! file-offset 0xbf240
#! rip-offset  0x7f240
#! capacity    160 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIcLb0EEC1EPiPKcj:                                #        0x7f240  0      OPC=<label>         
  pushq %rbx                                                       #  1     0x7f240  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                                  #  2     0x7f241  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                                  #  3     0x7f243  2      OPC=movl_r32_r32    
  movl %esi, %esi                                                  #  4     0x7f245  2      OPC=movl_r32_r32    
  movl %edx, %edx                                                  #  5     0x7f247  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                  #  6     0x7f249  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                 #  7     0x7f24b  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                  #  8     0x7f24e  3      OPC=addq_r64_r64    
  testl %ecx, %ecx                                                 #  9     0x7f251  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                  #  10    0x7f253  2      OPC=movl_r32_r32    
  movl $0x1003ae48, (%r15,%rbx,1)                                  #  11    0x7f255  8      OPC=movl_m32_imm32  
  setne %al                                                        #  12    0x7f25d  3      OPC=setne_r8        
  movl %ebx, %ebx                                                  #  13    0x7f260  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                                      #  14    0x7f262  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                  #  15    0x7f26b  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                                      #  16    0x7f26d  5      OPC=movl_m32_r32    
  nop                                                              #  17    0x7f272  1      OPC=nop             
  nop                                                              #  18    0x7f273  1      OPC=nop             
  nop                                                              #  19    0x7f274  1      OPC=nop             
  nop                                                              #  20    0x7f275  1      OPC=nop             
  nop                                                              #  21    0x7f276  1      OPC=nop             
  nop                                                              #  22    0x7f277  1      OPC=nop             
  nop                                                              #  23    0x7f278  1      OPC=nop             
  nop                                                              #  24    0x7f279  1      OPC=nop             
  nop                                                              #  25    0x7f27a  1      OPC=nop             
  callq ._ZNSt10moneypunctIcLb0EE24_M_initialize_moneypunctEPiPKc  #  26    0x7f27b  5      OPC=callq_label     
  addl $0x10, %esp                                                 #  27    0x7f280  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                  #  28    0x7f283  3      OPC=addq_r64_r64    
  popq %rbx                                                        #  29    0x7f286  1      OPC=popq_r64_1      
  popq %r11                                                        #  30    0x7f287  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                          #  31    0x7f289  7      OPC=andl_r32_imm32  
  nop                                                              #  32    0x7f290  1      OPC=nop             
  nop                                                              #  33    0x7f291  1      OPC=nop             
  nop                                                              #  34    0x7f292  1      OPC=nop             
  nop                                                              #  35    0x7f293  1      OPC=nop             
  addq %r15, %r11                                                  #  36    0x7f294  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  37    0x7f297  3      OPC=jmpq_r64        
  nop                                                              #  38    0x7f29a  1      OPC=nop             
  nop                                                              #  39    0x7f29b  1      OPC=nop             
  nop                                                              #  40    0x7f29c  1      OPC=nop             
  nop                                                              #  41    0x7f29d  1      OPC=nop             
  nop                                                              #  42    0x7f29e  1      OPC=nop             
  nop                                                              #  43    0x7f29f  1      OPC=nop             
  nop                                                              #  44    0x7f2a0  1      OPC=nop             
  nop                                                              #  45    0x7f2a1  1      OPC=nop             
  nop                                                              #  46    0x7f2a2  1      OPC=nop             
  nop                                                              #  47    0x7f2a3  1      OPC=nop             
  nop                                                              #  48    0x7f2a4  1      OPC=nop             
  nop                                                              #  49    0x7f2a5  1      OPC=nop             
  nop                                                              #  50    0x7f2a6  1      OPC=nop             
  movl %ebx, %edi                                                  #  51    0x7f2a7  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                             #  52    0x7f2a9  4      OPC=movl_m32_r32    
  nop                                                              #  53    0x7f2ad  1      OPC=nop             
  nop                                                              #  54    0x7f2ae  1      OPC=nop             
  nop                                                              #  55    0x7f2af  1      OPC=nop             
  nop                                                              #  56    0x7f2b0  1      OPC=nop             
  nop                                                              #  57    0x7f2b1  1      OPC=nop             
  nop                                                              #  58    0x7f2b2  1      OPC=nop             
  nop                                                              #  59    0x7f2b3  1      OPC=nop             
  nop                                                              #  60    0x7f2b4  1      OPC=nop             
  nop                                                              #  61    0x7f2b5  1      OPC=nop             
  nop                                                              #  62    0x7f2b6  1      OPC=nop             
  nop                                                              #  63    0x7f2b7  1      OPC=nop             
  nop                                                              #  64    0x7f2b8  1      OPC=nop             
  nop                                                              #  65    0x7f2b9  1      OPC=nop             
  nop                                                              #  66    0x7f2ba  1      OPC=nop             
  nop                                                              #  67    0x7f2bb  1      OPC=nop             
  nop                                                              #  68    0x7f2bc  1      OPC=nop             
  nop                                                              #  69    0x7f2bd  1      OPC=nop             
  nop                                                              #  70    0x7f2be  1      OPC=nop             
  nop                                                              #  71    0x7f2bf  1      OPC=nop             
  nop                                                              #  72    0x7f2c0  1      OPC=nop             
  nop                                                              #  73    0x7f2c1  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                                    #  74    0x7f2c2  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                             #  75    0x7f2c7  4      OPC=movl_r32_m32    
  movl %eax, %edi                                                  #  76    0x7f2cb  2      OPC=movl_r32_r32    
  nop                                                              #  77    0x7f2cd  1      OPC=nop             
  nop                                                              #  78    0x7f2ce  1      OPC=nop             
  nop                                                              #  79    0x7f2cf  1      OPC=nop             
  nop                                                              #  80    0x7f2d0  1      OPC=nop             
  nop                                                              #  81    0x7f2d1  1      OPC=nop             
  nop                                                              #  82    0x7f2d2  1      OPC=nop             
  nop                                                              #  83    0x7f2d3  1      OPC=nop             
  nop                                                              #  84    0x7f2d4  1      OPC=nop             
  nop                                                              #  85    0x7f2d5  1      OPC=nop             
  nop                                                              #  86    0x7f2d6  1      OPC=nop             
  nop                                                              #  87    0x7f2d7  1      OPC=nop             
  nop                                                              #  88    0x7f2d8  1      OPC=nop             
  nop                                                              #  89    0x7f2d9  1      OPC=nop             
  nop                                                              #  90    0x7f2da  1      OPC=nop             
  nop                                                              #  91    0x7f2db  1      OPC=nop             
  nop                                                              #  92    0x7f2dc  1      OPC=nop             
  nop                                                              #  93    0x7f2dd  1      OPC=nop             
  nop                                                              #  94    0x7f2de  1      OPC=nop             
  nop                                                              #  95    0x7f2df  1      OPC=nop             
  nop                                                              #  96    0x7f2e0  1      OPC=nop             
  nop                                                              #  97    0x7f2e1  1      OPC=nop             
  callq ._Unwind_Resume                                            #  98    0x7f2e2  5      OPC=callq_label     
                                                                                                                
.size _ZNSt10moneypunctIcLb0EEC1EPiPKcj, .-_ZNSt10moneypunctIcLb0EEC1EPiPKcj

