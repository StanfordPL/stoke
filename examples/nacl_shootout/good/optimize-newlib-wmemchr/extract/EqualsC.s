  .text
  .globl EqualsC
  .type EqualsC, @function

#! file-offset 0x68a60
#! rip-offset  0x28a60
#! capacity    160 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
.EqualsC:                        #        0x28a60  0      OPC=<label>         
  pushq %r13                     #  1     0x28a60  2      OPC=pushq_r64_1     
  pushq %r12                     #  2     0x28a62  2      OPC=pushq_r64_1     
  pushq %rbx                     #  3     0x28a64  1      OPC=pushq_r64_1     
  movl %edi, %r12d               #  4     0x28a65  3      OPC=movl_r32_r32    
  movl %esi, %ebx                #  5     0x28a68  2      OPC=movl_r32_r32    
  movl %edx, %esi                #  6     0x28a6a  2      OPC=movl_r32_r32    
  movl $0x2, %edi                #  7     0x28a6c  5      OPC=movl_r32_imm32  
  nop                            #  8     0x28a71  1      OPC=nop             
  nop                            #  9     0x28a72  1      OPC=nop             
  nop                            #  10    0x28a73  1      OPC=nop             
  nop                            #  11    0x28a74  1      OPC=nop             
  nop                            #  12    0x28a75  1      OPC=nop             
  nop                            #  13    0x28a76  1      OPC=nop             
  nop                            #  14    0x28a77  1      OPC=nop             
  nop                            #  15    0x28a78  1      OPC=nop             
  nop                            #  16    0x28a79  1      OPC=nop             
  nop                            #  17    0x28a7a  1      OPC=nop             
  callq .Constraint_Create       #  18    0x28a7b  5      OPC=callq_label     
  movl %eax, %r13d               #  19    0x28a80  3      OPC=movl_r32_r32    
  movl %r13d, %r13d              #  20    0x28a83  3      OPC=movl_r32_r32    
  movl $0x26760, (%r15,%r13,1)   #  21    0x28a86  8      OPC=movl_m32_imm32  
  movl %r13d, %r13d              #  22    0x28a8e  3      OPC=movl_r32_r32    
  movl %r12d, 0x18(%r15,%r13,1)  #  23    0x28a91  5      OPC=movl_m32_r32    
  movl %r13d, %r13d              #  24    0x28a96  3      OPC=movl_r32_r32    
  movl %ebx, 0x1c(%r15,%r13,1)   #  25    0x28a99  5      OPC=movl_m32_r32    
  xchgw %ax, %ax                 #  26    0x28a9e  2      OPC=xchgw_ax_r16    
  movl %r13d, %r13d              #  27    0x28aa0  3      OPC=movl_r32_r32    
  movb $0x2, 0xd(%r15,%r13,1)    #  28    0x28aa3  6      OPC=movb_m8_imm8    
  movl %r13d, %r13d              #  29    0x28aa9  3      OPC=movl_r32_r32    
  movb $0x0, 0xf(%r15,%r13,1)    #  30    0x28aac  6      OPC=movb_m8_imm8    
  movl %r13d, %r13d              #  31    0x28ab2  3      OPC=movl_r32_r32    
  movb $0x1, 0x10(%r15,%r13,1)   #  32    0x28ab5  6      OPC=movb_m8_imm8    
  movl %r13d, %edi               #  33    0x28abb  3      OPC=movl_r32_r32    
  xchgw %ax, %ax                 #  34    0x28abe  2      OPC=xchgw_ax_r16    
  nop                            #  35    0x28ac0  1      OPC=nop             
  nop                            #  36    0x28ac1  1      OPC=nop             
  nop                            #  37    0x28ac2  1      OPC=nop             
  nop                            #  38    0x28ac3  1      OPC=nop             
  nop                            #  39    0x28ac4  1      OPC=nop             
  nop                            #  40    0x28ac5  1      OPC=nop             
  nop                            #  41    0x28ac6  1      OPC=nop             
  nop                            #  42    0x28ac7  1      OPC=nop             
  nop                            #  43    0x28ac8  1      OPC=nop             
  nop                            #  44    0x28ac9  1      OPC=nop             
  nop                            #  45    0x28aca  1      OPC=nop             
  nop                            #  46    0x28acb  1      OPC=nop             
  nop                            #  47    0x28acc  1      OPC=nop             
  nop                            #  48    0x28acd  1      OPC=nop             
  nop                            #  49    0x28ace  1      OPC=nop             
  nop                            #  50    0x28acf  1      OPC=nop             
  nop                            #  51    0x28ad0  1      OPC=nop             
  nop                            #  52    0x28ad1  1      OPC=nop             
  nop                            #  53    0x28ad2  1      OPC=nop             
  nop                            #  54    0x28ad3  1      OPC=nop             
  nop                            #  55    0x28ad4  1      OPC=nop             
  nop                            #  56    0x28ad5  1      OPC=nop             
  nop                            #  57    0x28ad6  1      OPC=nop             
  nop                            #  58    0x28ad7  1      OPC=nop             
  nop                            #  59    0x28ad8  1      OPC=nop             
  nop                            #  60    0x28ad9  1      OPC=nop             
  nop                            #  61    0x28ada  1      OPC=nop             
  callq .AddConstraint           #  62    0x28adb  5      OPC=callq_label     
  movl %r13d, %eax               #  63    0x28ae0  3      OPC=movl_r32_r32    
  popq %rbx                      #  64    0x28ae3  1      OPC=popq_r64_1      
  popq %r12                      #  65    0x28ae4  2      OPC=popq_r64_1      
  popq %r13                      #  66    0x28ae6  2      OPC=popq_r64_1      
  popq %r11                      #  67    0x28ae8  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  68    0x28aea  7      OPC=andl_r32_imm32  
  nop                            #  69    0x28af1  1      OPC=nop             
  nop                            #  70    0x28af2  1      OPC=nop             
  nop                            #  71    0x28af3  1      OPC=nop             
  nop                            #  72    0x28af4  1      OPC=nop             
  addq %r15, %r11                #  73    0x28af5  3      OPC=addq_r64_r64    
  jmpq %r11                      #  74    0x28af8  3      OPC=jmpq_r64        
  nop                            #  75    0x28afb  1      OPC=nop             
  nop                            #  76    0x28afc  1      OPC=nop             
  nop                            #  77    0x28afd  1      OPC=nop             
  nop                            #  78    0x28afe  1      OPC=nop             
  nop                            #  79    0x28aff  1      OPC=nop             
  nop                            #  80    0x28b00  1      OPC=nop             
  nop                            #  81    0x28b01  1      OPC=nop             
  nop                            #  82    0x28b02  1      OPC=nop             
  nop                            #  83    0x28b03  1      OPC=nop             
  nop                            #  84    0x28b04  1      OPC=nop             
  nop                            #  85    0x28b05  1      OPC=nop             
  nop                            #  86    0x28b06  1      OPC=nop             
                                                                              
.size EqualsC, .-EqualsC

