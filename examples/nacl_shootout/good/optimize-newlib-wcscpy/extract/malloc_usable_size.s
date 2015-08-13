  .text
  .globl malloc_usable_size
  .type malloc_usable_size, @function

#! file-offset 0x151360
#! rip-offset  0x111360
#! capacity    96 bytes

# Text                         #  Line  RIP       Bytes  Opcode              
.malloc_usable_size:           #        0x111360  0      OPC=<label>         
  movl %edi, %edi              #  1     0x111360  2      OPC=movl_r32_r32    
  testq %rdi, %rdi             #  2     0x111362  3      OPC=testq_r64_r64   
  je .L_1113a0                 #  3     0x111365  2      OPC=je_label        
  subl $0x8, %edi              #  4     0x111367  3      OPC=subl_r32_imm8   
  movl %edi, %edi              #  5     0x11136a  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rdi,1), %eax  #  6     0x11136c  5      OPC=movl_r32_m32    
  movl %eax, %edx              #  7     0x111371  2      OPC=movl_r32_r32    
  andl $0x3, %edx              #  8     0x111373  3      OPC=andl_r32_imm8   
  cmpl $0x1, %edx              #  9     0x111376  3      OPC=cmpl_r32_imm8   
  je .L_1113a0                 #  10    0x111379  2      OPC=je_label        
  cmpl $0x1, %edx              #  11    0x11137b  3      OPC=cmpl_r32_imm8   
  sbbl %edx, %edx              #  12    0x11137e  2      OPC=sbbl_r32_r32    
  andl $0xfffffff8, %eax       #  13    0x111380  6      OPC=andl_r32_imm32  
  nop                          #  14    0x111386  1      OPC=nop             
  nop                          #  15    0x111387  1      OPC=nop             
  nop                          #  16    0x111388  1      OPC=nop             
  andl $0x4, %edx              #  17    0x111389  3      OPC=andl_r32_imm8   
  addl $0x4, %edx              #  18    0x11138c  3      OPC=addl_r32_imm8   
  subl %edx, %eax              #  19    0x11138f  2      OPC=subl_r32_r32    
  popq %r11                    #  20    0x111391  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  21    0x111393  7      OPC=andl_r32_imm32  
  nop                          #  22    0x11139a  1      OPC=nop             
  nop                          #  23    0x11139b  1      OPC=nop             
  nop                          #  24    0x11139c  1      OPC=nop             
  nop                          #  25    0x11139d  1      OPC=nop             
  addq %r15, %r11              #  26    0x11139e  3      OPC=addq_r64_r64    
  jmpq %r11                    #  27    0x1113a1  3      OPC=jmpq_r64        
  nop                          #  28    0x1113a4  1      OPC=nop             
  nop                          #  29    0x1113a5  1      OPC=nop             
  nop                          #  30    0x1113a6  1      OPC=nop             
  nop                          #  31    0x1113a7  1      OPC=nop             
  nop                          #  32    0x1113a8  1      OPC=nop             
  nop                          #  33    0x1113a9  1      OPC=nop             
  nop                          #  34    0x1113aa  1      OPC=nop             
  nop                          #  35    0x1113ab  1      OPC=nop             
  nop                          #  36    0x1113ac  1      OPC=nop             
.L_1113a0:                     #        0x1113ad  0      OPC=<label>         
  xorl %eax, %eax              #  37    0x1113ad  2      OPC=xorl_r32_r32    
  popq %r11                    #  38    0x1113af  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  39    0x1113b1  7      OPC=andl_r32_imm32  
  nop                          #  40    0x1113b8  1      OPC=nop             
  nop                          #  41    0x1113b9  1      OPC=nop             
  nop                          #  42    0x1113ba  1      OPC=nop             
  nop                          #  43    0x1113bb  1      OPC=nop             
  addq %r15, %r11              #  44    0x1113bc  3      OPC=addq_r64_r64    
  jmpq %r11                    #  45    0x1113bf  3      OPC=jmpq_r64        
  nop                          #  46    0x1113c2  1      OPC=nop             
  nop                          #  47    0x1113c3  1      OPC=nop             
  nop                          #  48    0x1113c4  1      OPC=nop             
  nop                          #  49    0x1113c5  1      OPC=nop             
  nop                          #  50    0x1113c6  1      OPC=nop             
  nop                          #  51    0x1113c7  1      OPC=nop             
  nop                          #  52    0x1113c8  1      OPC=nop             
  nop                          #  53    0x1113c9  1      OPC=nop             
  nop                          #  54    0x1113ca  1      OPC=nop             
  nop                          #  55    0x1113cb  1      OPC=nop             
  nop                          #  56    0x1113cc  1      OPC=nop             
  nop                          #  57    0x1113cd  1      OPC=nop             
  nop                          #  58    0x1113ce  1      OPC=nop             
  nop                          #  59    0x1113cf  1      OPC=nop             
  nop                          #  60    0x1113d0  1      OPC=nop             
  nop                          #  61    0x1113d1  1      OPC=nop             
  nop                          #  62    0x1113d2  1      OPC=nop             
  nop                          #  63    0x1113d3  1      OPC=nop             
                                                                             
.size malloc_usable_size, .-malloc_usable_size

