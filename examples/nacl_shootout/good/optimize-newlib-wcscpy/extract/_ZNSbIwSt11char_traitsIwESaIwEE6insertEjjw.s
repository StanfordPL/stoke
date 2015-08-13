  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE6insertEjjw
  .type _ZNSbIwSt11char_traitsIwESaIwEE6insertEjjw, @function

#! file-offset 0x119820
#! rip-offset  0xd9820
#! capacity    96 bytes

# Text                                                        #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE6insertEjjw:                  #        0xd9820  0      OPC=<label>         
  movl %edi, %edi                                             #  1     0xd9820  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                             #  2     0xd9822  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                             #  3     0xd9825  3      OPC=addq_r64_r64    
  movl %ecx, %r8d                                             #  4     0xd9828  3      OPC=movl_r32_r32    
  movl %edi, %edi                                             #  5     0xd982b  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                    #  6     0xd982d  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                             #  7     0xd9831  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                             #  8     0xd9834  2      OPC=movl_r32_r32    
  cmpl (%r15,%rax,1), %esi                                    #  9     0xd9836  4      OPC=cmpl_r32_m32    
  ja .L_d9860                                                 #  10    0xd983a  2      OPC=ja_label        
  movl %edx, %ecx                                             #  11    0xd983c  2      OPC=movl_r32_r32    
  xchgw %ax, %ax                                              #  12    0xd983e  2      OPC=xchgw_ax_r16    
  addl $0x8, %esp                                             #  13    0xd9840  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                             #  14    0xd9843  3      OPC=addq_r64_r64    
  xorl %edx, %edx                                             #  15    0xd9846  2      OPC=xorl_r32_r32    
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE14_M_replace_auxEjjjw  #  16    0xd9848  5      OPC=jmpq_label_1    
  nop                                                         #  17    0xd984d  1      OPC=nop             
  nop                                                         #  18    0xd984e  1      OPC=nop             
  nop                                                         #  19    0xd984f  1      OPC=nop             
  nop                                                         #  20    0xd9850  1      OPC=nop             
  nop                                                         #  21    0xd9851  1      OPC=nop             
  nop                                                         #  22    0xd9852  1      OPC=nop             
  nop                                                         #  23    0xd9853  1      OPC=nop             
  nop                                                         #  24    0xd9854  1      OPC=nop             
  nop                                                         #  25    0xd9855  1      OPC=nop             
  nop                                                         #  26    0xd9856  1      OPC=nop             
  nop                                                         #  27    0xd9857  1      OPC=nop             
  nop                                                         #  28    0xd9858  1      OPC=nop             
  nop                                                         #  29    0xd9859  1      OPC=nop             
  nop                                                         #  30    0xd985a  1      OPC=nop             
  nop                                                         #  31    0xd985b  1      OPC=nop             
  nop                                                         #  32    0xd985c  1      OPC=nop             
  nop                                                         #  33    0xd985d  1      OPC=nop             
  nop                                                         #  34    0xd985e  1      OPC=nop             
  nop                                                         #  35    0xd985f  1      OPC=nop             
.L_d9860:                                                     #        0xd9860  0      OPC=<label>         
  movl $0x1003bb73, %edi                                      #  36    0xd9860  5      OPC=movl_r32_imm32  
  nop                                                         #  37    0xd9865  1      OPC=nop             
  nop                                                         #  38    0xd9866  1      OPC=nop             
  nop                                                         #  39    0xd9867  1      OPC=nop             
  nop                                                         #  40    0xd9868  1      OPC=nop             
  nop                                                         #  41    0xd9869  1      OPC=nop             
  nop                                                         #  42    0xd986a  1      OPC=nop             
  nop                                                         #  43    0xd986b  1      OPC=nop             
  nop                                                         #  44    0xd986c  1      OPC=nop             
  nop                                                         #  45    0xd986d  1      OPC=nop             
  nop                                                         #  46    0xd986e  1      OPC=nop             
  nop                                                         #  47    0xd986f  1      OPC=nop             
  nop                                                         #  48    0xd9870  1      OPC=nop             
  nop                                                         #  49    0xd9871  1      OPC=nop             
  nop                                                         #  50    0xd9872  1      OPC=nop             
  nop                                                         #  51    0xd9873  1      OPC=nop             
  nop                                                         #  52    0xd9874  1      OPC=nop             
  nop                                                         #  53    0xd9875  1      OPC=nop             
  nop                                                         #  54    0xd9876  1      OPC=nop             
  nop                                                         #  55    0xd9877  1      OPC=nop             
  nop                                                         #  56    0xd9878  1      OPC=nop             
  nop                                                         #  57    0xd9879  1      OPC=nop             
  nop                                                         #  58    0xd987a  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc                        #  59    0xd987b  5      OPC=callq_label     
                                                                                                           
.size _ZNSbIwSt11char_traitsIwESaIwEE6insertEjjw, .-_ZNSbIwSt11char_traitsIwESaIwEE6insertEjjw

