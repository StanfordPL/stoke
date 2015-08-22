  .text
  .globl _ZNSt10moneypunctIwLb1EEC2EPiPKcj
  .type _ZNSt10moneypunctIwLb1EEC2EPiPKcj, @function

#! file-offset 0xf79c0
#! rip-offset  0xb79c0
#! capacity    160 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIwLb1EEC2EPiPKcj:                                #        0xb79c0  0      OPC=<label>         
  pushq %rbx                                                       #  1     0xb79c0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                                  #  2     0xb79c1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                                  #  3     0xb79c3  2      OPC=movl_r32_r32    
  movl %esi, %esi                                                  #  4     0xb79c5  2      OPC=movl_r32_r32    
  movl %edx, %edx                                                  #  5     0xb79c7  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                  #  6     0xb79c9  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                 #  7     0xb79cb  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                  #  8     0xb79ce  3      OPC=addq_r64_r64    
  testl %ecx, %ecx                                                 #  9     0xb79d1  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                  #  10    0xb79d3  2      OPC=movl_r32_r32    
  movl $0x1003c108, (%r15,%rbx,1)                                  #  11    0xb79d5  8      OPC=movl_m32_imm32  
  setne %al                                                        #  12    0xb79dd  3      OPC=setne_r8        
  movl %ebx, %ebx                                                  #  13    0xb79e0  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                                      #  14    0xb79e2  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                  #  15    0xb79eb  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                                      #  16    0xb79ed  5      OPC=movl_m32_r32    
  nop                                                              #  17    0xb79f2  1      OPC=nop             
  nop                                                              #  18    0xb79f3  1      OPC=nop             
  nop                                                              #  19    0xb79f4  1      OPC=nop             
  nop                                                              #  20    0xb79f5  1      OPC=nop             
  nop                                                              #  21    0xb79f6  1      OPC=nop             
  nop                                                              #  22    0xb79f7  1      OPC=nop             
  nop                                                              #  23    0xb79f8  1      OPC=nop             
  nop                                                              #  24    0xb79f9  1      OPC=nop             
  nop                                                              #  25    0xb79fa  1      OPC=nop             
  callq ._ZNSt10moneypunctIwLb1EE24_M_initialize_moneypunctEPiPKc  #  26    0xb79fb  5      OPC=callq_label     
  addl $0x10, %esp                                                 #  27    0xb7a00  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                  #  28    0xb7a03  3      OPC=addq_r64_r64    
  popq %rbx                                                        #  29    0xb7a06  1      OPC=popq_r64_1      
  popq %r11                                                        #  30    0xb7a07  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                          #  31    0xb7a09  7      OPC=andl_r32_imm32  
  nop                                                              #  32    0xb7a10  1      OPC=nop             
  nop                                                              #  33    0xb7a11  1      OPC=nop             
  nop                                                              #  34    0xb7a12  1      OPC=nop             
  nop                                                              #  35    0xb7a13  1      OPC=nop             
  addq %r15, %r11                                                  #  36    0xb7a14  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  37    0xb7a17  3      OPC=jmpq_r64        
  nop                                                              #  38    0xb7a1a  1      OPC=nop             
  nop                                                              #  39    0xb7a1b  1      OPC=nop             
  nop                                                              #  40    0xb7a1c  1      OPC=nop             
  nop                                                              #  41    0xb7a1d  1      OPC=nop             
  nop                                                              #  42    0xb7a1e  1      OPC=nop             
  nop                                                              #  43    0xb7a1f  1      OPC=nop             
  nop                                                              #  44    0xb7a20  1      OPC=nop             
  nop                                                              #  45    0xb7a21  1      OPC=nop             
  nop                                                              #  46    0xb7a22  1      OPC=nop             
  nop                                                              #  47    0xb7a23  1      OPC=nop             
  nop                                                              #  48    0xb7a24  1      OPC=nop             
  nop                                                              #  49    0xb7a25  1      OPC=nop             
  nop                                                              #  50    0xb7a26  1      OPC=nop             
  movl %ebx, %edi                                                  #  51    0xb7a27  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                             #  52    0xb7a29  4      OPC=movl_m32_r32    
  nop                                                              #  53    0xb7a2d  1      OPC=nop             
  nop                                                              #  54    0xb7a2e  1      OPC=nop             
  nop                                                              #  55    0xb7a2f  1      OPC=nop             
  nop                                                              #  56    0xb7a30  1      OPC=nop             
  nop                                                              #  57    0xb7a31  1      OPC=nop             
  nop                                                              #  58    0xb7a32  1      OPC=nop             
  nop                                                              #  59    0xb7a33  1      OPC=nop             
  nop                                                              #  60    0xb7a34  1      OPC=nop             
  nop                                                              #  61    0xb7a35  1      OPC=nop             
  nop                                                              #  62    0xb7a36  1      OPC=nop             
  nop                                                              #  63    0xb7a37  1      OPC=nop             
  nop                                                              #  64    0xb7a38  1      OPC=nop             
  nop                                                              #  65    0xb7a39  1      OPC=nop             
  nop                                                              #  66    0xb7a3a  1      OPC=nop             
  nop                                                              #  67    0xb7a3b  1      OPC=nop             
  nop                                                              #  68    0xb7a3c  1      OPC=nop             
  nop                                                              #  69    0xb7a3d  1      OPC=nop             
  nop                                                              #  70    0xb7a3e  1      OPC=nop             
  nop                                                              #  71    0xb7a3f  1      OPC=nop             
  nop                                                              #  72    0xb7a40  1      OPC=nop             
  nop                                                              #  73    0xb7a41  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                                    #  74    0xb7a42  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                             #  75    0xb7a47  4      OPC=movl_r32_m32    
  movl %eax, %edi                                                  #  76    0xb7a4b  2      OPC=movl_r32_r32    
  nop                                                              #  77    0xb7a4d  1      OPC=nop             
  nop                                                              #  78    0xb7a4e  1      OPC=nop             
  nop                                                              #  79    0xb7a4f  1      OPC=nop             
  nop                                                              #  80    0xb7a50  1      OPC=nop             
  nop                                                              #  81    0xb7a51  1      OPC=nop             
  nop                                                              #  82    0xb7a52  1      OPC=nop             
  nop                                                              #  83    0xb7a53  1      OPC=nop             
  nop                                                              #  84    0xb7a54  1      OPC=nop             
  nop                                                              #  85    0xb7a55  1      OPC=nop             
  nop                                                              #  86    0xb7a56  1      OPC=nop             
  nop                                                              #  87    0xb7a57  1      OPC=nop             
  nop                                                              #  88    0xb7a58  1      OPC=nop             
  nop                                                              #  89    0xb7a59  1      OPC=nop             
  nop                                                              #  90    0xb7a5a  1      OPC=nop             
  nop                                                              #  91    0xb7a5b  1      OPC=nop             
  nop                                                              #  92    0xb7a5c  1      OPC=nop             
  nop                                                              #  93    0xb7a5d  1      OPC=nop             
  nop                                                              #  94    0xb7a5e  1      OPC=nop             
  nop                                                              #  95    0xb7a5f  1      OPC=nop             
  nop                                                              #  96    0xb7a60  1      OPC=nop             
  nop                                                              #  97    0xb7a61  1      OPC=nop             
  callq ._Unwind_Resume                                            #  98    0xb7a62  5      OPC=callq_label     
                                                                                                                
.size _ZNSt10moneypunctIwLb1EEC2EPiPKcj, .-_ZNSt10moneypunctIwLb1EEC2EPiPKcj

