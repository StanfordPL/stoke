  .text
  .globl _ZNSsD2Ev
  .type _ZNSsD2Ev, @function

#! file-offset 0xec6c0
#! rip-offset  0xac6c0
#! capacity    128 bytes

# Text                                   #  Line  RIP      Bytes  Opcode              
._ZNSsD2Ev:                              #        0xac6c0  0      OPC=<label>         
  movl %edi, %edi                        #  1     0xac6c0  2      OPC=movl_r32_r32    
  subl $0x18, %esp                       #  2     0xac6c2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                        #  3     0xac6c5  3      OPC=addq_r64_r64    
  movl %edi, %edi                        #  4     0xac6c8  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %edi               #  5     0xac6ca  4      OPC=movl_r32_m32    
  subl $0xc, %edi                        #  6     0xac6ce  3      OPC=subl_r32_imm8   
  cmpl $0x10073580, %edi                 #  7     0xac6d1  6      OPC=cmpl_r32_imm32  
  jne .L_ac700                           #  8     0xac6d7  2      OPC=jne_label       
  nop                                    #  9     0xac6d9  1      OPC=nop             
  nop                                    #  10    0xac6da  1      OPC=nop             
  nop                                    #  11    0xac6db  1      OPC=nop             
  nop                                    #  12    0xac6dc  1      OPC=nop             
  nop                                    #  13    0xac6dd  1      OPC=nop             
  nop                                    #  14    0xac6de  1      OPC=nop             
  nop                                    #  15    0xac6df  1      OPC=nop             
.L_ac6e0:                                #        0xac6e0  0      OPC=<label>         
  addl $0x18, %esp                       #  16    0xac6e0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                        #  17    0xac6e3  3      OPC=addq_r64_r64    
  popq %r11                              #  18    0xac6e6  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                #  19    0xac6e8  7      OPC=andl_r32_imm32  
  nop                                    #  20    0xac6ef  1      OPC=nop             
  nop                                    #  21    0xac6f0  1      OPC=nop             
  nop                                    #  22    0xac6f1  1      OPC=nop             
  nop                                    #  23    0xac6f2  1      OPC=nop             
  addq %r15, %r11                        #  24    0xac6f3  3      OPC=addq_r64_r64    
  jmpq %r11                              #  25    0xac6f6  3      OPC=jmpq_r64        
  nop                                    #  26    0xac6f9  1      OPC=nop             
  nop                                    #  27    0xac6fa  1      OPC=nop             
  nop                                    #  28    0xac6fb  1      OPC=nop             
  nop                                    #  29    0xac6fc  1      OPC=nop             
  nop                                    #  30    0xac6fd  1      OPC=nop             
  nop                                    #  31    0xac6fe  1      OPC=nop             
  nop                                    #  32    0xac6ff  1      OPC=nop             
  nop                                    #  33    0xac700  1      OPC=nop             
  nop                                    #  34    0xac701  1      OPC=nop             
  nop                                    #  35    0xac702  1      OPC=nop             
  nop                                    #  36    0xac703  1      OPC=nop             
  nop                                    #  37    0xac704  1      OPC=nop             
  nop                                    #  38    0xac705  1      OPC=nop             
  nop                                    #  39    0xac706  1      OPC=nop             
.L_ac700:                                #        0xac707  0      OPC=<label>         
  movl %edi, %edi                        #  40    0xac707  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax            #  41    0xac709  5      OPC=movl_r32_m32    
  leal -0x1(%rax), %edx                  #  42    0xac70e  3      OPC=leal_r32_m16    
  testl %eax, %eax                       #  43    0xac711  2      OPC=testl_r32_r32   
  movl %edi, %edi                        #  44    0xac713  2      OPC=movl_r32_r32    
  movl %edx, 0x8(%r15,%rdi,1)            #  45    0xac715  5      OPC=movl_m32_r32    
  jg .L_ac6e0                            #  46    0xac71a  2      OPC=jg_label        
  leal 0xf(%rsp), %esi                   #  47    0xac71c  4      OPC=leal_r32_m16    
  xchgw %ax, %ax                         #  48    0xac720  2      OPC=xchgw_ax_r16    
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  49    0xac722  5      OPC=callq_label     
  jmpq .L_ac6e0                          #  50    0xac727  2      OPC=jmpq_label      
  nop                                    #  51    0xac729  1      OPC=nop             
  nop                                    #  52    0xac72a  1      OPC=nop             
  nop                                    #  53    0xac72b  1      OPC=nop             
  nop                                    #  54    0xac72c  1      OPC=nop             
  nop                                    #  55    0xac72d  1      OPC=nop             
  nop                                    #  56    0xac72e  1      OPC=nop             
  nop                                    #  57    0xac72f  1      OPC=nop             
  nop                                    #  58    0xac730  1      OPC=nop             
  nop                                    #  59    0xac731  1      OPC=nop             
  nop                                    #  60    0xac732  1      OPC=nop             
  nop                                    #  61    0xac733  1      OPC=nop             
  nop                                    #  62    0xac734  1      OPC=nop             
  nop                                    #  63    0xac735  1      OPC=nop             
  nop                                    #  64    0xac736  1      OPC=nop             
  nop                                    #  65    0xac737  1      OPC=nop             
  nop                                    #  66    0xac738  1      OPC=nop             
  nop                                    #  67    0xac739  1      OPC=nop             
  nop                                    #  68    0xac73a  1      OPC=nop             
  nop                                    #  69    0xac73b  1      OPC=nop             
  nop                                    #  70    0xac73c  1      OPC=nop             
  nop                                    #  71    0xac73d  1      OPC=nop             
  nop                                    #  72    0xac73e  1      OPC=nop             
  nop                                    #  73    0xac73f  1      OPC=nop             
  nop                                    #  74    0xac740  1      OPC=nop             
  nop                                    #  75    0xac741  1      OPC=nop             
  nop                                    #  76    0xac742  1      OPC=nop             
  nop                                    #  77    0xac743  1      OPC=nop             
  nop                                    #  78    0xac744  1      OPC=nop             
  nop                                    #  79    0xac745  1      OPC=nop             
  nop                                    #  80    0xac746  1      OPC=nop             
                                                                                      
.size _ZNSsD2Ev, .-_ZNSsD2Ev

