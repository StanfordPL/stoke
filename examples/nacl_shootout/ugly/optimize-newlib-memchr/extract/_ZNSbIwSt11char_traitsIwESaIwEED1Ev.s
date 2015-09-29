  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEED1Ev
  .type _ZNSbIwSt11char_traitsIwESaIwEED1Ev, @function

#! file-offset 0x118640
#! rip-offset  0xd8640
#! capacity    128 bytes

# Text                                                           #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEED1Ev:                            #        0xd8640  0      OPC=<label>         
  movl %edi, %edi                                                #  1     0xd8640  2      OPC=movl_r32_r32    
  subl $0x18, %esp                                               #  2     0xd8642  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                #  3     0xd8645  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                #  4     0xd8648  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %edi                                       #  5     0xd864a  4      OPC=movl_r32_m32    
  subl $0xc, %edi                                                #  6     0xd864e  3      OPC=subl_r32_imm8   
  cmpl $0x10073620, %edi                                         #  7     0xd8651  6      OPC=cmpl_r32_imm32  
  jne .L_d8680                                                   #  8     0xd8657  2      OPC=jne_label       
  nop                                                            #  9     0xd8659  1      OPC=nop             
  nop                                                            #  10    0xd865a  1      OPC=nop             
  nop                                                            #  11    0xd865b  1      OPC=nop             
  nop                                                            #  12    0xd865c  1      OPC=nop             
  nop                                                            #  13    0xd865d  1      OPC=nop             
  nop                                                            #  14    0xd865e  1      OPC=nop             
  nop                                                            #  15    0xd865f  1      OPC=nop             
.L_d8660:                                                        #        0xd8660  0      OPC=<label>         
  addl $0x18, %esp                                               #  16    0xd8660  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                #  17    0xd8663  3      OPC=addq_r64_r64    
  popq %r11                                                      #  18    0xd8666  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                        #  19    0xd8668  7      OPC=andl_r32_imm32  
  nop                                                            #  20    0xd866f  1      OPC=nop             
  nop                                                            #  21    0xd8670  1      OPC=nop             
  nop                                                            #  22    0xd8671  1      OPC=nop             
  nop                                                            #  23    0xd8672  1      OPC=nop             
  addq %r15, %r11                                                #  24    0xd8673  3      OPC=addq_r64_r64    
  jmpq %r11                                                      #  25    0xd8676  3      OPC=jmpq_r64        
  nop                                                            #  26    0xd8679  1      OPC=nop             
  nop                                                            #  27    0xd867a  1      OPC=nop             
  nop                                                            #  28    0xd867b  1      OPC=nop             
  nop                                                            #  29    0xd867c  1      OPC=nop             
  nop                                                            #  30    0xd867d  1      OPC=nop             
  nop                                                            #  31    0xd867e  1      OPC=nop             
  nop                                                            #  32    0xd867f  1      OPC=nop             
  nop                                                            #  33    0xd8680  1      OPC=nop             
  nop                                                            #  34    0xd8681  1      OPC=nop             
  nop                                                            #  35    0xd8682  1      OPC=nop             
  nop                                                            #  36    0xd8683  1      OPC=nop             
  nop                                                            #  37    0xd8684  1      OPC=nop             
  nop                                                            #  38    0xd8685  1      OPC=nop             
  nop                                                            #  39    0xd8686  1      OPC=nop             
.L_d8680:                                                        #        0xd8687  0      OPC=<label>         
  movl %edi, %edi                                                #  40    0xd8687  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                                    #  41    0xd8689  5      OPC=movl_r32_m32    
  leal -0x1(%rax), %edx                                          #  42    0xd868e  3      OPC=leal_r32_m16    
  testl %eax, %eax                                               #  43    0xd8691  2      OPC=testl_r32_r32   
  movl %edi, %edi                                                #  44    0xd8693  2      OPC=movl_r32_r32    
  movl %edx, 0x8(%r15,%rdi,1)                                    #  45    0xd8695  5      OPC=movl_m32_r32    
  jg .L_d8660                                                    #  46    0xd869a  2      OPC=jg_label        
  leal 0xf(%rsp), %esi                                           #  47    0xd869c  4      OPC=leal_r32_m16    
  xchgw %ax, %ax                                                 #  48    0xd86a0  2      OPC=xchgw_ax_r16    
  callq ._ZNSbIwSt11char_traitsIwESaIwEE4_Rep10_M_destroyERKS1_  #  49    0xd86a2  5      OPC=callq_label     
  jmpq .L_d8660                                                  #  50    0xd86a7  2      OPC=jmpq_label      
  nop                                                            #  51    0xd86a9  1      OPC=nop             
  nop                                                            #  52    0xd86aa  1      OPC=nop             
  nop                                                            #  53    0xd86ab  1      OPC=nop             
  nop                                                            #  54    0xd86ac  1      OPC=nop             
  nop                                                            #  55    0xd86ad  1      OPC=nop             
  nop                                                            #  56    0xd86ae  1      OPC=nop             
  nop                                                            #  57    0xd86af  1      OPC=nop             
  nop                                                            #  58    0xd86b0  1      OPC=nop             
  nop                                                            #  59    0xd86b1  1      OPC=nop             
  nop                                                            #  60    0xd86b2  1      OPC=nop             
  nop                                                            #  61    0xd86b3  1      OPC=nop             
  nop                                                            #  62    0xd86b4  1      OPC=nop             
  nop                                                            #  63    0xd86b5  1      OPC=nop             
  nop                                                            #  64    0xd86b6  1      OPC=nop             
  nop                                                            #  65    0xd86b7  1      OPC=nop             
  nop                                                            #  66    0xd86b8  1      OPC=nop             
  nop                                                            #  67    0xd86b9  1      OPC=nop             
  nop                                                            #  68    0xd86ba  1      OPC=nop             
  nop                                                            #  69    0xd86bb  1      OPC=nop             
  nop                                                            #  70    0xd86bc  1      OPC=nop             
  nop                                                            #  71    0xd86bd  1      OPC=nop             
  nop                                                            #  72    0xd86be  1      OPC=nop             
  nop                                                            #  73    0xd86bf  1      OPC=nop             
  nop                                                            #  74    0xd86c0  1      OPC=nop             
  nop                                                            #  75    0xd86c1  1      OPC=nop             
  nop                                                            #  76    0xd86c2  1      OPC=nop             
  nop                                                            #  77    0xd86c3  1      OPC=nop             
  nop                                                            #  78    0xd86c4  1      OPC=nop             
  nop                                                            #  79    0xd86c5  1      OPC=nop             
  nop                                                            #  80    0xd86c6  1      OPC=nop             
                                                                                                              
.size _ZNSbIwSt11char_traitsIwESaIwEED1Ev, .-_ZNSbIwSt11char_traitsIwESaIwEED1Ev

