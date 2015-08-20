  .text
  .globl _ZNSt15basic_streambufIcSt11char_traitsIcEE6sbumpcEv
  .type _ZNSt15basic_streambufIcSt11char_traitsIcEE6sbumpcEv, @function

#! file-offset 0xe97c0
#! rip-offset  0xa97c0
#! capacity    96 bytes

# Text                                                  #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIcSt11char_traitsIcEE6sbumpcEv:  #        0xa97c0  0      OPC=<label>         
  movl %edi, %edi                                       #  1     0xa97c0  2      OPC=movl_r32_r32    
  movl %edi, %edi                                       #  2     0xa97c2  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %edx                           #  3     0xa97c4  5      OPC=movl_r32_m32    
  movl %edi, %edi                                       #  4     0xa97c9  2      OPC=movl_r32_r32    
  cmpl %edx, 0xc(%r15,%rdi,1)                           #  5     0xa97cb  5      OPC=cmpl_m32_r32    
  jbe .L_a9800                                          #  6     0xa97d0  2      OPC=jbe_label       
  popq %r11                                             #  7     0xa97d2  2      OPC=popq_r64_1      
  movl %edx, %edx                                       #  8     0xa97d4  2      OPC=movl_r32_r32    
  movzbl (%r15,%rdx,1), %eax                            #  9     0xa97d6  5      OPC=movzbl_r32_m8   
  addl $0x1, %edx                                       #  10    0xa97db  3      OPC=addl_r32_imm8   
  xchgw %ax, %ax                                        #  11    0xa97de  2      OPC=xchgw_ax_r16    
  movl %edi, %edi                                       #  12    0xa97e0  2      OPC=movl_r32_r32    
  movl %edx, 0x8(%r15,%rdi,1)                           #  13    0xa97e2  5      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d                               #  14    0xa97e7  7      OPC=andl_r32_imm32  
  nop                                                   #  15    0xa97ee  1      OPC=nop             
  nop                                                   #  16    0xa97ef  1      OPC=nop             
  nop                                                   #  17    0xa97f0  1      OPC=nop             
  nop                                                   #  18    0xa97f1  1      OPC=nop             
  addq %r15, %r11                                       #  19    0xa97f2  3      OPC=addq_r64_r64    
  jmpq %r11                                             #  20    0xa97f5  3      OPC=jmpq_r64        
  nop                                                   #  21    0xa97f8  1      OPC=nop             
  nop                                                   #  22    0xa97f9  1      OPC=nop             
  nop                                                   #  23    0xa97fa  1      OPC=nop             
  nop                                                   #  24    0xa97fb  1      OPC=nop             
  nop                                                   #  25    0xa97fc  1      OPC=nop             
  nop                                                   #  26    0xa97fd  1      OPC=nop             
  nop                                                   #  27    0xa97fe  1      OPC=nop             
  nop                                                   #  28    0xa97ff  1      OPC=nop             
  nop                                                   #  29    0xa9800  1      OPC=nop             
  nop                                                   #  30    0xa9801  1      OPC=nop             
  nop                                                   #  31    0xa9802  1      OPC=nop             
  nop                                                   #  32    0xa9803  1      OPC=nop             
  nop                                                   #  33    0xa9804  1      OPC=nop             
  nop                                                   #  34    0xa9805  1      OPC=nop             
  nop                                                   #  35    0xa9806  1      OPC=nop             
.L_a9800:                                               #        0xa9807  0      OPC=<label>         
  movl %edi, %edi                                       #  36    0xa9807  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                              #  37    0xa9809  4      OPC=movl_r32_m32    
  movl %eax, %eax                                       #  38    0xa980d  2      OPC=movl_r32_r32    
  movl 0x28(%r15,%rax,1), %eax                          #  39    0xa980f  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                                #  40    0xa9814  6      OPC=andl_r32_imm32  
  nop                                                   #  41    0xa981a  1      OPC=nop             
  nop                                                   #  42    0xa981b  1      OPC=nop             
  nop                                                   #  43    0xa981c  1      OPC=nop             
  addq %r15, %rax                                       #  44    0xa981d  3      OPC=addq_r64_r64    
  jmpq %rax                                             #  45    0xa9820  2      OPC=jmpq_r64        
  nop                                                   #  46    0xa9822  1      OPC=nop             
  nop                                                   #  47    0xa9823  1      OPC=nop             
  nop                                                   #  48    0xa9824  1      OPC=nop             
  nop                                                   #  49    0xa9825  1      OPC=nop             
  nop                                                   #  50    0xa9826  1      OPC=nop             
  nop                                                   #  51    0xa9827  1      OPC=nop             
  nop                                                   #  52    0xa9828  1      OPC=nop             
  nop                                                   #  53    0xa9829  1      OPC=nop             
  nop                                                   #  54    0xa982a  1      OPC=nop             
  nop                                                   #  55    0xa982b  1      OPC=nop             
  nop                                                   #  56    0xa982c  1      OPC=nop             
                                                                                                     
.size _ZNSt15basic_streambufIcSt11char_traitsIcEE6sbumpcEv, .-_ZNSt15basic_streambufIcSt11char_traitsIcEE6sbumpcEv

