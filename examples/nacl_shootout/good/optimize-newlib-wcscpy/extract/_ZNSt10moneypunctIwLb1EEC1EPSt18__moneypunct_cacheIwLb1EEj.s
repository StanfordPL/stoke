  .text
  .globl _ZNSt10moneypunctIwLb1EEC1EPSt18__moneypunct_cacheIwLb1EEj
  .type _ZNSt10moneypunctIwLb1EEC1EPSt18__moneypunct_cacheIwLb1EEj, @function

#! file-offset 0xf7040
#! rip-offset  0xb7040
#! capacity    160 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIwLb1EEC1EPSt18__moneypunct_cacheIwLb1EEj:       #        0xb7040  0      OPC=<label>         
  pushq %rbx                                                       #  1     0xb7040  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                                  #  2     0xb7041  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                                  #  3     0xb7043  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                  #  4     0xb7045  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                 #  5     0xb7047  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                  #  6     0xb704a  3      OPC=addq_r64_r64    
  testl %edx, %edx                                                 #  7     0xb704d  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                  #  8     0xb704f  2      OPC=movl_r32_r32    
  movl %esi, 0x8(%r15,%rbx,1)                                      #  9     0xb7051  5      OPC=movl_m32_r32    
  setne %al                                                        #  10    0xb7056  3      OPC=setne_r8        
  nop                                                              #  11    0xb7059  1      OPC=nop             
  nop                                                              #  12    0xb705a  1      OPC=nop             
  nop                                                              #  13    0xb705b  1      OPC=nop             
  nop                                                              #  14    0xb705c  1      OPC=nop             
  nop                                                              #  15    0xb705d  1      OPC=nop             
  nop                                                              #  16    0xb705e  1      OPC=nop             
  nop                                                              #  17    0xb705f  1      OPC=nop             
  movl %ebx, %ebx                                                  #  18    0xb7060  2      OPC=movl_r32_r32    
  movl $0x1003c108, (%r15,%rbx,1)                                  #  19    0xb7062  8      OPC=movl_m32_imm32  
  xorl %edx, %edx                                                  #  20    0xb706a  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                                                  #  21    0xb706c  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                                      #  22    0xb706e  5      OPC=movl_m32_r32    
  xorl %esi, %esi                                                  #  23    0xb7073  2      OPC=xorl_r32_r32    
  nop                                                              #  24    0xb7075  1      OPC=nop             
  nop                                                              #  25    0xb7076  1      OPC=nop             
  nop                                                              #  26    0xb7077  1      OPC=nop             
  nop                                                              #  27    0xb7078  1      OPC=nop             
  nop                                                              #  28    0xb7079  1      OPC=nop             
  nop                                                              #  29    0xb707a  1      OPC=nop             
  callq ._ZNSt10moneypunctIwLb1EE24_M_initialize_moneypunctEPiPKc  #  30    0xb707b  5      OPC=callq_label     
  addl $0x10, %esp                                                 #  31    0xb7080  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                  #  32    0xb7083  3      OPC=addq_r64_r64    
  popq %rbx                                                        #  33    0xb7086  1      OPC=popq_r64_1      
  popq %r11                                                        #  34    0xb7087  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                          #  35    0xb7089  7      OPC=andl_r32_imm32  
  nop                                                              #  36    0xb7090  1      OPC=nop             
  nop                                                              #  37    0xb7091  1      OPC=nop             
  nop                                                              #  38    0xb7092  1      OPC=nop             
  nop                                                              #  39    0xb7093  1      OPC=nop             
  addq %r15, %r11                                                  #  40    0xb7094  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  41    0xb7097  3      OPC=jmpq_r64        
  nop                                                              #  42    0xb709a  1      OPC=nop             
  nop                                                              #  43    0xb709b  1      OPC=nop             
  nop                                                              #  44    0xb709c  1      OPC=nop             
  nop                                                              #  45    0xb709d  1      OPC=nop             
  nop                                                              #  46    0xb709e  1      OPC=nop             
  nop                                                              #  47    0xb709f  1      OPC=nop             
  nop                                                              #  48    0xb70a0  1      OPC=nop             
  nop                                                              #  49    0xb70a1  1      OPC=nop             
  nop                                                              #  50    0xb70a2  1      OPC=nop             
  nop                                                              #  51    0xb70a3  1      OPC=nop             
  nop                                                              #  52    0xb70a4  1      OPC=nop             
  nop                                                              #  53    0xb70a5  1      OPC=nop             
  nop                                                              #  54    0xb70a6  1      OPC=nop             
  movl %ebx, %edi                                                  #  55    0xb70a7  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                             #  56    0xb70a9  4      OPC=movl_m32_r32    
  nop                                                              #  57    0xb70ad  1      OPC=nop             
  nop                                                              #  58    0xb70ae  1      OPC=nop             
  nop                                                              #  59    0xb70af  1      OPC=nop             
  nop                                                              #  60    0xb70b0  1      OPC=nop             
  nop                                                              #  61    0xb70b1  1      OPC=nop             
  nop                                                              #  62    0xb70b2  1      OPC=nop             
  nop                                                              #  63    0xb70b3  1      OPC=nop             
  nop                                                              #  64    0xb70b4  1      OPC=nop             
  nop                                                              #  65    0xb70b5  1      OPC=nop             
  nop                                                              #  66    0xb70b6  1      OPC=nop             
  nop                                                              #  67    0xb70b7  1      OPC=nop             
  nop                                                              #  68    0xb70b8  1      OPC=nop             
  nop                                                              #  69    0xb70b9  1      OPC=nop             
  nop                                                              #  70    0xb70ba  1      OPC=nop             
  nop                                                              #  71    0xb70bb  1      OPC=nop             
  nop                                                              #  72    0xb70bc  1      OPC=nop             
  nop                                                              #  73    0xb70bd  1      OPC=nop             
  nop                                                              #  74    0xb70be  1      OPC=nop             
  nop                                                              #  75    0xb70bf  1      OPC=nop             
  nop                                                              #  76    0xb70c0  1      OPC=nop             
  nop                                                              #  77    0xb70c1  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                                    #  78    0xb70c2  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                             #  79    0xb70c7  4      OPC=movl_r32_m32    
  movl %eax, %edi                                                  #  80    0xb70cb  2      OPC=movl_r32_r32    
  nop                                                              #  81    0xb70cd  1      OPC=nop             
  nop                                                              #  82    0xb70ce  1      OPC=nop             
  nop                                                              #  83    0xb70cf  1      OPC=nop             
  nop                                                              #  84    0xb70d0  1      OPC=nop             
  nop                                                              #  85    0xb70d1  1      OPC=nop             
  nop                                                              #  86    0xb70d2  1      OPC=nop             
  nop                                                              #  87    0xb70d3  1      OPC=nop             
  nop                                                              #  88    0xb70d4  1      OPC=nop             
  nop                                                              #  89    0xb70d5  1      OPC=nop             
  nop                                                              #  90    0xb70d6  1      OPC=nop             
  nop                                                              #  91    0xb70d7  1      OPC=nop             
  nop                                                              #  92    0xb70d8  1      OPC=nop             
  nop                                                              #  93    0xb70d9  1      OPC=nop             
  nop                                                              #  94    0xb70da  1      OPC=nop             
  nop                                                              #  95    0xb70db  1      OPC=nop             
  nop                                                              #  96    0xb70dc  1      OPC=nop             
  nop                                                              #  97    0xb70dd  1      OPC=nop             
  nop                                                              #  98    0xb70de  1      OPC=nop             
  nop                                                              #  99    0xb70df  1      OPC=nop             
  nop                                                              #  100   0xb70e0  1      OPC=nop             
  nop                                                              #  101   0xb70e1  1      OPC=nop             
  callq ._Unwind_Resume                                            #  102   0xb70e2  5      OPC=callq_label     
                                                                                                                
.size _ZNSt10moneypunctIwLb1EEC1EPSt18__moneypunct_cacheIwLb1EEj, .-_ZNSt10moneypunctIwLb1EEC1EPSt18__moneypunct_cacheIwLb1EEj

