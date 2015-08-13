  .text
  .globl _ZNKSt10moneypunctIwLb0EE13negative_signEv
  .type _ZNKSt10moneypunctIwLb0EE13negative_signEv, @function

#! file-offset 0xefa20
#! rip-offset  0xafa20
#! capacity    64 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb0EE13negative_signEv:  #        0xafa20  0      OPC=<label>         
  movl %esi, %esi                             #  1     0xafa20  2      OPC=movl_r32_r32    
  pushq %rbx                                  #  2     0xafa22  1      OPC=pushq_r64_1     
  movl %edi, %ebx                             #  3     0xafa23  2      OPC=movl_r32_r32    
  movl %esi, %esi                             #  4     0xafa25  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                    #  5     0xafa27  4      OPC=movl_r32_m32    
  movl %ebx, %edi                             #  6     0xafa2b  2      OPC=movl_r32_r32    
  movl %eax, %eax                             #  7     0xafa2d  2      OPC=movl_r32_r32    
  movl 0x1c(%r15,%rax,1), %eax                #  8     0xafa2f  5      OPC=movl_r32_m32    
  nop                                         #  9     0xafa34  1      OPC=nop             
  nop                                         #  10    0xafa35  1      OPC=nop             
  nop                                         #  11    0xafa36  1      OPC=nop             
  nop                                         #  12    0xafa37  1      OPC=nop             
  andl $0xffffffe0, %eax                      #  13    0xafa38  6      OPC=andl_r32_imm32  
  nop                                         #  14    0xafa3e  1      OPC=nop             
  nop                                         #  15    0xafa3f  1      OPC=nop             
  nop                                         #  16    0xafa40  1      OPC=nop             
  addq %r15, %rax                             #  17    0xafa41  3      OPC=addq_r64_r64    
  callq %rax                                  #  18    0xafa44  2      OPC=callq_r64       
  movl %ebx, %eax                             #  19    0xafa46  2      OPC=movl_r32_r32    
  popq %rbx                                   #  20    0xafa48  1      OPC=popq_r64_1      
  popq %r11                                   #  21    0xafa49  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                     #  22    0xafa4b  7      OPC=andl_r32_imm32  
  nop                                         #  23    0xafa52  1      OPC=nop             
  nop                                         #  24    0xafa53  1      OPC=nop             
  nop                                         #  25    0xafa54  1      OPC=nop             
  nop                                         #  26    0xafa55  1      OPC=nop             
  addq %r15, %r11                             #  27    0xafa56  3      OPC=addq_r64_r64    
  jmpq %r11                                   #  28    0xafa59  3      OPC=jmpq_r64        
  nop                                         #  29    0xafa5c  1      OPC=nop             
  nop                                         #  30    0xafa5d  1      OPC=nop             
  nop                                         #  31    0xafa5e  1      OPC=nop             
  nop                                         #  32    0xafa5f  1      OPC=nop             
  nop                                         #  33    0xafa60  1      OPC=nop             
  nop                                         #  34    0xafa61  1      OPC=nop             
  nop                                         #  35    0xafa62  1      OPC=nop             
  nop                                         #  36    0xafa63  1      OPC=nop             
  nop                                         #  37    0xafa64  1      OPC=nop             
  nop                                         #  38    0xafa65  1      OPC=nop             
  nop                                         #  39    0xafa66  1      OPC=nop             
  nop                                         #  40    0xafa67  1      OPC=nop             
  nop                                         #  41    0xafa68  1      OPC=nop             
  nop                                         #  42    0xafa69  1      OPC=nop             
  nop                                         #  43    0xafa6a  1      OPC=nop             
  nop                                         #  44    0xafa6b  1      OPC=nop             
  nop                                         #  45    0xafa6c  1      OPC=nop             
                                                                                           
.size _ZNKSt10moneypunctIwLb0EE13negative_signEv, .-_ZNKSt10moneypunctIwLb0EE13negative_signEv

