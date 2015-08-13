  .text
  .globl _ZNKSt10moneypunctIcLb1EE16do_positive_signEv
  .type _ZNKSt10moneypunctIcLb1EE16do_positive_signEv, @function

#! file-offset 0xbdfe0
#! rip-offset  0x7dfe0
#! capacity    128 bytes

# Text                                           #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb1EE16do_positive_signEv:  #        0x7dfe0  0      OPC=<label>         
  pushq %rbx                                     #  1     0x7dfe0  1      OPC=pushq_r64_1     
  movl %esi, %esi                                #  2     0x7dfe1  2      OPC=movl_r32_r32    
  movl %edi, %ebx                                #  3     0x7dfe3  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                #  4     0x7dfe5  2      OPC=movl_r32_r32    
  subl $0x10, %esp                               #  5     0x7dfe7  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                #  6     0x7dfea  3      OPC=addq_r64_r64    
  movl %esi, %esi                                #  7     0x7dfed  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rsi,1), %eax                    #  8     0x7dfef  5      OPC=movl_r32_m32    
  leal 0xf(%rsp), %edx                           #  9     0x7dff4  4      OPC=leal_r32_m16    
  movl %eax, %eax                                #  10    0x7dff8  2      OPC=movl_r32_r32    
  movl 0x1c(%r15,%rax,1), %esi                   #  11    0x7dffa  5      OPC=movl_r32_m32    
  nop                                            #  12    0x7dfff  1      OPC=nop             
  nop                                            #  13    0x7e000  1      OPC=nop             
  nop                                            #  14    0x7e001  1      OPC=nop             
  nop                                            #  15    0x7e002  1      OPC=nop             
  nop                                            #  16    0x7e003  1      OPC=nop             
  nop                                            #  17    0x7e004  1      OPC=nop             
  nop                                            #  18    0x7e005  1      OPC=nop             
  nop                                            #  19    0x7e006  1      OPC=nop             
  nop                                            #  20    0x7e007  1      OPC=nop             
  nop                                            #  21    0x7e008  1      OPC=nop             
  nop                                            #  22    0x7e009  1      OPC=nop             
  nop                                            #  23    0x7e00a  1      OPC=nop             
  nop                                            #  24    0x7e00b  1      OPC=nop             
  nop                                            #  25    0x7e00c  1      OPC=nop             
  nop                                            #  26    0x7e00d  1      OPC=nop             
  nop                                            #  27    0x7e00e  1      OPC=nop             
  nop                                            #  28    0x7e00f  1      OPC=nop             
  nop                                            #  29    0x7e010  1      OPC=nop             
  nop                                            #  30    0x7e011  1      OPC=nop             
  nop                                            #  31    0x7e012  1      OPC=nop             
  nop                                            #  32    0x7e013  1      OPC=nop             
  nop                                            #  33    0x7e014  1      OPC=nop             
  nop                                            #  34    0x7e015  1      OPC=nop             
  nop                                            #  35    0x7e016  1      OPC=nop             
  nop                                            #  36    0x7e017  1      OPC=nop             
  nop                                            #  37    0x7e018  1      OPC=nop             
  nop                                            #  38    0x7e019  1      OPC=nop             
  nop                                            #  39    0x7e01a  1      OPC=nop             
  callq ._ZNSsC1EPKcRKSaIcE                      #  40    0x7e01b  5      OPC=callq_label     
  movl %ebx, %eax                                #  41    0x7e020  2      OPC=movl_r32_r32    
  addl $0x10, %esp                               #  42    0x7e022  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                #  43    0x7e025  3      OPC=addq_r64_r64    
  popq %rbx                                      #  44    0x7e028  1      OPC=popq_r64_1      
  popq %r11                                      #  45    0x7e029  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                        #  46    0x7e02b  7      OPC=andl_r32_imm32  
  nop                                            #  47    0x7e032  1      OPC=nop             
  nop                                            #  48    0x7e033  1      OPC=nop             
  nop                                            #  49    0x7e034  1      OPC=nop             
  nop                                            #  50    0x7e035  1      OPC=nop             
  addq %r15, %r11                                #  51    0x7e036  3      OPC=addq_r64_r64    
  jmpq %r11                                      #  52    0x7e039  3      OPC=jmpq_r64        
  nop                                            #  53    0x7e03c  1      OPC=nop             
  nop                                            #  54    0x7e03d  1      OPC=nop             
  nop                                            #  55    0x7e03e  1      OPC=nop             
  nop                                            #  56    0x7e03f  1      OPC=nop             
  nop                                            #  57    0x7e040  1      OPC=nop             
  nop                                            #  58    0x7e041  1      OPC=nop             
  nop                                            #  59    0x7e042  1      OPC=nop             
  nop                                            #  60    0x7e043  1      OPC=nop             
  nop                                            #  61    0x7e044  1      OPC=nop             
  nop                                            #  62    0x7e045  1      OPC=nop             
  nop                                            #  63    0x7e046  1      OPC=nop             
  movl %eax, %edi                                #  64    0x7e047  2      OPC=movl_r32_r32    
  nop                                            #  65    0x7e049  1      OPC=nop             
  nop                                            #  66    0x7e04a  1      OPC=nop             
  nop                                            #  67    0x7e04b  1      OPC=nop             
  nop                                            #  68    0x7e04c  1      OPC=nop             
  nop                                            #  69    0x7e04d  1      OPC=nop             
  nop                                            #  70    0x7e04e  1      OPC=nop             
  nop                                            #  71    0x7e04f  1      OPC=nop             
  nop                                            #  72    0x7e050  1      OPC=nop             
  nop                                            #  73    0x7e051  1      OPC=nop             
  nop                                            #  74    0x7e052  1      OPC=nop             
  nop                                            #  75    0x7e053  1      OPC=nop             
  nop                                            #  76    0x7e054  1      OPC=nop             
  nop                                            #  77    0x7e055  1      OPC=nop             
  nop                                            #  78    0x7e056  1      OPC=nop             
  nop                                            #  79    0x7e057  1      OPC=nop             
  nop                                            #  80    0x7e058  1      OPC=nop             
  nop                                            #  81    0x7e059  1      OPC=nop             
  nop                                            #  82    0x7e05a  1      OPC=nop             
  nop                                            #  83    0x7e05b  1      OPC=nop             
  nop                                            #  84    0x7e05c  1      OPC=nop             
  nop                                            #  85    0x7e05d  1      OPC=nop             
  nop                                            #  86    0x7e05e  1      OPC=nop             
  nop                                            #  87    0x7e05f  1      OPC=nop             
  nop                                            #  88    0x7e060  1      OPC=nop             
  nop                                            #  89    0x7e061  1      OPC=nop             
  callq ._Unwind_Resume                          #  90    0x7e062  5      OPC=callq_label     
                                                                                              
.size _ZNKSt10moneypunctIcLb1EE16do_positive_signEv, .-_ZNKSt10moneypunctIcLb1EE16do_positive_signEv

