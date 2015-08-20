  .text
  .globl pulse
  .type pulse, @function

#! file-offset 0x6fb60
#! rip-offset  0x2fb60
#! capacity    96 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.pulse:                        #        0x2fb60  0      OPC=<label>         
  subl $0x18, %esp             #  1     0x2fb60  3      OPC=subl_r32_imm8   
  addq %r15, %rsp              #  2     0x2fb63  3      OPC=addq_r64_r64    
  movl %edi, %edi              #  3     0x2fb66  2      OPC=movl_r32_r32    
  movl %edi, %edi              #  4     0x2fb68  2      OPC=movl_r32_r32    
  lock                         #  5     0x2fb6a  1      OPC=lock            
  addl $0x1, (%r15,%rdi,1)     #  6     0x2fb6b  5      OPC=addl_m32_imm8   
  nop                          #  7     0x2fb70  1      OPC=nop             
  movl 0x10049656(%rip), %eax  #  8     0x2fb71  6      OPC=movl_r32_m32    
  leal 0xc(%rsp), %edx         #  9     0x2fb77  4      OPC=leal_r32_m16    
  nop                          #  10    0x2fb7b  1      OPC=nop             
  nop                          #  11    0x2fb7c  1      OPC=nop             
  nop                          #  12    0x2fb7d  1      OPC=nop             
  nop                          #  13    0x2fb7e  1      OPC=nop             
  nop                          #  14    0x2fb7f  1      OPC=nop             
  nop                          #  15    0x2fb80  1      OPC=nop             
  nop                          #  16    0x2fb81  1      OPC=nop             
  nop                          #  17    0x2fb82  1      OPC=nop             
  nop                          #  18    0x2fb83  1      OPC=nop             
  nop                          #  19    0x2fb84  1      OPC=nop             
  nop                          #  20    0x2fb85  1      OPC=nop             
  nop                          #  21    0x2fb86  1      OPC=nop             
  nop                          #  22    0x2fb87  1      OPC=nop             
  nop                          #  23    0x2fb88  1      OPC=nop             
  nop                          #  24    0x2fb89  1      OPC=nop             
  nop                          #  25    0x2fb8a  1      OPC=nop             
  nop                          #  26    0x2fb8b  1      OPC=nop             
  nop                          #  27    0x2fb8c  1      OPC=nop             
  nop                          #  28    0x2fb8d  1      OPC=nop             
  nop                          #  29    0x2fb8e  1      OPC=nop             
  nop                          #  30    0x2fb8f  1      OPC=nop             
  nop                          #  31    0x2fb90  1      OPC=nop             
  nop                          #  32    0x2fb91  1      OPC=nop             
  nop                          #  33    0x2fb92  1      OPC=nop             
  nop                          #  34    0x2fb93  1      OPC=nop             
  nop                          #  35    0x2fb94  1      OPC=nop             
  nop                          #  36    0x2fb95  1      OPC=nop             
  nop                          #  37    0x2fb96  1      OPC=nop             
  nop                          #  38    0x2fb97  1      OPC=nop             
  nop                          #  39    0x2fb98  1      OPC=nop             
  andl $0xffffffe0, %eax       #  40    0x2fb99  6      OPC=andl_r32_imm32  
  nop                          #  41    0x2fb9f  1      OPC=nop             
  nop                          #  42    0x2fba0  1      OPC=nop             
  nop                          #  43    0x2fba1  1      OPC=nop             
  addq %r15, %rax              #  44    0x2fba2  3      OPC=addq_r64_r64    
  callq %rax                   #  45    0x2fba5  2      OPC=callq_r64       
  addl $0x18, %esp             #  46    0x2fba7  3      OPC=addl_r32_imm8   
  addq %r15, %rsp              #  47    0x2fbaa  3      OPC=addq_r64_r64    
  xorl %eax, %eax              #  48    0x2fbad  2      OPC=xorl_r32_r32    
  popq %r11                    #  49    0x2fbaf  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  50    0x2fbb1  7      OPC=andl_r32_imm32  
  nop                          #  51    0x2fbb8  1      OPC=nop             
  nop                          #  52    0x2fbb9  1      OPC=nop             
  nop                          #  53    0x2fbba  1      OPC=nop             
  nop                          #  54    0x2fbbb  1      OPC=nop             
  addq %r15, %r11              #  55    0x2fbbc  3      OPC=addq_r64_r64    
  jmpq %r11                    #  56    0x2fbbf  3      OPC=jmpq_r64        
  nop                          #  57    0x2fbc2  1      OPC=nop             
  nop                          #  58    0x2fbc3  1      OPC=nop             
  nop                          #  59    0x2fbc4  1      OPC=nop             
  nop                          #  60    0x2fbc5  1      OPC=nop             
  nop                          #  61    0x2fbc6  1      OPC=nop             
  nop                          #  62    0x2fbc7  1      OPC=nop             
  nop                          #  63    0x2fbc8  1      OPC=nop             
  nop                          #  64    0x2fbc9  1      OPC=nop             
  nop                          #  65    0x2fbca  1      OPC=nop             
  nop                          #  66    0x2fbcb  1      OPC=nop             
  nop                          #  67    0x2fbcc  1      OPC=nop             
  nop                          #  68    0x2fbcd  1      OPC=nop             
                                                                            
.size pulse, .-pulse

