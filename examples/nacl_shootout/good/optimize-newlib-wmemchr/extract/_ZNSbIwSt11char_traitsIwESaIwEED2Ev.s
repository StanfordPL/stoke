  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEED2Ev
  .type _ZNSbIwSt11char_traitsIwESaIwEED2Ev, @function

#! file-offset 0x117fa0
#! rip-offset  0xd7fa0
#! capacity    128 bytes

# Text                                                           #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEED2Ev:                            #        0xd7fa0  0      OPC=<label>         
  movl %edi, %edi                                                #  1     0xd7fa0  2      OPC=movl_r32_r32    
  subl $0x18, %esp                                               #  2     0xd7fa2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                #  3     0xd7fa5  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                #  4     0xd7fa8  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %edi                                       #  5     0xd7faa  4      OPC=movl_r32_m32    
  subl $0xc, %edi                                                #  6     0xd7fae  3      OPC=subl_r32_imm8   
  cmpl $0x10073620, %edi                                         #  7     0xd7fb1  6      OPC=cmpl_r32_imm32  
  jne .L_d7fe0                                                   #  8     0xd7fb7  2      OPC=jne_label       
  nop                                                            #  9     0xd7fb9  1      OPC=nop             
  nop                                                            #  10    0xd7fba  1      OPC=nop             
  nop                                                            #  11    0xd7fbb  1      OPC=nop             
  nop                                                            #  12    0xd7fbc  1      OPC=nop             
  nop                                                            #  13    0xd7fbd  1      OPC=nop             
  nop                                                            #  14    0xd7fbe  1      OPC=nop             
  nop                                                            #  15    0xd7fbf  1      OPC=nop             
.L_d7fc0:                                                        #        0xd7fc0  0      OPC=<label>         
  addl $0x18, %esp                                               #  16    0xd7fc0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                #  17    0xd7fc3  3      OPC=addq_r64_r64    
  popq %r11                                                      #  18    0xd7fc6  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                        #  19    0xd7fc8  7      OPC=andl_r32_imm32  
  nop                                                            #  20    0xd7fcf  1      OPC=nop             
  nop                                                            #  21    0xd7fd0  1      OPC=nop             
  nop                                                            #  22    0xd7fd1  1      OPC=nop             
  nop                                                            #  23    0xd7fd2  1      OPC=nop             
  addq %r15, %r11                                                #  24    0xd7fd3  3      OPC=addq_r64_r64    
  jmpq %r11                                                      #  25    0xd7fd6  3      OPC=jmpq_r64        
  nop                                                            #  26    0xd7fd9  1      OPC=nop             
  nop                                                            #  27    0xd7fda  1      OPC=nop             
  nop                                                            #  28    0xd7fdb  1      OPC=nop             
  nop                                                            #  29    0xd7fdc  1      OPC=nop             
  nop                                                            #  30    0xd7fdd  1      OPC=nop             
  nop                                                            #  31    0xd7fde  1      OPC=nop             
  nop                                                            #  32    0xd7fdf  1      OPC=nop             
  nop                                                            #  33    0xd7fe0  1      OPC=nop             
  nop                                                            #  34    0xd7fe1  1      OPC=nop             
  nop                                                            #  35    0xd7fe2  1      OPC=nop             
  nop                                                            #  36    0xd7fe3  1      OPC=nop             
  nop                                                            #  37    0xd7fe4  1      OPC=nop             
  nop                                                            #  38    0xd7fe5  1      OPC=nop             
  nop                                                            #  39    0xd7fe6  1      OPC=nop             
.L_d7fe0:                                                        #        0xd7fe7  0      OPC=<label>         
  movl %edi, %edi                                                #  40    0xd7fe7  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                                    #  41    0xd7fe9  5      OPC=movl_r32_m32    
  leal -0x1(%rax), %edx                                          #  42    0xd7fee  3      OPC=leal_r32_m16    
  testl %eax, %eax                                               #  43    0xd7ff1  2      OPC=testl_r32_r32   
  movl %edi, %edi                                                #  44    0xd7ff3  2      OPC=movl_r32_r32    
  movl %edx, 0x8(%r15,%rdi,1)                                    #  45    0xd7ff5  5      OPC=movl_m32_r32    
  jg .L_d7fc0                                                    #  46    0xd7ffa  2      OPC=jg_label        
  leal 0xf(%rsp), %esi                                           #  47    0xd7ffc  4      OPC=leal_r32_m16    
  xchgw %ax, %ax                                                 #  48    0xd8000  2      OPC=xchgw_ax_r16    
  callq ._ZNSbIwSt11char_traitsIwESaIwEE4_Rep10_M_destroyERKS1_  #  49    0xd8002  5      OPC=callq_label     
  jmpq .L_d7fc0                                                  #  50    0xd8007  2      OPC=jmpq_label      
  nop                                                            #  51    0xd8009  1      OPC=nop             
  nop                                                            #  52    0xd800a  1      OPC=nop             
  nop                                                            #  53    0xd800b  1      OPC=nop             
  nop                                                            #  54    0xd800c  1      OPC=nop             
  nop                                                            #  55    0xd800d  1      OPC=nop             
  nop                                                            #  56    0xd800e  1      OPC=nop             
  nop                                                            #  57    0xd800f  1      OPC=nop             
  nop                                                            #  58    0xd8010  1      OPC=nop             
  nop                                                            #  59    0xd8011  1      OPC=nop             
  nop                                                            #  60    0xd8012  1      OPC=nop             
  nop                                                            #  61    0xd8013  1      OPC=nop             
  nop                                                            #  62    0xd8014  1      OPC=nop             
  nop                                                            #  63    0xd8015  1      OPC=nop             
  nop                                                            #  64    0xd8016  1      OPC=nop             
  nop                                                            #  65    0xd8017  1      OPC=nop             
  nop                                                            #  66    0xd8018  1      OPC=nop             
  nop                                                            #  67    0xd8019  1      OPC=nop             
  nop                                                            #  68    0xd801a  1      OPC=nop             
  nop                                                            #  69    0xd801b  1      OPC=nop             
  nop                                                            #  70    0xd801c  1      OPC=nop             
  nop                                                            #  71    0xd801d  1      OPC=nop             
  nop                                                            #  72    0xd801e  1      OPC=nop             
  nop                                                            #  73    0xd801f  1      OPC=nop             
  nop                                                            #  74    0xd8020  1      OPC=nop             
  nop                                                            #  75    0xd8021  1      OPC=nop             
  nop                                                            #  76    0xd8022  1      OPC=nop             
  nop                                                            #  77    0xd8023  1      OPC=nop             
  nop                                                            #  78    0xd8024  1      OPC=nop             
  nop                                                            #  79    0xd8025  1      OPC=nop             
  nop                                                            #  80    0xd8026  1      OPC=nop             
                                                                                                              
.size _ZNSbIwSt11char_traitsIwESaIwEED2Ev, .-_ZNSbIwSt11char_traitsIwESaIwEED2Ev

