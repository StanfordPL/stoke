  .text
  .globl malloc_usable_size
  .type malloc_usable_size, @function

#! file-offset 0x151660
#! rip-offset  0x111660
#! capacity    96 bytes

# Text                         #  Line  RIP       Bytes  Opcode              
.malloc_usable_size:           #        0x111660  0      OPC=<label>         
  movl %edi, %edi              #  1     0x111660  2      OPC=movl_r32_r32    
  testq %rdi, %rdi             #  2     0x111662  3      OPC=testq_r64_r64   
  je .L_1116a0                 #  3     0x111665  2      OPC=je_label        
  subl $0x8, %edi              #  4     0x111667  3      OPC=subl_r32_imm8   
  movl %edi, %edi              #  5     0x11166a  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rdi,1), %eax  #  6     0x11166c  5      OPC=movl_r32_m32    
  movl %eax, %edx              #  7     0x111671  2      OPC=movl_r32_r32    
  andl $0x3, %edx              #  8     0x111673  3      OPC=andl_r32_imm8   
  cmpl $0x1, %edx              #  9     0x111676  3      OPC=cmpl_r32_imm8   
  je .L_1116a0                 #  10    0x111679  2      OPC=je_label        
  cmpl $0x1, %edx              #  11    0x11167b  3      OPC=cmpl_r32_imm8   
  sbbl %edx, %edx              #  12    0x11167e  2      OPC=sbbl_r32_r32    
  andl $0xfffffff8, %eax       #  13    0x111680  6      OPC=andl_r32_imm32  
  nop                          #  14    0x111686  1      OPC=nop             
  nop                          #  15    0x111687  1      OPC=nop             
  nop                          #  16    0x111688  1      OPC=nop             
  andl $0x4, %edx              #  17    0x111689  3      OPC=andl_r32_imm8   
  addl $0x4, %edx              #  18    0x11168c  3      OPC=addl_r32_imm8   
  subl %edx, %eax              #  19    0x11168f  2      OPC=subl_r32_r32    
  popq %r11                    #  20    0x111691  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  21    0x111693  7      OPC=andl_r32_imm32  
  nop                          #  22    0x11169a  1      OPC=nop             
  nop                          #  23    0x11169b  1      OPC=nop             
  nop                          #  24    0x11169c  1      OPC=nop             
  nop                          #  25    0x11169d  1      OPC=nop             
  addq %r15, %r11              #  26    0x11169e  3      OPC=addq_r64_r64    
  jmpq %r11                    #  27    0x1116a1  3      OPC=jmpq_r64        
  nop                          #  28    0x1116a4  1      OPC=nop             
  nop                          #  29    0x1116a5  1      OPC=nop             
  nop                          #  30    0x1116a6  1      OPC=nop             
  nop                          #  31    0x1116a7  1      OPC=nop             
  nop                          #  32    0x1116a8  1      OPC=nop             
  nop                          #  33    0x1116a9  1      OPC=nop             
  nop                          #  34    0x1116aa  1      OPC=nop             
  nop                          #  35    0x1116ab  1      OPC=nop             
  nop                          #  36    0x1116ac  1      OPC=nop             
.L_1116a0:                     #        0x1116ad  0      OPC=<label>         
  xorl %eax, %eax              #  37    0x1116ad  2      OPC=xorl_r32_r32    
  popq %r11                    #  38    0x1116af  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  39    0x1116b1  7      OPC=andl_r32_imm32  
  nop                          #  40    0x1116b8  1      OPC=nop             
  nop                          #  41    0x1116b9  1      OPC=nop             
  nop                          #  42    0x1116ba  1      OPC=nop             
  nop                          #  43    0x1116bb  1      OPC=nop             
  addq %r15, %r11              #  44    0x1116bc  3      OPC=addq_r64_r64    
  jmpq %r11                    #  45    0x1116bf  3      OPC=jmpq_r64        
  nop                          #  46    0x1116c2  1      OPC=nop             
  nop                          #  47    0x1116c3  1      OPC=nop             
  nop                          #  48    0x1116c4  1      OPC=nop             
  nop                          #  49    0x1116c5  1      OPC=nop             
  nop                          #  50    0x1116c6  1      OPC=nop             
  nop                          #  51    0x1116c7  1      OPC=nop             
  nop                          #  52    0x1116c8  1      OPC=nop             
  nop                          #  53    0x1116c9  1      OPC=nop             
  nop                          #  54    0x1116ca  1      OPC=nop             
  nop                          #  55    0x1116cb  1      OPC=nop             
  nop                          #  56    0x1116cc  1      OPC=nop             
  nop                          #  57    0x1116cd  1      OPC=nop             
  nop                          #  58    0x1116ce  1      OPC=nop             
  nop                          #  59    0x1116cf  1      OPC=nop             
  nop                          #  60    0x1116d0  1      OPC=nop             
  nop                          #  61    0x1116d1  1      OPC=nop             
  nop                          #  62    0x1116d2  1      OPC=nop             
  nop                          #  63    0x1116d3  1      OPC=nop             
                                                                             
.size malloc_usable_size, .-malloc_usable_size

