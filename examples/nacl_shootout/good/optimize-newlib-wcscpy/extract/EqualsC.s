  .text
  .globl EqualsC
  .type EqualsC, @function

#! file-offset 0x68a40
#! rip-offset  0x28a40
#! capacity    160 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
.EqualsC:                        #        0x28a40  0      OPC=<label>         
  pushq %r13                     #  1     0x28a40  2      OPC=pushq_r64_1     
  pushq %r12                     #  2     0x28a42  2      OPC=pushq_r64_1     
  pushq %rbx                     #  3     0x28a44  1      OPC=pushq_r64_1     
  movl %edi, %r12d               #  4     0x28a45  3      OPC=movl_r32_r32    
  movl %esi, %ebx                #  5     0x28a48  2      OPC=movl_r32_r32    
  movl %edx, %esi                #  6     0x28a4a  2      OPC=movl_r32_r32    
  movl $0x2, %edi                #  7     0x28a4c  5      OPC=movl_r32_imm32  
  nop                            #  8     0x28a51  1      OPC=nop             
  nop                            #  9     0x28a52  1      OPC=nop             
  nop                            #  10    0x28a53  1      OPC=nop             
  nop                            #  11    0x28a54  1      OPC=nop             
  nop                            #  12    0x28a55  1      OPC=nop             
  nop                            #  13    0x28a56  1      OPC=nop             
  nop                            #  14    0x28a57  1      OPC=nop             
  nop                            #  15    0x28a58  1      OPC=nop             
  nop                            #  16    0x28a59  1      OPC=nop             
  nop                            #  17    0x28a5a  1      OPC=nop             
  callq .Constraint_Create       #  18    0x28a5b  5      OPC=callq_label     
  movl %eax, %r13d               #  19    0x28a60  3      OPC=movl_r32_r32    
  movl %r13d, %r13d              #  20    0x28a63  3      OPC=movl_r32_r32    
  movl $0x26740, (%r15,%r13,1)   #  21    0x28a66  8      OPC=movl_m32_imm32  
  movl %r13d, %r13d              #  22    0x28a6e  3      OPC=movl_r32_r32    
  movl %r12d, 0x18(%r15,%r13,1)  #  23    0x28a71  5      OPC=movl_m32_r32    
  movl %r13d, %r13d              #  24    0x28a76  3      OPC=movl_r32_r32    
  movl %ebx, 0x1c(%r15,%r13,1)   #  25    0x28a79  5      OPC=movl_m32_r32    
  xchgw %ax, %ax                 #  26    0x28a7e  2      OPC=xchgw_ax_r16    
  movl %r13d, %r13d              #  27    0x28a80  3      OPC=movl_r32_r32    
  movb $0x2, 0xd(%r15,%r13,1)    #  28    0x28a83  6      OPC=movb_m8_imm8    
  movl %r13d, %r13d              #  29    0x28a89  3      OPC=movl_r32_r32    
  movb $0x0, 0xf(%r15,%r13,1)    #  30    0x28a8c  6      OPC=movb_m8_imm8    
  movl %r13d, %r13d              #  31    0x28a92  3      OPC=movl_r32_r32    
  movb $0x1, 0x10(%r15,%r13,1)   #  32    0x28a95  6      OPC=movb_m8_imm8    
  movl %r13d, %edi               #  33    0x28a9b  3      OPC=movl_r32_r32    
  xchgw %ax, %ax                 #  34    0x28a9e  2      OPC=xchgw_ax_r16    
  nop                            #  35    0x28aa0  1      OPC=nop             
  nop                            #  36    0x28aa1  1      OPC=nop             
  nop                            #  37    0x28aa2  1      OPC=nop             
  nop                            #  38    0x28aa3  1      OPC=nop             
  nop                            #  39    0x28aa4  1      OPC=nop             
  nop                            #  40    0x28aa5  1      OPC=nop             
  nop                            #  41    0x28aa6  1      OPC=nop             
  nop                            #  42    0x28aa7  1      OPC=nop             
  nop                            #  43    0x28aa8  1      OPC=nop             
  nop                            #  44    0x28aa9  1      OPC=nop             
  nop                            #  45    0x28aaa  1      OPC=nop             
  nop                            #  46    0x28aab  1      OPC=nop             
  nop                            #  47    0x28aac  1      OPC=nop             
  nop                            #  48    0x28aad  1      OPC=nop             
  nop                            #  49    0x28aae  1      OPC=nop             
  nop                            #  50    0x28aaf  1      OPC=nop             
  nop                            #  51    0x28ab0  1      OPC=nop             
  nop                            #  52    0x28ab1  1      OPC=nop             
  nop                            #  53    0x28ab2  1      OPC=nop             
  nop                            #  54    0x28ab3  1      OPC=nop             
  nop                            #  55    0x28ab4  1      OPC=nop             
  nop                            #  56    0x28ab5  1      OPC=nop             
  nop                            #  57    0x28ab6  1      OPC=nop             
  nop                            #  58    0x28ab7  1      OPC=nop             
  nop                            #  59    0x28ab8  1      OPC=nop             
  nop                            #  60    0x28ab9  1      OPC=nop             
  nop                            #  61    0x28aba  1      OPC=nop             
  callq .AddConstraint           #  62    0x28abb  5      OPC=callq_label     
  movl %r13d, %eax               #  63    0x28ac0  3      OPC=movl_r32_r32    
  popq %rbx                      #  64    0x28ac3  1      OPC=popq_r64_1      
  popq %r12                      #  65    0x28ac4  2      OPC=popq_r64_1      
  popq %r13                      #  66    0x28ac6  2      OPC=popq_r64_1      
  popq %r11                      #  67    0x28ac8  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  68    0x28aca  7      OPC=andl_r32_imm32  
  nop                            #  69    0x28ad1  1      OPC=nop             
  nop                            #  70    0x28ad2  1      OPC=nop             
  nop                            #  71    0x28ad3  1      OPC=nop             
  nop                            #  72    0x28ad4  1      OPC=nop             
  addq %r15, %r11                #  73    0x28ad5  3      OPC=addq_r64_r64    
  jmpq %r11                      #  74    0x28ad8  3      OPC=jmpq_r64        
  nop                            #  75    0x28adb  1      OPC=nop             
  nop                            #  76    0x28adc  1      OPC=nop             
  nop                            #  77    0x28add  1      OPC=nop             
  nop                            #  78    0x28ade  1      OPC=nop             
  nop                            #  79    0x28adf  1      OPC=nop             
  nop                            #  80    0x28ae0  1      OPC=nop             
  nop                            #  81    0x28ae1  1      OPC=nop             
  nop                            #  82    0x28ae2  1      OPC=nop             
  nop                            #  83    0x28ae3  1      OPC=nop             
  nop                            #  84    0x28ae4  1      OPC=nop             
  nop                            #  85    0x28ae5  1      OPC=nop             
  nop                            #  86    0x28ae6  1      OPC=nop             
                                                                              
.size EqualsC, .-EqualsC

