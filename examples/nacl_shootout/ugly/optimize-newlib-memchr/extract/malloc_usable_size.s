  .text
  .globl malloc_usable_size
  .type malloc_usable_size, @function

#! file-offset 0x151d80
#! rip-offset  0x111d80
#! capacity    96 bytes

# Text                         #  Line  RIP       Bytes  Opcode              
.malloc_usable_size:           #        0x111d80  0      OPC=<label>         
  movl %edi, %edi              #  1     0x111d80  2      OPC=movl_r32_r32    
  testq %rdi, %rdi             #  2     0x111d82  3      OPC=testq_r64_r64   
  je .L_111dc0                 #  3     0x111d85  2      OPC=je_label        
  subl $0x8, %edi              #  4     0x111d87  3      OPC=subl_r32_imm8   
  movl %edi, %edi              #  5     0x111d8a  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rdi,1), %eax  #  6     0x111d8c  5      OPC=movl_r32_m32    
  movl %eax, %edx              #  7     0x111d91  2      OPC=movl_r32_r32    
  andl $0x3, %edx              #  8     0x111d93  3      OPC=andl_r32_imm8   
  cmpl $0x1, %edx              #  9     0x111d96  3      OPC=cmpl_r32_imm8   
  je .L_111dc0                 #  10    0x111d99  2      OPC=je_label        
  cmpl $0x1, %edx              #  11    0x111d9b  3      OPC=cmpl_r32_imm8   
  sbbl %edx, %edx              #  12    0x111d9e  2      OPC=sbbl_r32_r32    
  andl $0xfffffff8, %eax       #  13    0x111da0  6      OPC=andl_r32_imm32  
  nop                          #  14    0x111da6  1      OPC=nop             
  nop                          #  15    0x111da7  1      OPC=nop             
  nop                          #  16    0x111da8  1      OPC=nop             
  andl $0x4, %edx              #  17    0x111da9  3      OPC=andl_r32_imm8   
  addl $0x4, %edx              #  18    0x111dac  3      OPC=addl_r32_imm8   
  subl %edx, %eax              #  19    0x111daf  2      OPC=subl_r32_r32    
  popq %r11                    #  20    0x111db1  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  21    0x111db3  7      OPC=andl_r32_imm32  
  nop                          #  22    0x111dba  1      OPC=nop             
  nop                          #  23    0x111dbb  1      OPC=nop             
  nop                          #  24    0x111dbc  1      OPC=nop             
  nop                          #  25    0x111dbd  1      OPC=nop             
  addq %r15, %r11              #  26    0x111dbe  3      OPC=addq_r64_r64    
  jmpq %r11                    #  27    0x111dc1  3      OPC=jmpq_r64        
  nop                          #  28    0x111dc4  1      OPC=nop             
  nop                          #  29    0x111dc5  1      OPC=nop             
  nop                          #  30    0x111dc6  1      OPC=nop             
  nop                          #  31    0x111dc7  1      OPC=nop             
  nop                          #  32    0x111dc8  1      OPC=nop             
  nop                          #  33    0x111dc9  1      OPC=nop             
  nop                          #  34    0x111dca  1      OPC=nop             
  nop                          #  35    0x111dcb  1      OPC=nop             
  nop                          #  36    0x111dcc  1      OPC=nop             
.L_111dc0:                     #        0x111dcd  0      OPC=<label>         
  xorl %eax, %eax              #  37    0x111dcd  2      OPC=xorl_r32_r32    
  popq %r11                    #  38    0x111dcf  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  39    0x111dd1  7      OPC=andl_r32_imm32  
  nop                          #  40    0x111dd8  1      OPC=nop             
  nop                          #  41    0x111dd9  1      OPC=nop             
  nop                          #  42    0x111dda  1      OPC=nop             
  nop                          #  43    0x111ddb  1      OPC=nop             
  addq %r15, %r11              #  44    0x111ddc  3      OPC=addq_r64_r64    
  jmpq %r11                    #  45    0x111ddf  3      OPC=jmpq_r64        
  nop                          #  46    0x111de2  1      OPC=nop             
  nop                          #  47    0x111de3  1      OPC=nop             
  nop                          #  48    0x111de4  1      OPC=nop             
  nop                          #  49    0x111de5  1      OPC=nop             
  nop                          #  50    0x111de6  1      OPC=nop             
  nop                          #  51    0x111de7  1      OPC=nop             
  nop                          #  52    0x111de8  1      OPC=nop             
  nop                          #  53    0x111de9  1      OPC=nop             
  nop                          #  54    0x111dea  1      OPC=nop             
  nop                          #  55    0x111deb  1      OPC=nop             
  nop                          #  56    0x111dec  1      OPC=nop             
  nop                          #  57    0x111ded  1      OPC=nop             
  nop                          #  58    0x111dee  1      OPC=nop             
  nop                          #  59    0x111def  1      OPC=nop             
  nop                          #  60    0x111df0  1      OPC=nop             
  nop                          #  61    0x111df1  1      OPC=nop             
  nop                          #  62    0x111df2  1      OPC=nop             
  nop                          #  63    0x111df3  1      OPC=nop             
                                                                             
.size malloc_usable_size, .-malloc_usable_size

