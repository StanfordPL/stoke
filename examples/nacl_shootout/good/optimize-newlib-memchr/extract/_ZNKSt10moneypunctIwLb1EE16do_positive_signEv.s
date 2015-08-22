  .text
  .globl _ZNKSt10moneypunctIwLb1EE16do_positive_signEv
  .type _ZNKSt10moneypunctIwLb1EE16do_positive_signEv, @function

#! file-offset 0xf74a0
#! rip-offset  0xb74a0
#! capacity    128 bytes

# Text                                               #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb1EE16do_positive_signEv:      #        0xb74a0  0      OPC=<label>         
  pushq %rbx                                         #  1     0xb74a0  1      OPC=pushq_r64_1     
  movl %esi, %esi                                    #  2     0xb74a1  2      OPC=movl_r32_r32    
  movl %edi, %ebx                                    #  3     0xb74a3  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                    #  4     0xb74a5  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                   #  5     0xb74a7  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                    #  6     0xb74aa  3      OPC=addq_r64_r64    
  movl %esi, %esi                                    #  7     0xb74ad  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rsi,1), %eax                        #  8     0xb74af  5      OPC=movl_r32_m32    
  leal 0xf(%rsp), %edx                               #  9     0xb74b4  4      OPC=leal_r32_m16    
  movl %eax, %eax                                    #  10    0xb74b8  2      OPC=movl_r32_r32    
  movl 0x24(%r15,%rax,1), %esi                       #  11    0xb74ba  5      OPC=movl_r32_m32    
  nop                                                #  12    0xb74bf  1      OPC=nop             
  nop                                                #  13    0xb74c0  1      OPC=nop             
  nop                                                #  14    0xb74c1  1      OPC=nop             
  nop                                                #  15    0xb74c2  1      OPC=nop             
  nop                                                #  16    0xb74c3  1      OPC=nop             
  nop                                                #  17    0xb74c4  1      OPC=nop             
  nop                                                #  18    0xb74c5  1      OPC=nop             
  nop                                                #  19    0xb74c6  1      OPC=nop             
  nop                                                #  20    0xb74c7  1      OPC=nop             
  nop                                                #  21    0xb74c8  1      OPC=nop             
  nop                                                #  22    0xb74c9  1      OPC=nop             
  nop                                                #  23    0xb74ca  1      OPC=nop             
  nop                                                #  24    0xb74cb  1      OPC=nop             
  nop                                                #  25    0xb74cc  1      OPC=nop             
  nop                                                #  26    0xb74cd  1      OPC=nop             
  nop                                                #  27    0xb74ce  1      OPC=nop             
  nop                                                #  28    0xb74cf  1      OPC=nop             
  nop                                                #  29    0xb74d0  1      OPC=nop             
  nop                                                #  30    0xb74d1  1      OPC=nop             
  nop                                                #  31    0xb74d2  1      OPC=nop             
  nop                                                #  32    0xb74d3  1      OPC=nop             
  nop                                                #  33    0xb74d4  1      OPC=nop             
  nop                                                #  34    0xb74d5  1      OPC=nop             
  nop                                                #  35    0xb74d6  1      OPC=nop             
  nop                                                #  36    0xb74d7  1      OPC=nop             
  nop                                                #  37    0xb74d8  1      OPC=nop             
  nop                                                #  38    0xb74d9  1      OPC=nop             
  nop                                                #  39    0xb74da  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEEC1EPKwRKS1_  #  40    0xb74db  5      OPC=callq_label     
  movl %ebx, %eax                                    #  41    0xb74e0  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                   #  42    0xb74e2  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                    #  43    0xb74e5  3      OPC=addq_r64_r64    
  popq %rbx                                          #  44    0xb74e8  1      OPC=popq_r64_1      
  popq %r11                                          #  45    0xb74e9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                            #  46    0xb74eb  7      OPC=andl_r32_imm32  
  nop                                                #  47    0xb74f2  1      OPC=nop             
  nop                                                #  48    0xb74f3  1      OPC=nop             
  nop                                                #  49    0xb74f4  1      OPC=nop             
  nop                                                #  50    0xb74f5  1      OPC=nop             
  addq %r15, %r11                                    #  51    0xb74f6  3      OPC=addq_r64_r64    
  jmpq %r11                                          #  52    0xb74f9  3      OPC=jmpq_r64        
  nop                                                #  53    0xb74fc  1      OPC=nop             
  nop                                                #  54    0xb74fd  1      OPC=nop             
  nop                                                #  55    0xb74fe  1      OPC=nop             
  nop                                                #  56    0xb74ff  1      OPC=nop             
  nop                                                #  57    0xb7500  1      OPC=nop             
  nop                                                #  58    0xb7501  1      OPC=nop             
  nop                                                #  59    0xb7502  1      OPC=nop             
  nop                                                #  60    0xb7503  1      OPC=nop             
  nop                                                #  61    0xb7504  1      OPC=nop             
  nop                                                #  62    0xb7505  1      OPC=nop             
  nop                                                #  63    0xb7506  1      OPC=nop             
  movl %eax, %edi                                    #  64    0xb7507  2      OPC=movl_r32_r32    
  nop                                                #  65    0xb7509  1      OPC=nop             
  nop                                                #  66    0xb750a  1      OPC=nop             
  nop                                                #  67    0xb750b  1      OPC=nop             
  nop                                                #  68    0xb750c  1      OPC=nop             
  nop                                                #  69    0xb750d  1      OPC=nop             
  nop                                                #  70    0xb750e  1      OPC=nop             
  nop                                                #  71    0xb750f  1      OPC=nop             
  nop                                                #  72    0xb7510  1      OPC=nop             
  nop                                                #  73    0xb7511  1      OPC=nop             
  nop                                                #  74    0xb7512  1      OPC=nop             
  nop                                                #  75    0xb7513  1      OPC=nop             
  nop                                                #  76    0xb7514  1      OPC=nop             
  nop                                                #  77    0xb7515  1      OPC=nop             
  nop                                                #  78    0xb7516  1      OPC=nop             
  nop                                                #  79    0xb7517  1      OPC=nop             
  nop                                                #  80    0xb7518  1      OPC=nop             
  nop                                                #  81    0xb7519  1      OPC=nop             
  nop                                                #  82    0xb751a  1      OPC=nop             
  nop                                                #  83    0xb751b  1      OPC=nop             
  nop                                                #  84    0xb751c  1      OPC=nop             
  nop                                                #  85    0xb751d  1      OPC=nop             
  nop                                                #  86    0xb751e  1      OPC=nop             
  nop                                                #  87    0xb751f  1      OPC=nop             
  nop                                                #  88    0xb7520  1      OPC=nop             
  nop                                                #  89    0xb7521  1      OPC=nop             
  callq ._Unwind_Resume                              #  90    0xb7522  5      OPC=callq_label     
                                                                                                  
.size _ZNKSt10moneypunctIwLb1EE16do_positive_signEv, .-_ZNKSt10moneypunctIwLb1EE16do_positive_signEv

