  .text
  .globl pulse
  .type pulse, @function

#! file-offset 0x6f860
#! rip-offset  0x2f860
#! capacity    96 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.pulse:                        #        0x2f860  0      OPC=<label>         
  subl $0x18, %esp             #  1     0x2f860  3      OPC=subl_r32_imm8   
  addq %r15, %rsp              #  2     0x2f863  3      OPC=addq_r64_r64    
  movl %edi, %edi              #  3     0x2f866  2      OPC=movl_r32_r32    
  movl %edi, %edi              #  4     0x2f868  2      OPC=movl_r32_r32    
  lock                         #  5     0x2f86a  1      OPC=lock            
  addl $0x1, (%r15,%rdi,1)     #  6     0x2f86b  5      OPC=addl_m32_imm8   
  nop                          #  7     0x2f870  1      OPC=nop             
  movl 0x10049956(%rip), %eax  #  8     0x2f871  6      OPC=movl_r32_m32    
  leal 0xc(%rsp), %edx         #  9     0x2f877  4      OPC=leal_r32_m16    
  nop                          #  10    0x2f87b  1      OPC=nop             
  nop                          #  11    0x2f87c  1      OPC=nop             
  nop                          #  12    0x2f87d  1      OPC=nop             
  nop                          #  13    0x2f87e  1      OPC=nop             
  nop                          #  14    0x2f87f  1      OPC=nop             
  nop                          #  15    0x2f880  1      OPC=nop             
  nop                          #  16    0x2f881  1      OPC=nop             
  nop                          #  17    0x2f882  1      OPC=nop             
  nop                          #  18    0x2f883  1      OPC=nop             
  nop                          #  19    0x2f884  1      OPC=nop             
  nop                          #  20    0x2f885  1      OPC=nop             
  nop                          #  21    0x2f886  1      OPC=nop             
  nop                          #  22    0x2f887  1      OPC=nop             
  nop                          #  23    0x2f888  1      OPC=nop             
  nop                          #  24    0x2f889  1      OPC=nop             
  nop                          #  25    0x2f88a  1      OPC=nop             
  nop                          #  26    0x2f88b  1      OPC=nop             
  nop                          #  27    0x2f88c  1      OPC=nop             
  nop                          #  28    0x2f88d  1      OPC=nop             
  nop                          #  29    0x2f88e  1      OPC=nop             
  nop                          #  30    0x2f88f  1      OPC=nop             
  nop                          #  31    0x2f890  1      OPC=nop             
  nop                          #  32    0x2f891  1      OPC=nop             
  nop                          #  33    0x2f892  1      OPC=nop             
  nop                          #  34    0x2f893  1      OPC=nop             
  nop                          #  35    0x2f894  1      OPC=nop             
  nop                          #  36    0x2f895  1      OPC=nop             
  nop                          #  37    0x2f896  1      OPC=nop             
  nop                          #  38    0x2f897  1      OPC=nop             
  nop                          #  39    0x2f898  1      OPC=nop             
  andl $0xffffffe0, %eax       #  40    0x2f899  6      OPC=andl_r32_imm32  
  nop                          #  41    0x2f89f  1      OPC=nop             
  nop                          #  42    0x2f8a0  1      OPC=nop             
  nop                          #  43    0x2f8a1  1      OPC=nop             
  addq %r15, %rax              #  44    0x2f8a2  3      OPC=addq_r64_r64    
  callq %rax                   #  45    0x2f8a5  2      OPC=callq_r64       
  addl $0x18, %esp             #  46    0x2f8a7  3      OPC=addl_r32_imm8   
  addq %r15, %rsp              #  47    0x2f8aa  3      OPC=addq_r64_r64    
  xorl %eax, %eax              #  48    0x2f8ad  2      OPC=xorl_r32_r32    
  popq %r11                    #  49    0x2f8af  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  50    0x2f8b1  7      OPC=andl_r32_imm32  
  nop                          #  51    0x2f8b8  1      OPC=nop             
  nop                          #  52    0x2f8b9  1      OPC=nop             
  nop                          #  53    0x2f8ba  1      OPC=nop             
  nop                          #  54    0x2f8bb  1      OPC=nop             
  addq %r15, %r11              #  55    0x2f8bc  3      OPC=addq_r64_r64    
  jmpq %r11                    #  56    0x2f8bf  3      OPC=jmpq_r64        
  nop                          #  57    0x2f8c2  1      OPC=nop             
  nop                          #  58    0x2f8c3  1      OPC=nop             
  nop                          #  59    0x2f8c4  1      OPC=nop             
  nop                          #  60    0x2f8c5  1      OPC=nop             
  nop                          #  61    0x2f8c6  1      OPC=nop             
  nop                          #  62    0x2f8c7  1      OPC=nop             
  nop                          #  63    0x2f8c8  1      OPC=nop             
  nop                          #  64    0x2f8c9  1      OPC=nop             
  nop                          #  65    0x2f8ca  1      OPC=nop             
  nop                          #  66    0x2f8cb  1      OPC=nop             
  nop                          #  67    0x2f8cc  1      OPC=nop             
  nop                          #  68    0x2f8cd  1      OPC=nop             
                                                                            
.size pulse, .-pulse

