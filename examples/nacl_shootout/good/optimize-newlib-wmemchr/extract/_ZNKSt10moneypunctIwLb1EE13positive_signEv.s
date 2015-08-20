  .text
  .globl _ZNKSt10moneypunctIwLb1EE13positive_signEv
  .type _ZNKSt10moneypunctIwLb1EE13positive_signEv, @function

#! file-offset 0xeff60
#! rip-offset  0xaff60
#! capacity    64 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb1EE13positive_signEv:  #        0xaff60  0      OPC=<label>         
  movl %esi, %esi                             #  1     0xaff60  2      OPC=movl_r32_r32    
  pushq %rbx                                  #  2     0xaff62  1      OPC=pushq_r64_1     
  movl %edi, %ebx                             #  3     0xaff63  2      OPC=movl_r32_r32    
  movl %esi, %esi                             #  4     0xaff65  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                    #  5     0xaff67  4      OPC=movl_r32_m32    
  movl %ebx, %edi                             #  6     0xaff6b  2      OPC=movl_r32_r32    
  movl %eax, %eax                             #  7     0xaff6d  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rax,1), %eax                #  8     0xaff6f  5      OPC=movl_r32_m32    
  nop                                         #  9     0xaff74  1      OPC=nop             
  nop                                         #  10    0xaff75  1      OPC=nop             
  nop                                         #  11    0xaff76  1      OPC=nop             
  nop                                         #  12    0xaff77  1      OPC=nop             
  andl $0xffffffe0, %eax                      #  13    0xaff78  6      OPC=andl_r32_imm32  
  nop                                         #  14    0xaff7e  1      OPC=nop             
  nop                                         #  15    0xaff7f  1      OPC=nop             
  nop                                         #  16    0xaff80  1      OPC=nop             
  addq %r15, %rax                             #  17    0xaff81  3      OPC=addq_r64_r64    
  callq %rax                                  #  18    0xaff84  2      OPC=callq_r64       
  movl %ebx, %eax                             #  19    0xaff86  2      OPC=movl_r32_r32    
  popq %rbx                                   #  20    0xaff88  1      OPC=popq_r64_1      
  popq %r11                                   #  21    0xaff89  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                     #  22    0xaff8b  7      OPC=andl_r32_imm32  
  nop                                         #  23    0xaff92  1      OPC=nop             
  nop                                         #  24    0xaff93  1      OPC=nop             
  nop                                         #  25    0xaff94  1      OPC=nop             
  nop                                         #  26    0xaff95  1      OPC=nop             
  addq %r15, %r11                             #  27    0xaff96  3      OPC=addq_r64_r64    
  jmpq %r11                                   #  28    0xaff99  3      OPC=jmpq_r64        
  nop                                         #  29    0xaff9c  1      OPC=nop             
  nop                                         #  30    0xaff9d  1      OPC=nop             
  nop                                         #  31    0xaff9e  1      OPC=nop             
  nop                                         #  32    0xaff9f  1      OPC=nop             
  nop                                         #  33    0xaffa0  1      OPC=nop             
  nop                                         #  34    0xaffa1  1      OPC=nop             
  nop                                         #  35    0xaffa2  1      OPC=nop             
  nop                                         #  36    0xaffa3  1      OPC=nop             
  nop                                         #  37    0xaffa4  1      OPC=nop             
  nop                                         #  38    0xaffa5  1      OPC=nop             
  nop                                         #  39    0xaffa6  1      OPC=nop             
  nop                                         #  40    0xaffa7  1      OPC=nop             
  nop                                         #  41    0xaffa8  1      OPC=nop             
  nop                                         #  42    0xaffa9  1      OPC=nop             
  nop                                         #  43    0xaffaa  1      OPC=nop             
  nop                                         #  44    0xaffab  1      OPC=nop             
  nop                                         #  45    0xaffac  1      OPC=nop             
                                                                                           
.size _ZNKSt10moneypunctIwLb1EE13positive_signEv, .-_ZNKSt10moneypunctIwLb1EE13positive_signEv

