  .text
  .globl _ZNSt15basic_streambufIcSt11char_traitsIcEE6stosscEv
  .type _ZNSt15basic_streambufIcSt11char_traitsIcEE6stosscEv, @function

#! file-offset 0xe87c0
#! rip-offset  0xa87c0
#! capacity    96 bytes

# Text                                                  #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIcSt11char_traitsIcEE6stosscEv:  #        0xa87c0  0      OPC=<label>         
  movl %edi, %edi                                       #  1     0xa87c0  2      OPC=movl_r32_r32    
  movl %edi, %edi                                       #  2     0xa87c2  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                           #  3     0xa87c4  5      OPC=movl_r32_m32    
  movl %edi, %edi                                       #  4     0xa87c9  2      OPC=movl_r32_r32    
  cmpl %eax, 0xc(%r15,%rdi,1)                           #  5     0xa87cb  5      OPC=cmpl_m32_r32    
  jbe .L_a8800                                          #  6     0xa87d0  2      OPC=jbe_label       
  popq %r11                                             #  7     0xa87d2  2      OPC=popq_r64_1      
  addl $0x1, %eax                                       #  8     0xa87d4  3      OPC=addl_r32_imm8   
  movl %edi, %edi                                       #  9     0xa87d7  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rdi,1)                           #  10    0xa87d9  5      OPC=movl_m32_r32    
  xchgw %ax, %ax                                        #  11    0xa87de  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %r11d                               #  12    0xa87e0  7      OPC=andl_r32_imm32  
  nop                                                   #  13    0xa87e7  1      OPC=nop             
  nop                                                   #  14    0xa87e8  1      OPC=nop             
  nop                                                   #  15    0xa87e9  1      OPC=nop             
  nop                                                   #  16    0xa87ea  1      OPC=nop             
  addq %r15, %r11                                       #  17    0xa87eb  3      OPC=addq_r64_r64    
  jmpq %r11                                             #  18    0xa87ee  3      OPC=jmpq_r64        
  nop                                                   #  19    0xa87f1  1      OPC=nop             
  nop                                                   #  20    0xa87f2  1      OPC=nop             
  nop                                                   #  21    0xa87f3  1      OPC=nop             
  nop                                                   #  22    0xa87f4  1      OPC=nop             
  nop                                                   #  23    0xa87f5  1      OPC=nop             
  nop                                                   #  24    0xa87f6  1      OPC=nop             
  nop                                                   #  25    0xa87f7  1      OPC=nop             
  nop                                                   #  26    0xa87f8  1      OPC=nop             
  nop                                                   #  27    0xa87f9  1      OPC=nop             
  nop                                                   #  28    0xa87fa  1      OPC=nop             
  nop                                                   #  29    0xa87fb  1      OPC=nop             
  nop                                                   #  30    0xa87fc  1      OPC=nop             
  nop                                                   #  31    0xa87fd  1      OPC=nop             
  nop                                                   #  32    0xa87fe  1      OPC=nop             
  nop                                                   #  33    0xa87ff  1      OPC=nop             
  nop                                                   #  34    0xa8800  1      OPC=nop             
  nop                                                   #  35    0xa8801  1      OPC=nop             
  nop                                                   #  36    0xa8802  1      OPC=nop             
  nop                                                   #  37    0xa8803  1      OPC=nop             
  nop                                                   #  38    0xa8804  1      OPC=nop             
  nop                                                   #  39    0xa8805  1      OPC=nop             
  nop                                                   #  40    0xa8806  1      OPC=nop             
.L_a8800:                                               #        0xa8807  0      OPC=<label>         
  movl %edi, %edi                                       #  41    0xa8807  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                              #  42    0xa8809  4      OPC=movl_r32_m32    
  movl %eax, %eax                                       #  43    0xa880d  2      OPC=movl_r32_r32    
  movl 0x28(%r15,%rax,1), %eax                          #  44    0xa880f  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                                #  45    0xa8814  6      OPC=andl_r32_imm32  
  nop                                                   #  46    0xa881a  1      OPC=nop             
  nop                                                   #  47    0xa881b  1      OPC=nop             
  nop                                                   #  48    0xa881c  1      OPC=nop             
  addq %r15, %rax                                       #  49    0xa881d  3      OPC=addq_r64_r64    
  jmpq %rax                                             #  50    0xa8820  2      OPC=jmpq_r64        
  nop                                                   #  51    0xa8822  1      OPC=nop             
  nop                                                   #  52    0xa8823  1      OPC=nop             
  nop                                                   #  53    0xa8824  1      OPC=nop             
  nop                                                   #  54    0xa8825  1      OPC=nop             
  nop                                                   #  55    0xa8826  1      OPC=nop             
  nop                                                   #  56    0xa8827  1      OPC=nop             
  nop                                                   #  57    0xa8828  1      OPC=nop             
  nop                                                   #  58    0xa8829  1      OPC=nop             
  nop                                                   #  59    0xa882a  1      OPC=nop             
  nop                                                   #  60    0xa882b  1      OPC=nop             
  nop                                                   #  61    0xa882c  1      OPC=nop             
                                                                                                     
.size _ZNSt15basic_streambufIcSt11char_traitsIcEE6stosscEv, .-_ZNSt15basic_streambufIcSt11char_traitsIcEE6stosscEv

