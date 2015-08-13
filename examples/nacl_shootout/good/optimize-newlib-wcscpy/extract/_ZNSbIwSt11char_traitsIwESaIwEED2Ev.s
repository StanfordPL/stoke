  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEED2Ev
  .type _ZNSbIwSt11char_traitsIwESaIwEED2Ev, @function

#! file-offset 0x117ca0
#! rip-offset  0xd7ca0
#! capacity    128 bytes

# Text                                                           #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEED2Ev:                            #        0xd7ca0  0      OPC=<label>         
  movl %edi, %edi                                                #  1     0xd7ca0  2      OPC=movl_r32_r32    
  subl $0x18, %esp                                               #  2     0xd7ca2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                #  3     0xd7ca5  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                #  4     0xd7ca8  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %edi                                       #  5     0xd7caa  4      OPC=movl_r32_m32    
  subl $0xc, %edi                                                #  6     0xd7cae  3      OPC=subl_r32_imm8   
  cmpl $0x10073620, %edi                                         #  7     0xd7cb1  6      OPC=cmpl_r32_imm32  
  jne .L_d7ce0                                                   #  8     0xd7cb7  2      OPC=jne_label       
  nop                                                            #  9     0xd7cb9  1      OPC=nop             
  nop                                                            #  10    0xd7cba  1      OPC=nop             
  nop                                                            #  11    0xd7cbb  1      OPC=nop             
  nop                                                            #  12    0xd7cbc  1      OPC=nop             
  nop                                                            #  13    0xd7cbd  1      OPC=nop             
  nop                                                            #  14    0xd7cbe  1      OPC=nop             
  nop                                                            #  15    0xd7cbf  1      OPC=nop             
.L_d7cc0:                                                        #        0xd7cc0  0      OPC=<label>         
  addl $0x18, %esp                                               #  16    0xd7cc0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                #  17    0xd7cc3  3      OPC=addq_r64_r64    
  popq %r11                                                      #  18    0xd7cc6  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                        #  19    0xd7cc8  7      OPC=andl_r32_imm32  
  nop                                                            #  20    0xd7ccf  1      OPC=nop             
  nop                                                            #  21    0xd7cd0  1      OPC=nop             
  nop                                                            #  22    0xd7cd1  1      OPC=nop             
  nop                                                            #  23    0xd7cd2  1      OPC=nop             
  addq %r15, %r11                                                #  24    0xd7cd3  3      OPC=addq_r64_r64    
  jmpq %r11                                                      #  25    0xd7cd6  3      OPC=jmpq_r64        
  nop                                                            #  26    0xd7cd9  1      OPC=nop             
  nop                                                            #  27    0xd7cda  1      OPC=nop             
  nop                                                            #  28    0xd7cdb  1      OPC=nop             
  nop                                                            #  29    0xd7cdc  1      OPC=nop             
  nop                                                            #  30    0xd7cdd  1      OPC=nop             
  nop                                                            #  31    0xd7cde  1      OPC=nop             
  nop                                                            #  32    0xd7cdf  1      OPC=nop             
  nop                                                            #  33    0xd7ce0  1      OPC=nop             
  nop                                                            #  34    0xd7ce1  1      OPC=nop             
  nop                                                            #  35    0xd7ce2  1      OPC=nop             
  nop                                                            #  36    0xd7ce3  1      OPC=nop             
  nop                                                            #  37    0xd7ce4  1      OPC=nop             
  nop                                                            #  38    0xd7ce5  1      OPC=nop             
  nop                                                            #  39    0xd7ce6  1      OPC=nop             
.L_d7ce0:                                                        #        0xd7ce7  0      OPC=<label>         
  movl %edi, %edi                                                #  40    0xd7ce7  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                                    #  41    0xd7ce9  5      OPC=movl_r32_m32    
  leal -0x1(%rax), %edx                                          #  42    0xd7cee  3      OPC=leal_r32_m16    
  testl %eax, %eax                                               #  43    0xd7cf1  2      OPC=testl_r32_r32   
  movl %edi, %edi                                                #  44    0xd7cf3  2      OPC=movl_r32_r32    
  movl %edx, 0x8(%r15,%rdi,1)                                    #  45    0xd7cf5  5      OPC=movl_m32_r32    
  jg .L_d7cc0                                                    #  46    0xd7cfa  2      OPC=jg_label        
  leal 0xf(%rsp), %esi                                           #  47    0xd7cfc  4      OPC=leal_r32_m16    
  xchgw %ax, %ax                                                 #  48    0xd7d00  2      OPC=xchgw_ax_r16    
  callq ._ZNSbIwSt11char_traitsIwESaIwEE4_Rep10_M_destroyERKS1_  #  49    0xd7d02  5      OPC=callq_label     
  jmpq .L_d7cc0                                                  #  50    0xd7d07  2      OPC=jmpq_label      
  nop                                                            #  51    0xd7d09  1      OPC=nop             
  nop                                                            #  52    0xd7d0a  1      OPC=nop             
  nop                                                            #  53    0xd7d0b  1      OPC=nop             
  nop                                                            #  54    0xd7d0c  1      OPC=nop             
  nop                                                            #  55    0xd7d0d  1      OPC=nop             
  nop                                                            #  56    0xd7d0e  1      OPC=nop             
  nop                                                            #  57    0xd7d0f  1      OPC=nop             
  nop                                                            #  58    0xd7d10  1      OPC=nop             
  nop                                                            #  59    0xd7d11  1      OPC=nop             
  nop                                                            #  60    0xd7d12  1      OPC=nop             
  nop                                                            #  61    0xd7d13  1      OPC=nop             
  nop                                                            #  62    0xd7d14  1      OPC=nop             
  nop                                                            #  63    0xd7d15  1      OPC=nop             
  nop                                                            #  64    0xd7d16  1      OPC=nop             
  nop                                                            #  65    0xd7d17  1      OPC=nop             
  nop                                                            #  66    0xd7d18  1      OPC=nop             
  nop                                                            #  67    0xd7d19  1      OPC=nop             
  nop                                                            #  68    0xd7d1a  1      OPC=nop             
  nop                                                            #  69    0xd7d1b  1      OPC=nop             
  nop                                                            #  70    0xd7d1c  1      OPC=nop             
  nop                                                            #  71    0xd7d1d  1      OPC=nop             
  nop                                                            #  72    0xd7d1e  1      OPC=nop             
  nop                                                            #  73    0xd7d1f  1      OPC=nop             
  nop                                                            #  74    0xd7d20  1      OPC=nop             
  nop                                                            #  75    0xd7d21  1      OPC=nop             
  nop                                                            #  76    0xd7d22  1      OPC=nop             
  nop                                                            #  77    0xd7d23  1      OPC=nop             
  nop                                                            #  78    0xd7d24  1      OPC=nop             
  nop                                                            #  79    0xd7d25  1      OPC=nop             
  nop                                                            #  80    0xd7d26  1      OPC=nop             
                                                                                                              
.size _ZNSbIwSt11char_traitsIwESaIwEED2Ev, .-_ZNSbIwSt11char_traitsIwESaIwEED2Ev

