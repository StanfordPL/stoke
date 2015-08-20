  .text
  .globl _ZNSt8numpunctIcEC1EPij
  .type _ZNSt8numpunctIcEC1EPij, @function

#! file-offset 0xbdd20
#! rip-offset  0x7dd20
#! capacity    160 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt8numpunctIcEC1EPij:                              #        0x7dd20  0      OPC=<label>         
  pushq %rbx                                           #  1     0x7dd20  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                      #  2     0x7dd21  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                      #  3     0x7dd23  2      OPC=movl_r32_r32    
  movl %esi, %esi                                      #  4     0x7dd25  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                      #  5     0x7dd27  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                     #  6     0x7dd29  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                      #  7     0x7dd2c  3      OPC=addq_r64_r64    
  testl %edx, %edx                                     #  8     0x7dd2f  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                      #  9     0x7dd31  2      OPC=movl_r32_r32    
  movl $0x1003afa8, (%r15,%rbx,1)                      #  10    0x7dd33  8      OPC=movl_m32_imm32  
  setne %al                                            #  11    0x7dd3b  3      OPC=setne_r8        
  xchgw %ax, %ax                                       #  12    0x7dd3e  2      OPC=xchgw_ax_r16    
  movl %ebx, %ebx                                      #  13    0x7dd40  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                          #  14    0x7dd42  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                      #  15    0x7dd4b  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                          #  16    0x7dd4d  5      OPC=movl_m32_r32    
  nop                                                  #  17    0x7dd52  1      OPC=nop             
  nop                                                  #  18    0x7dd53  1      OPC=nop             
  nop                                                  #  19    0x7dd54  1      OPC=nop             
  nop                                                  #  20    0x7dd55  1      OPC=nop             
  nop                                                  #  21    0x7dd56  1      OPC=nop             
  nop                                                  #  22    0x7dd57  1      OPC=nop             
  nop                                                  #  23    0x7dd58  1      OPC=nop             
  nop                                                  #  24    0x7dd59  1      OPC=nop             
  nop                                                  #  25    0x7dd5a  1      OPC=nop             
  callq ._ZNSt8numpunctIcE22_M_initialize_numpunctEPi  #  26    0x7dd5b  5      OPC=callq_label     
  addl $0x10, %esp                                     #  27    0x7dd60  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                      #  28    0x7dd63  3      OPC=addq_r64_r64    
  popq %rbx                                            #  29    0x7dd66  1      OPC=popq_r64_1      
  popq %r11                                            #  30    0x7dd67  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                              #  31    0x7dd69  7      OPC=andl_r32_imm32  
  nop                                                  #  32    0x7dd70  1      OPC=nop             
  nop                                                  #  33    0x7dd71  1      OPC=nop             
  nop                                                  #  34    0x7dd72  1      OPC=nop             
  nop                                                  #  35    0x7dd73  1      OPC=nop             
  addq %r15, %r11                                      #  36    0x7dd74  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  37    0x7dd77  3      OPC=jmpq_r64        
  nop                                                  #  38    0x7dd7a  1      OPC=nop             
  nop                                                  #  39    0x7dd7b  1      OPC=nop             
  nop                                                  #  40    0x7dd7c  1      OPC=nop             
  nop                                                  #  41    0x7dd7d  1      OPC=nop             
  nop                                                  #  42    0x7dd7e  1      OPC=nop             
  nop                                                  #  43    0x7dd7f  1      OPC=nop             
  nop                                                  #  44    0x7dd80  1      OPC=nop             
  nop                                                  #  45    0x7dd81  1      OPC=nop             
  nop                                                  #  46    0x7dd82  1      OPC=nop             
  nop                                                  #  47    0x7dd83  1      OPC=nop             
  nop                                                  #  48    0x7dd84  1      OPC=nop             
  nop                                                  #  49    0x7dd85  1      OPC=nop             
  nop                                                  #  50    0x7dd86  1      OPC=nop             
  movl %ebx, %edi                                      #  51    0x7dd87  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                 #  52    0x7dd89  4      OPC=movl_m32_r32    
  nop                                                  #  53    0x7dd8d  1      OPC=nop             
  nop                                                  #  54    0x7dd8e  1      OPC=nop             
  nop                                                  #  55    0x7dd8f  1      OPC=nop             
  nop                                                  #  56    0x7dd90  1      OPC=nop             
  nop                                                  #  57    0x7dd91  1      OPC=nop             
  nop                                                  #  58    0x7dd92  1      OPC=nop             
  nop                                                  #  59    0x7dd93  1      OPC=nop             
  nop                                                  #  60    0x7dd94  1      OPC=nop             
  nop                                                  #  61    0x7dd95  1      OPC=nop             
  nop                                                  #  62    0x7dd96  1      OPC=nop             
  nop                                                  #  63    0x7dd97  1      OPC=nop             
  nop                                                  #  64    0x7dd98  1      OPC=nop             
  nop                                                  #  65    0x7dd99  1      OPC=nop             
  nop                                                  #  66    0x7dd9a  1      OPC=nop             
  nop                                                  #  67    0x7dd9b  1      OPC=nop             
  nop                                                  #  68    0x7dd9c  1      OPC=nop             
  nop                                                  #  69    0x7dd9d  1      OPC=nop             
  nop                                                  #  70    0x7dd9e  1      OPC=nop             
  nop                                                  #  71    0x7dd9f  1      OPC=nop             
  nop                                                  #  72    0x7dda0  1      OPC=nop             
  nop                                                  #  73    0x7dda1  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                        #  74    0x7dda2  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                 #  75    0x7dda7  4      OPC=movl_r32_m32    
  movl %eax, %edi                                      #  76    0x7ddab  2      OPC=movl_r32_r32    
  nop                                                  #  77    0x7ddad  1      OPC=nop             
  nop                                                  #  78    0x7ddae  1      OPC=nop             
  nop                                                  #  79    0x7ddaf  1      OPC=nop             
  nop                                                  #  80    0x7ddb0  1      OPC=nop             
  nop                                                  #  81    0x7ddb1  1      OPC=nop             
  nop                                                  #  82    0x7ddb2  1      OPC=nop             
  nop                                                  #  83    0x7ddb3  1      OPC=nop             
  nop                                                  #  84    0x7ddb4  1      OPC=nop             
  nop                                                  #  85    0x7ddb5  1      OPC=nop             
  nop                                                  #  86    0x7ddb6  1      OPC=nop             
  nop                                                  #  87    0x7ddb7  1      OPC=nop             
  nop                                                  #  88    0x7ddb8  1      OPC=nop             
  nop                                                  #  89    0x7ddb9  1      OPC=nop             
  nop                                                  #  90    0x7ddba  1      OPC=nop             
  nop                                                  #  91    0x7ddbb  1      OPC=nop             
  nop                                                  #  92    0x7ddbc  1      OPC=nop             
  nop                                                  #  93    0x7ddbd  1      OPC=nop             
  nop                                                  #  94    0x7ddbe  1      OPC=nop             
  nop                                                  #  95    0x7ddbf  1      OPC=nop             
  nop                                                  #  96    0x7ddc0  1      OPC=nop             
  nop                                                  #  97    0x7ddc1  1      OPC=nop             
  callq ._Unwind_Resume                                #  98    0x7ddc2  5      OPC=callq_label     
                                                                                                    
.size _ZNSt8numpunctIcEC1EPij, .-_ZNSt8numpunctIcEC1EPij

