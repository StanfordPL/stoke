  .text
  .globl _ZNSirsEPFRSt9basic_iosIcSt11char_traitsIcEES3_E
  .type _ZNSirsEPFRSt9basic_iosIcSt11char_traitsIcEES3_E, @function

#! file-offset 0xa7800
#! rip-offset  0x67800
#! capacity    64 bytes

# Text                                              #  Line  RIP      Bytes  Opcode              
._ZNSirsEPFRSt9basic_iosIcSt11char_traitsIcEES3_E:  #        0x67800  0      OPC=<label>         
  pushq %rbx                                        #  1     0x67800  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                   #  2     0x67801  2      OPC=movl_r32_r32    
  movl %esi, %esi                                   #  3     0x67803  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                   #  4     0x67805  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                          #  5     0x67807  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                   #  6     0x6780b  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                   #  7     0x6780e  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi                          #  8     0x67810  4      OPC=movl_r32_m32    
  addl %ebx, %edi                                   #  9     0x67814  2      OPC=addl_r32_r32    
  xchgw %ax, %ax                                    #  10    0x67816  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %esi                            #  11    0x67818  6      OPC=andl_r32_imm32  
  nop                                               #  12    0x6781e  1      OPC=nop             
  nop                                               #  13    0x6781f  1      OPC=nop             
  nop                                               #  14    0x67820  1      OPC=nop             
  addq %r15, %rsi                                   #  15    0x67821  3      OPC=addq_r64_r64    
  callq %rsi                                        #  16    0x67824  2      OPC=callq_r64       
  movl %ebx, %eax                                   #  17    0x67826  2      OPC=movl_r32_r32    
  popq %rbx                                         #  18    0x67828  1      OPC=popq_r64_1      
  popq %r11                                         #  19    0x67829  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                           #  20    0x6782b  7      OPC=andl_r32_imm32  
  nop                                               #  21    0x67832  1      OPC=nop             
  nop                                               #  22    0x67833  1      OPC=nop             
  nop                                               #  23    0x67834  1      OPC=nop             
  nop                                               #  24    0x67835  1      OPC=nop             
  addq %r15, %r11                                   #  25    0x67836  3      OPC=addq_r64_r64    
  jmpq %r11                                         #  26    0x67839  3      OPC=jmpq_r64        
  nop                                               #  27    0x6783c  1      OPC=nop             
  nop                                               #  28    0x6783d  1      OPC=nop             
  nop                                               #  29    0x6783e  1      OPC=nop             
  nop                                               #  30    0x6783f  1      OPC=nop             
  nop                                               #  31    0x67840  1      OPC=nop             
  nop                                               #  32    0x67841  1      OPC=nop             
  nop                                               #  33    0x67842  1      OPC=nop             
  nop                                               #  34    0x67843  1      OPC=nop             
  nop                                               #  35    0x67844  1      OPC=nop             
  nop                                               #  36    0x67845  1      OPC=nop             
  nop                                               #  37    0x67846  1      OPC=nop             
  nop                                               #  38    0x67847  1      OPC=nop             
  nop                                               #  39    0x67848  1      OPC=nop             
  nop                                               #  40    0x67849  1      OPC=nop             
  nop                                               #  41    0x6784a  1      OPC=nop             
  nop                                               #  42    0x6784b  1      OPC=nop             
  nop                                               #  43    0x6784c  1      OPC=nop             
                                                                                                 
.size _ZNSirsEPFRSt9basic_iosIcSt11char_traitsIcEES3_E, .-_ZNSirsEPFRSt9basic_iosIcSt11char_traitsIcEES3_E

